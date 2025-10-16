require "swagger_helper"

RSpec.describe "Posts API", type: :request do

  path("/api/v1/posts") do

    get("list posts") do
      tags("Posts")
      produces("application/json")

      response(200, "successful") do
        schema(
          type: :array,
          items: {
            type: :object,
            properties: {
              id: {type: :integer},
              title: {type: :string},
              body: {type: :string}
            },
            required: ["id", "title", "body"]
          }
        )

        after do |example|
          example.metadata[:response][:content] = {
            "application/json" => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end

        run_test!
      end
    end

    post("create post") do
      tags("Posts")
      consumes("application/json")
      produces("application/json")

      parameter(
        name: :post,
        in: :body,
        schema: {
          type: :object,
          properties: {
            post: {
              type: :object,
              properties: {
                title: {type: :string, example: "My Awesome Post"},
                body: {type: :string, example: "The content of my post."}
              }
            }
          },
          required: ["post"]
        }
      )

      response(201, "created") do
        let(:post) { {post: {title: "New Post", body: "Post Body"}} }
        run_test!
      end

      response(422, "unprocessable entity") do
        # Example of invalid data
        let(:post) { {post: {title: "a"}} }
        run_test!
      end
    end
  end
end
