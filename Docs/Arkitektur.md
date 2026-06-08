# Systemarkitektur

## Oversikt

Løsningen består av et automatisert system for brukeradministrasjon i Active Directory. Systemet kombinerer infrastruktur, automatisering og dokumentasjon for å effektivisere håndtering av brukere i et skolemiljø.

---

## Hovedkomponenter

### Infrastruktur (Windows Server / Active Directory)

- Windows Server 2025 fungerer som Domain Controller.
- Active Directory Domain Services (AD DS) brukes for bruker- og gruppeadministrasjon.
- DNS er integrert med domenet for navneoppløsning.
- Domenet er satt opp som eksamen.local.
- Organisasjonsenheter (OU-er):
  - Elever
  - TidligereElever
  - Lærere
  - IT

---

### Automatisering (PowerShell)

Automatiseringen er basert på PowerShell-skript som interagerer direkte med Active Directory.

- create-users.ps1
  - Leser brukerdata fra CSV-filer.
  - Oppretter brukerkontoer i AD.
  - Genererer brukernavn.
  - Plasserer brukere i riktig OU.

- disable-users.ps1
  - Leser brukerdata fra CSV.
  - Deaktiverer brukerkontoer.
  - Flytter brukere til TidligereElever.
  - Logger utførte handlinger.

---

### Datagrunnlag (CSV)

Systemet bruker CSV-filer som input for brukeradministrasjon:

- nye-elever.csv
- lærere.csv
- sluttede-elever.csv

CSV-filene fungerer som datakilde for PowerShell-skriptene.

---

### Dataflyt

Systemet følger denne grunnleggende flyten:

text id="flow1" CSV-filer → PowerShell-skript → Active Directory → OU-struktur → Logging 

---

### Dokumentasjon (GitHub)

GitHub brukes som versjonskontroll og dokumentasjonsplattform.

Repoet inneholder:

- PowerShell-skript
- CSV-filer
- Dokumentasjon i Markdown
- Prosjektplan
- Arkitekturbeskrivelse

GitHub fungerer som en sentral kilde for struktur, dokumentasjon og vedlikehold av løsningen.

---

### Virtualisering (Proxmox)

Windows Server kjører som en virtuell maskin i Proxmox Virtual Environment.

- Gir isolert testmiljø
- Mulighet for snapshots og rollback
- Simulerer et realistisk servermiljø

---

## Samspill mellom komponenter

Systemet er bygget opp slik:

1. Data legges inn i CSV-filer i GitHub-repoet.
2. PowerShell-skript kjøres på Windows Server.
3. Active Directory oppdateres basert på dataene.
4. Brukere plasseres i riktig OU.
5. Handlinger logges for kontroll og sporbarhet.

---

## Oppsummering

Arkitekturen består av tre hovedlag:

- Infrastruktur: Windows Server + AD DS + DNS
- Automatisering: PowerShell + CSV
- Dokumentasjon og styring: GitHub

Disse lagene jobber sammen for å gi en automatisert og strukturert løsning for brukeradministrasjon i et Active Directory-miljø.