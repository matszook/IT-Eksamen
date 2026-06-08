# Brukerveiledning

## Oversikt

Dette systemet brukes til administrasjon av brukerkontoer i Active Directory ved hjelp av PowerShell og CSV-filer.

Systemet støtter:

- Opprettelse av nye brukere
- Deaktivering av brukere
- Flytting av brukere til OU for tidligere elever
- Logging av utførte handlinger

---

## Opprette nye brukere

### 1. Oppdater CSV-fil

Åpne:

Data/nye-elever.csv

Legg inn brukere i følgende format:

Fornavn,Etternavn,Klasse
Ola,Hansen,3ITA
Kari,Olsen,3ITB

---

### 2. Kjør PowerShell

Åpne PowerShell som administrator og naviger til Scripts-mappen:

powershell cd Scripts 

Kjør deretter skriptet:

powershell .\create-users.ps1 

---

### Resultat

Brukerne opprettes automatisk i Active Directory og plasseres i OU-en Elever.

---

## Deaktivere brukere

### 1. Oppdater CSV-fil

Åpne:

Data/sluttede-elever.csv

Legg inn brukernavnene som skal behandles.

---

### 2. Kjør PowerShell

powershell cd Scripts .\disable-users.ps1 

---

### Resultat

- Brukerne blir deaktivert i Active Directory  
- Brukerne flyttes til OU-en TidligereElever  

---

## Kontroll av resultat

Etter kjøring bør du kontrollere:

- Brukeren finnes/ikke finnes i riktig OU
- Konto-status (aktiv/deaktivert)
- At skriptet ikke har gitt feilmeldinger

---

## Logging

Alle handlinger logges i systemet.

Logg brukes til å:

- Verifisere utførte operasjoner
- Feilsøke eventuelle problemer
- Dokumentere endringer i Active Directory

---

## Krav

- Windows Server med Active Directory
- PowerShell kjørt som administrator
- CSV-filer korrekt formatert
- Brukeren må ha nødvendige rettigheter i AD
