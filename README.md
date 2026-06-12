# MIB — Projeto MIB

![CI](https://github.com/gabaaum/mib/actions/workflows/ci.yml/badge.svg)
![Deploy](https://github.com/gabaaum/mib/actions/workflows/deploy.yml/badge.svg)
[![Vercel](https://img.shields.io/badge/deployed%20on-Vercel-000?logo=vercel)](https://mib.vercel.app)

Monorepo com Next.js + Turborepo + Prisma + PostgreSQL.

## Stack

| Layer          | Tech                            |
| -------------- | ------------------------------- |
| Frontend       | Next.js 14 (App Router)         |
| Database       | PostgreSQL + Prisma ORM         |
| Monorepo       | Turborepo + pnpm                |
| Language       | TypeScript                      |
| Linting        | ESLint + Prettier               |

## Estrutura

```
apps/
  web/          Next.js app
packages/
  db/           Prisma schema + client
  eslint-config Compartilhado ESLint config
  shared/       Shared utilities/types
  tsconfig/     Shared TypeScript configs
```

## Pré-requisitos

- Node.js >= 18
- pnpm >= 9.0.0 (`npm i -g pnpm`)
- Docker Compose (para PostgreSQL)

## Setup rápido

```bash
# 1. Clone o repositório
git clone https://github.com/gabaaum/mib.git
cd mib

# 2. Copie as variáveis de ambiente
cp .env.example .env

# 3. Inicie o banco de dados
docker compose up -d

# 4. Instale as dependências
pnpm install

# 5. Gere o Prisma Client
pnpm db:generate

# 6. Execute as migrations
pnpm db:migrate

# 7. Inicie o servidor de desenvolvimento
pnpm dev
```

Acesse [http://localhost:3000](http://localhost:3000).

## Comandos úteis

```bash
make dev           # Iniciar dev server
make build         # Build de produção
make test          # Rodar testes
make lint          # Verificar lint
make type-check    # Verificar tipos
make migrate       # Rodar migrations
make db-studio     # Abrir Prisma Studio
make docker-up     # Iniciar containers
make docker-down   # Parar containers
make setup         # Setup completo
```

## Variáveis de ambiente

Edite o arquivo `.env` (copiado de `.env.example`):

| Variável          | Descrição                  | Padrão                        |
| ----------------- | -------------------------- | ----------------------------- |
| `DATABASE_URL`    | URL de conexão PostgreSQL   | `postgresql://mib:mib_dev@localhost:5432/mib` |
| `POSTGRES_USER`   | Usuário do banco           | `mib`                         |
| `POSTGRES_PASSWORD` | Senha do banco           | `mib_dev`                     |
| `POSTGRES_DB`     | Nome do banco              | `mib`                         |
| `NODE_ENV`        | Ambiente                   | `development`                 |
