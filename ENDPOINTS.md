# Documentação dos Endpoints

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
    "content": "Este é o conteúdo do primeiro post."
  },
  {
    "id": 2,
    "title": "Segundo Post",
    "content": "Este é o conteúdo do segundo post."
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
  "title": "Novo Post",
  "content": "Este é o conteúdo do novo post."
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
  "query": "{ posts { id title content } }"
}
```

**Exemplo de Resposta**:
```json
{
  "data": {
    "posts": [
      {
        "id": 1,
        "title": "Primeiro Post",
        "content": "Este é o conteúdo do primeiro post."
      },
      {
        "id": 2,
        "title": "Segundo Post",
        "content": "Este é o conteúdo do segundo post."
      }
    ]
  }
}
```

---

## 4. `GET /up`

**Descrição**: Verifica o estado de saúde da aplicação.

**Método**: `GET`

**Parâmetros**: Nenhum.

**Exemplo de Resposta**:
- **Em caso de sucesso**:
```json
{
  "status": "ok"
}
```
- **Em caso de erro**:
```json
{
  "status": "error"
}
```

