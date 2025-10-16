# spec/swagger_helper.rb
require 'rails_helper'

RSpec.configure do |config|
  config.openapi_root = Rails.root.join('swagger').to_s

  # Define one or more OpenAPI documents.
  # NOTE: The setting is now 'openapi_specs' and it's a hash!
  config.openapi_specs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      paths: {},
      servers: [
        {
          url: 'http://localhost:3000',
          description: 'Local development server'
        }
      ]
    }
  }

  config.openapi_format = :yaml
end
