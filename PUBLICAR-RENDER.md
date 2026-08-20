# Publicar o Nexus no Render

Arquitetura inicial: 1 Web Service Node + 1 Persistent Disk.

O disco fica em `/opt/render/project/src/storage` e guarda:
- `nexus.db`
- `uploads/`

## Passos
1. Crie um repositório privado no GitHub e envie esta pasta para a raiz.
2. No Render, escolha **New > Blueprint** e conecte o repositório.
3. O Render detectará `render.yaml`.
4. Confirme o plano Starter e o disco de 1 GB.
5. Preencha as variáveis TURN quando for testar a call entre redes diferentes.
6. Depois do deploy, abra a URL `https://...onrender.com`.

## Teste inicial
- cadastro/login
- servidor e convite
- chat e DM
- upload de imagem
- reinicie/redeploy e confirme que contas/mensagens/uploads continuam
- depois teste call em duas redes diferentes

Observação: SQLite + Persistent Disk deve permanecer com uma única instância.
