# Installasjonsguide

## Oversikt

Denne guiden beskriver hvordan løsningen settes opp på en Windows Server med Active Directory.

Systemet er utviklet for automatisert brukeradministrasjon i Active Directory.

---

## Krav

### Infrastruktur

- Proxmox eller annen virtualiseringsplattform
- Windows Server 2025
- Tilgang til administratorbruker

### Programvare

- Active Directory Domain Services (AD DS)
- DNS Server
- PowerShell

---

## Steg 1: Installere Windows Server

1. Start VM i Proxmox.
2. Velg installasjon av Windows Server.
3. Velg “Desktop Experience”.
4. Fullfør installasjon.
5. Sett administratorpassord.

---

## Steg 2: Gi server navn

1. Åpne Server Manager.
2. Gå til System Settings.
3. Endre navn til f.eks. AD-SERVER.
4. Restart server.

---

## Steg 3: Konfigurer nettverk

1. Sett statisk IP-adresse.
2. Sett DNS til serverens egen IP etter AD-installasjon.

---

## Steg 4: Installer Active Directory

1. Åpne Server Manager.
2. Legg til roller:
   - Active Directory Domain Services
   - DNS Server
3. Start installasjon.

---

## Steg 5: Promoter til Domain Controller

1. Velg “Promote this server to a domain controller”.
2. Opprett nytt domene:
   - eksempel: eksamen.local
3. Fullfør installasjon.
4. Restart server.

---

## Steg 6: Opprett OU-struktur

Opprett følgende OU-er:

- Elever
- TidligereElever
- Lærere
- IT

---

## Steg 7: Test oppsett

- Opprett testbrukere manuelt.
- Test innlogging.
- Verifiser at brukere ligger i riktig OU.
