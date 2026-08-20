# Nexus — Checklist de publicação

## Antes de publicar
- [ ] Definir domínio.
- [ ] Usar HTTPS.
- [ ] Configurar banco/volume persistente para o SQLite ou migrar para banco gerenciado.
- [ ] Persistir a pasta `uploads/`.
- [ ] Configurar TURN (`NEXUS_TURN_URL`, usuário e credencial).
- [ ] Definir `NODE_ENV=production`.
- [ ] Criar backup do banco.
- [ ] Testar cadastro/login em janela anônima.
- [ ] Testar convite em outra conta.
- [ ] Testar chat, DM, anexos, perfis e moderação.
- [ ] Testar call em duas redes diferentes.

## Primeiro teste com amigos
1. Criar 2–4 contas reais de teste.
2. Testar mensagens simultâneas.
3. Testar reconexão desligando a internet por alguns segundos.
4. Testar upload de imagem/arquivo.
5. Testar voz/câmera/tela em Wi‑Fi e 4G/5G.
6. Anotar apenas bugs reproduzíveis para a v13.0.1.
