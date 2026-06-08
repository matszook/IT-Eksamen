# Automatisert brukeradministrasjon i Active Directory

## Prosjektbeskrivelse

Dette prosjektet er utviklet som en eksamensoppgave innen IT-driftsfaget. Formålet er å automatisere administrasjon av brukerkontoer i Active Directory ved hjelp av PowerShell.

Løsningen skal redusere manuelt arbeid ved opprettelse og deaktivering av brukerkontoer. Systemet er spesielt rettet mot skoler, hvor nye elever må få kontoer ved skolestart, og elever som slutter må håndteres på en effektiv og sikker måte.

Prosjektet demonstrerer kompetanse innen IT-drift, automatisering, dokumentasjon og grunnleggende utvikling.

---

## Problemstilling

Hvordan kan brukeradministrasjon i Active Directory automatiseres for å redusere tidsbruk, forbedre sikkerhet og minimere menneskelige feil?

---

## Mål

- Automatisere opprettelse av brukerkontoer.
- Automatisere deaktivering av brukerkontoer.
- Generere brukerkontoer basert på data fra CSV-filer.
- Opprette logger over utførte handlinger.
- Dokumentere løsningen slik at andre administratorer kan bruke og vedlikeholde systemet.

---

## Teknologier

### Infrastruktur

- Proxmox Virtual Environment
- Windows Server 2025
- Active Directory Domain Services (AD DS)
- DNS

### Automatisering

- PowerShell
- CSV-import

### Dokumentasjon

- GitHub
- Markdown

---

## Funksjonalitet

### Opprettelse av brukere

Administrator kan legge inn nye brukere i en CSV-fil.

PowerShell-scriptet vil:

- Lese CSV-filen.
- Opprette brukerkontoer.
- Generere brukernavn.
- Plassere brukerne i riktig organisasjonsenhet (OU).

### Deaktivering av brukere

Når elever slutter kan kontoene deaktiveres automatisk.

Scriptet vil:

- Finne brukeren.
- Deaktivere kontoen.
- Loggføre handlingen.

### Flytting av brukere

Deaktiverte brukere kan flyttes til en egen OU for tidligere elever.

Dette gjør det enklere å holde Active Directory organisert og gir bedre oversikt over aktive og inaktive brukere.

### Logging

Alle handlinger registreres i loggfiler slik at administrator kan kontrollere hva som har blitt utført.

---

## Active Directory-struktur

text eksamen.local ├── Elever ├── TidligereElever ├── Lærere └── IT 

---

## Prosjektstruktur

text . ├── README.md ├── Data │   ├── lærere.csv │   ├── nye-elever.csv │   └── sluttede-elever.csv ├── Docs │   ├── Arkitektur.md │   ├── Brukerveiledning.md │   ├── Feilsøking.md │   ├── Installasjon.md │   ├── Prosjektplan.md │   └── Sikkerhet.md ├── Scripts │   ├── create-users.ps1 │   └── disable-users.ps1 ├── .gitignore └── .vscode 

---

## Kom i gang

1. Installer og konfigurer Windows Server med AD DS og DNS.
2. Opprett domenet eksamen.local.
3. Klon repositoriet.
4. Legg nødvendige CSV-filer i Data-mappen.
5. Kjør ønsket PowerShell-script fra Scripts-mappen.
6. Kontroller resultatet i Active Directory.

---

## Dokumentasjon

Prosjektet inneholder dokumentasjon for:

- Installasjon
- Systemarkitektur
- Brukerveiledning
- Feilsøking
- Sikkerhet

Dokumentasjonen er skrevet for å gjøre løsningen enkel å implementere, bruke og vedlikeholde.

---

## Sikkerhet

Brukerkontoer bør ikke slettes umiddelbart. I stedet bør de:

1. Deaktiveres.
2. Flyttes til en egen OU.
3. Beholdes i en definert periode.
4. Slettes etter godkjenning eller utløpt oppbevaringsperiode.

Dette reduserer risikoen for utilsiktet tap av data og gjør det mulig å gjenopprette kontoer ved behov.

---

## Videre utvikling

Mulige forbedringer:

- Automatisert sletting av inaktive brukerkontoer.
- Webgrensesnitt for administrasjon.
- Automatisk rapportering via e-post.
- Integrasjon mot skoleadministrative systemer.
- Rollebasert tilgangskontroll.
- Automatisk arkivering av brukerdata før sletting.