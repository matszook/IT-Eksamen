# Brukerveiledning

## Oversikt

Dette systemet brukes til å administrere brukerkontoer i Active Directory ved hjelp av PowerShell.

Funksjoner:

- Opprette nye brukere
- Deaktivere brukere
- Flytte brukere til OU for tidligere elever
- Loggføre handlinger

---

## Opprette nye brukere

### Steg 1

Åpne CSV-filen:

text data/nye-elever.csv 

Legg inn brukerne som skal opprettes.

Eksempel:

csv Fornavn,Etternavn,Klasse Ola,Hansen,3ITA Kari,Olsen,3ITB 

### Steg 2

Åpne PowerShell som administrator.

### Steg 3

Kjør opprettelsesskriptet:

powershell .\create-users.ps1 

### Resultat

Systemet oppretter brukerne i Active Directory og plasserer dem i riktig OU.

---

## Deaktivere brukere

### Steg 1

Åpne filen:

text data/sluttede-elever.csv 

Legg inn brukernavnene som skal deaktiveres.

### Steg 2

Kjør skriptet:

powershell .\disable-users.ps1 

### Resultat

Brukerne deaktiveres og flyttes til OU-en "TidligereElever".

---

## Kontroll av resultat

Kontroller at:

- Brukeren eksisterer i Active Directory.
- Brukeren ligger i riktig OU.
- Brukeren har riktig status.
- Loggfilen inneholder registrert handling.

---

## Logging

Alle handlinger registreres i loggfil.

Administrator bør kontrollere loggen etter hver kjøring.
