# Deploy SSH Key Setup

Der SSH-Key für das Kamal-Deployment muss **ohne Passphrase** generiert werden.

## Neuen Key generieren (lokal ausführen)

```bash
ssh-keygen -t ed25519 -C "github-actions-deploy" -f ~/.ssh/garage_hofwil_deploy_key
# Bei "Enter passphrase" einfach ENTER drücken (keine Passphrase!)
```

## Public Key auf den Server kopieren

```bash
# TBD: Server-IP / Host eintragen
ssh-copy-id -i ~/.ssh/garage_hofwil_deploy_key.pub ubuntu@TBD_SERVER_IP
```

Oder manuell den Inhalt von `~/.ssh/garage_hofwil_deploy_key.pub` in
`~/.ssh/authorized_keys` auf dem Server einfügen.

## Private Key als GitHub Secret hinterlegen

1. `cat ~/.ssh/garage_hofwil_deploy_key` → kompletten Inhalt kopieren
   (inkl. `-----BEGIN...` und `-----END...`)
2. GitHub Repo → Settings → Secrets and variables → Actions
3. Secret `DEPLOY_SSH_KEY` aktualisieren oder neu anlegen
4. Inhalt einfügen → Save

## Benötigte GitHub Secrets (Übersicht)

| Secret | Zweck |
|---|---|
| `DEPLOY_SSH_KEY` | SSH Private Key für den Server-Zugriff |
| `KAMAL_REGISTRY_PASSWORD` | GitHub Container Registry Token (ghcr.io) |
| `RAILS_MASTER_KEY` | Inhalt von `config/master.key` |
| `POSTGRES_PASSWORD` | Passwort der Production-Datenbank |
| `POSTGRES_PASSWORD_STAGING` | Passwort der Staging-Datenbank |
