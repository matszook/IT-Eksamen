# Prosjektplan

## Prosjektnavn

Automatisert brukeradministrasjon i Active Directory

---

## Problemstilling

Hvordan kan administrasjon av brukerkontoer i Active Directory automatiseres for å redusere tidsbruk, forbedre sikkerhet og redusere risikoen for menneskelige feil?

---

## Bakgrunn

Ved skolestart må nye elever få brukerkontoer og riktige tilganger. Når elever slutter må kontoene deaktiveres eller slettes. Dette gjøres ofte manuelt og kan være tidkrevende.

Målet med prosjektet er å utvikle en løsning som automatiserer disse oppgavene ved hjelp av PowerShell og Active Directory.

---

## Mål

### Hovedmål

Utvikle et system som kan automatisere livssyklusen til brukerkontoer i Active Directory.

### Delmål

- Installere og konfigurere Windows Server.
- Installere Active Directory Domain Services.
- Opprette et testdomene.
- Lage organisasjonsenheter (OU-er).
- Opprette testbrukere.
- Utvikle PowerShell-skript for brukeradministrasjon.
- Dokumentere løsningen.
- Demonstrere løsningen gjennom testing.

---

## Teknologier

### Drift

- Proxmox
- Windows Server 2025
- Active Directory
- DNS

### Utvikling

- PowerShell
- CSV-filer
- GitHub

### Dokumentasjon

- Markdown
- GitHub

---

## Planlagt Active Directory-struktur

eksamen.local

- Elever
- TidligereElever
- Lærere
- IT

---

## Funksjoner

### Opprette brukere

Systemet skal:

- Lese brukerinformasjon fra CSV-fil.
- Opprette brukerkontoer automatisk.
- Opprette brukernavn.
- Plassere brukere i riktig OU.

### Deaktivere brukere

Systemet skal:

- Finne brukere fra CSV-fil.
- Deaktivere kontoene.
- Loggføre handlingen.

### Flytte brukere

Systemet skal:

- Flytte deaktiverte brukere til OU-en TidligereElever.

### Slette brukere

Systemet skal:

- Slette brukere som ikke lenger skal eksistere.

### Logging

Systemet skal:

- Opprette loggfiler.
- Registrere dato, tidspunkt og handling.

---

## Testing

### Test 1

Opprette flere brukere fra CSV-fil.

Forventet resultat:
Brukerne opprettes korrekt i Active Directory.

### Test 2

Deaktivere flere brukere.

Forventet resultat:
Brukerne blir deaktivert.

### Test 3

Flytte brukere til TidligereElever.

Forventet resultat:
Brukerne flyttes til riktig OU.

### Test 4

Slette brukere.

Forventet resultat:
Brukerne fjernes fra Active Directory.

---

## Kompetansemål

Prosjektet demonstrerer kompetanse innen:

- Drift av servere.
- Brukeradministrasjon.
- Active Directory.
- Automatisering.
- Feilsøking.
- Dokumentasjon.
- Sikkerhet.
- Versjonskontroll med GitHub.

---

## Fremdriftsplan

### Fredag 6. juni

- Opprette VM i Proxmox.
- Konfigurere VM.

### Søndag 8. juni

- Lage dokumentasjon.
- Planlegge løsning.
- Opprette GitHub-repository.

### Mandag 9. juni

- Installere Windows Server.
- Konfigurere Active Directory.
- Opprette OU-er.
- Lage testbrukere.
- Utvikle og teste PowerShell-skript.

### Eksamensdag

- Demonstrere løsning.
- Forklare designvalg.
- Presentere dokumentasjon.