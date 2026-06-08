# Installasjonsguide

## Oversikt

Denne guiden beskriver hvordan løsningen settes opp på en Windows Server med Active Directory Domain Services (AD DS).

Systemet er utviklet for automatisert brukeradministrasjon i et Active Directory-miljø.

---

## Krav

### Infrastruktur

- Proxmox Virtual Environment (eller annen virtualiseringsplattform)
- Windows Server 2025
- Administratorrettigheter

### Programvare

- Active Directory Domain Services (AD DS)
- DNS Server
- PowerShell

---

## Steg 1: Installere Windows Server

1. Opprett og start en ny VM i Proxmox.
2. Installer Windows Server 2025.
3. Velg Desktop Experience.
4. Fullfør installasjonen.
5. Sett administratorpassord.

---

## Steg 2: Konfigurer servernavn

1. Åpne Server Manager.
2. Gå til System Properties.
3. Endre navn på serveren (f.eks. AD-SERVER).
4. Restart serveren.

---

## Steg 3: Konfigurer nettverk

1. Sett statisk IP-adresse på serveren.
2. Konfigurer DNS til å peke til serverens egen IP etter AD-installasjon.

---

## Steg 4: Installer Active Directory

1. Åpne Server Manager.
2. Legg til roller:
   - Active Directory Domain Services
   - DNS Server
3. Fullfør installasjonen.

---

## Steg 5: Promoter til Domain Controller

1. Velg “Promote this server to a domain controller”.
2. Opprett nytt domene:
   - eksamen.local
3. Fullfør veiviseren.
4. Serveren restartes automatisk.

---

## Steg 6: Opprett OU-struktur

Opprett følgende organisasjonsenheter (OU):

- Elever
- TidligereElever
- Lærere
- IT

---

## Steg 7: Testing av oppsett

1. Opprett testbrukere manuelt i Active Directory.
2. Test innlogging med en bruker.
3. Verifiser at brukere havner i riktig OU.
4. Kontroller DNS-oppslag og domenetilkobling.

---

## Resultat

Et ferdig Active Directory-miljø som er klart for automatisert brukeradministrasjon ved hjelp av PowerShell-skript.