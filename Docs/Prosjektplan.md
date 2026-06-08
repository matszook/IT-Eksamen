# Prosjektplan

## Prosjektnavn

Automatisert brukeradministrasjon i Active Directory

---

## Problemstilling

Hvordan kan administrasjon av brukerkontoer i Active Directory automatiseres for å redusere tidsbruk, forbedre sikkerhet og redusere risikoen for menneskelige feil?

---

## Bakgrunn

I skolemiljøer er det behov for å håndtere brukerkontoer for elever og ansatte. Nye brukere må opprettes ved skolestart, og eksisterende brukere må deaktiveres eller fjernes når de slutter.

Denne prosessen gjøres ofte manuelt og kan være tidkrevende og feilutsatt. Målet er å utvikle en automatisert løsning ved bruk av PowerShell og Active Directory.

---

## Mål

### Hovedmål

Utvikle en løsning som automatiserer livssyklusen til brukerkontoer i Active Directory.

### Delmål

- Konfigurere Windows Server med Active Directory.
- Opprette et testdomene.
- Lage organisasjonsenheter (OU-er).
- Opprette testbrukere fra CSV-data.
- Utvikle PowerShell-skript for brukeradministrasjon.
- Dokumentere løsningen.
- Teste og verifisere funksjonalitet.

---

## Teknologier

### Drift

- Proxmox Virtual Environment
- Windows Server 2025
- Active Directory Domain Services
- DNS

### Automatisering

- PowerShell
- CSV-filer

### Dokumentasjon

- Markdown
- GitHub

---

## Planlagt Active Directory-struktur

```text
eksamen.local
├── Elever
├── TidligereElever
├── Lærere
└── IT
```

---

## Funksjoner

### Opprette brukere

Systemet skal:

- Lese brukerdata fra CSV-fil.
- Opprette brukerkontoer i Active Directory.
- Generere brukernavn.
- Plassere brukere i riktig OU.

### Deaktivere brukere

Systemet skal:

- Finne brukere basert på inputdata.
- Deaktivere brukerkontoer.
- Loggføre handlinger.

### Flytte brukere

Systemet skal:

- Flytte deaktiverte brukere til OU-en TidligereElever.

### Fjerne brukere

Systemet skal:

- Fjerne brukere fra Active Directory når de ikke lenger er nødvendige.

### Logging

Systemet skal:

- Registrere handlinger i loggfiler.
- Lagre dato, tid og utført operasjon.

---

## Testing

### Scenario 1 – Opprette brukere

Flere brukere importeres fra CSV-fil.

Forventet resultat:
Brukere opprettes korrekt i riktig OU.

---

### Scenario 2 – Deaktivering

Brukere deaktiveres basert på inputdata.

Forventet resultat:
Kontoene blir deaktivert i Active Directory.

---

### Scenario 3 – Flytting

Deaktiverte brukere flyttes til TidligereElever.

Forventet resultat:
Brukere havner i korrekt OU.

---

### Scenario 4 – Fjerning

Brukere fjernes fra Active Directory.

Forventet resultat:
Brukere eksisterer ikke lenger i domenet.

---

## Kompetansemål

Prosjektet demonstrerer kompetanse innen:

- Serverdrift
- Active Directory
- Brukeradministrasjon
- Automatisering med PowerShell
- Feilsøking
- Dokumentasjon
- Sikkerhet
- Versjonskontroll med GitHub

---

## Fremdriftsplan

### Før eksamen

- Planlegge løsning og struktur
- Etablere GitHub-repository
- Klargjøre dokumentasjon

### Implementasjonsfase

- Installere og konfigurere Windows Server
- Opprette Active Directory
- Lage OU-struktur
- Utvikle PowerShell-skript
- Teste funksjonalitet

### Eksamensdag

- Videreutvikle løsningen
- Teste og demonstrere funksjonalitet
- Presentere dokumentasjon og valg