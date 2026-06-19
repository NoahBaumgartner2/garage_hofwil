# Git Workflow

## Branch-Struktur

- `workingbranch` – aktiver Entwicklungs-Branch (hier wird gearbeitet)
- `staging` – Staging-Branch (löst automatisches Staging-Deploy aus)
- `main` – Production-Branch (löst automatisches Production-Deploy aus)

## Workflow

1. Auf `workingbranch` entwickeln und committen
2. PR erstellen: `workingbranch` → `staging`
3. Nach Merge: Staging-Deploy läuft automatisch (`TBD_STAGING_DOMAIN`)
4. Staging testen
5. PR erstellen: `staging` → `main`
6. Nach Merge: Production-Deploy läuft automatisch (`TBD_DOMAIN`)

## Hinweise

- Nie direkt auf `main` oder `staging` pushen
- Das Deploy läuft über GitHub Actions (`.github/workflows/deploy.yml`) mit Kamal
- Nach einem Production-Deploy `staging` und `workingbranch` selbst aktuell halten
  (z.B. per Merge von `main`)
