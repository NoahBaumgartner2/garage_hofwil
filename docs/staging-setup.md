# Staging-Umgebung Setup

Die Staging-Umgebung läuft unter `TBD_STAGING_DOMAIN` — gleicher Code wie
Production, aber eigene Datenbank und eigene Docker-Container.

## GitHub Secrets die gesetzt werden müssen

- `POSTGRES_PASSWORD_STAGING` — ein sicheres Passwort für die Staging-Datenbank
  (kann anders sein als Production)

(Die übrigen Secrets siehe `docs/deploy-ssh-key-setup.md`.)

## Erstes Deployment (manuell)

Beim allerersten Mal muss das Accessory (Datenbank) initialisiert werden:

```bash
# Staging-Datenbank starten
bundle exec kamal accessory boot db -c config/deploy.staging.yml

# App deployen
bundle exec kamal deploy -c config/deploy.staging.yml

# Datenbank migrieren
bundle exec kamal app exec --interactive --reuse 'bin/rails db:migrate' -c config/deploy.staging.yml

# Optional: Seed-Daten laden
bundle exec kamal app exec --interactive --reuse 'bin/rails db:seed' -c config/deploy.staging.yml
```

## Laufendes Deployment

Ab dann deployed der CI automatisch bei jedem Push auf `staging`.

## Unterschiede zur Production

| | Production | Staging |
|---|---|---|
| Domain | TBD_DOMAIN | TBD_STAGING_DOMAIN |
| Service | garage_hofwil | garage_hofwil_staging |
| DB Name | garage_hofwil_production | garage_hofwil_staging |
| DB Port (intern) | 5432 | 5433 |
| Branch | main | staging |
