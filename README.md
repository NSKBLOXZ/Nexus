# Nexus v13.1 — Render Deploy Ready

Base: Nexus v13.0 Pre-Publish Mega.
Call v12.0.2 continua congelada.

Mudanças desta versão:
- `render.yaml` pronto para Blueprint.
- SQLite movido para caminho configurável via `DATABASE_URL`.
- uploads configuráveis via `NEXUS_UPLOAD_DIR`.
- SQLite + uploads usam o mesmo Persistent Disk no Render.
- health check `/api/health`.
- scripts `render:build` e `render:start`.
- Dockerfile ajustado para storage persistente.
- guia `PUBLICAR-RENDER.md`.

Local:
http://localhost:5231

Deploy recomendado inicial:
Render Web Service Starter + Persistent Disk de 1 GB.
