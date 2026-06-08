# Feilsøking

## Oversikt

Dette dokumentet beskriver vanlige feil som kan oppstå ved bruk av systemet og hvordan de løses.

---

## Problem: Active Directory-modulen mangler

### Feilmelding

powershell The term 'Get-ADUser' is not recognized 

### Årsak

Active Directory-modulen er ikke installert eller lastet inn.

### Løsning

Kontroller at:

- Active Directory Domain Services er installert.
- PowerShell kjører med administratorrettigheter.

Importer modulen:

powershell Import-Module ActiveDirectory 

---

## Problem: Bruker blir ikke opprettet

### Mulige årsaker

- Feil i CSV-fil.
- Brukernavn eksisterer allerede.
- Manglende rettigheter.

### Løsning

Kontroller:

- Kolonnenavn i CSV.
- At brukeren ikke finnes fra før.
- At skriptet kjøres som administrator.

---

## Problem: Bruker blir ikke deaktivert

### Mulige årsaker

- Feil brukernavn i CSV-fil.
- Brukeren finnes ikke.

### Løsning

Søk etter brukeren i Active Directory og kontroller at brukernavnet stemmer.

---

## Problem: Kan ikke flytte bruker til OU

### Mulige årsaker

- Feil OU-navn.
- OU eksisterer ikke.

### Løsning

Kontroller OU-strukturen i Active Directory Users and Computers.

---

## Problem: Skript finner ikke CSV-fil

### Feilmelding

powershell Cannot find path 

### Løsning

Kontroller:

- Filplassering
- Filnavn
- Relativ sti i skriptet

---

## Problem: Domenekontroller ikke tilgjengelig

### Mulige årsaker

- Active Directory er ikke konfigurert.
- DNS fungerer ikke.
- Nettverksfeil.

### Løsning

Kontroller:

- Nettverkstilkobling
- DNS-innstillinger
- Status på domenekontroller

---

## Generell feilsøkingsprosess

1. Les feilmeldingen nøye.
2. Kontroller loggfil.
3. Verifiser CSV-data.
4. Test kommandoen manuelt.
5. Kontroller Active Directory.
6. Kontroller nettverk og DNS.
