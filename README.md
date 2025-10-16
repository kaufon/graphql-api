# GraphQL Blog

## Requisitos para rodar o projeto

Antes de iniciar o projeto, certifique-se de que sua máquina atende aos seguintes requisitos:

1. **Ruby**:
   - Versão: `>= 3.1`
   - Recomenda-se usar um gerenciador de versões como `rvm` ou `rbenv` para configurar a versão correta do Ruby.

2. **Gerenciador de Pacotes Bundler**:
   - Verifique se o Bundler está instalado: `gem install bundler`.

3. **PostgreSQL**:
   - Certifique-se de que o PostgreSQL está instalado e configurado corretamente.
   - Configure as credenciais e permissões de usuário para os bancos de dados necessários (`development`, `test` e `production`).


## Passo-a-passo para rodar o projeto

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/kaufon/graphql-api
   cd graphql-api
   ```

2. **Instale as dependências do projeto**:
   ```bash
   bundle install
   ```

3. **Configure o Banco de Dados**:
   - Edite o arquivo `config/database.yml` para garantir que as configurações de usuário e senha estão corretas para o ambiente local.
   - Crie e prepare o banco de dados:
     ```bash
     rails db:setup
     ```

4. **Rodar o servidor de desenvolvimento**:
   - Inicie o servidor localmente com o comando:
     ```bash
     rails server
     ```
   - O servidor estará disponível no endereço: `http://localhost:3000`.

---

