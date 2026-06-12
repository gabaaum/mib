.PHONY: dev build test lint migrate db-studio db-generate type-check setup docker-up docker-down docker-build clean

# ─── Development ───────────────────────────────────────────────

dev:
	pnpm dev

build:
	pnpm build

test:
	pnpm test

lint:
	pnpm lint

type-check:
	pnpm type-check

# ─── Database ──────────────────────────────────────────────────

db-generate:
	pnpm db:generate

db-migrate:
	pnpm db:migrate

db-studio:
	pnpm db:studio

# ─── Docker ────────────────────────────────────────────────────

docker-up:
	docker compose up -d

docker-down:
	docker compose down

docker-build:
	docker compose build

# ─── Setup ─────────────────────────────────────────────────────

setup: docker-up
	cp -n .env.example .env || true
	pnpm install
	pnpm db:generate
	pnpm db:migrate

# ─── Cleanup ───────────────────────────────────────────────────

clean:
	rm -rf node_modules
	rm -rf apps/*/node_modules
	rm -rf packages/*/node_modules
	rm -rf apps/*/.next
	rm -rf .turbo
