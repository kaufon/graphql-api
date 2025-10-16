Falta fazer os slides e caso # Documentação dos Endpoints

Este documento detalha os endpoints disponíveis no projeto, incluindo os métodos suportados, parâmetros e exemplos de resposta.

## 1. `GET /api/v1/posts`

**Descrição**: Retorna uma lista de posts existentes.

**Método**: `GET`

**Parâmetros**: Nenhum.

**Exemplo de Resposta**:
```json
[
  {
    "id": 1,
    "title": "Primeiro Post",
    "body": "Este é o conteúdo do primeiro post."
  },
  {
    "id": 2,
    "title": "Segundo Post",
    "body": "Este é o conteúdo do segundo post."
  }
]
```

---

## 2. `POST /api/v1/posts`

**Descrição**: Cria um novo post.

**Método**: `POST`

**Parâmetros**:
- **title** (string, obrigatório): O título do post.
- **content** (string, obrigatório): O conteúdo do post.

**Exemplo de Requisição**:
```json
{
  "post": {
    "title": "My second meow",
    "body": "meow meow"
  }
}
```

**Exemplo de Resposta**:
```json
{
  "id": 3,
  "title": "Novo Post",
  "content": "Este é o conteúdo do novo post."
}
```

---

## 3. `POST /graphql`

**Descrição**: Permite executar consultas GraphQL no servidor.

**Método**: `POST`

**Parâmetros**:
- **query** (string, obrigatório): A query GraphQL a ser executada.

**Exemplo de Requisição**:
```json
{
  "query": "query { allPosts { id title body } }"
}
```

**Exemplo de Resposta**:
```json
{
  "query": "mutation CreatePost($title: String!, $body: String!) { createPost(input: {title: $title, body: $body}) { post { id title } errors } }",
  "variables": {
    "body": "meow",
    "title": "My first meow"
  }
}
```

