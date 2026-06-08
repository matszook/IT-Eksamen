# Feilsøking

## Oversikt

Dette dokumentet beskriver vanlige feil som kan oppstå ved bruk av systemet, samt forslag til løsninger.

---

## Problem: Active Directory-modulen mangler

### Feilmelding

powershell id="ad1" The term 'Get-ADUser' is not recognized 

### Årsak

Active Directory-modulen er ikke installert eller ikke importert i PowerShell.

### Løsning

Kontroller følgende:

- Active Directory Domain Services er installert.
- PowerShell kjøres som administrator.

Importer modulen manuelt:

powershell id="ad2" Import-Module ActiveDirectory 

---

## Problem: Bruker blir ikke opprettet

### Mulige årsaker

- Feil format i CSV-fil
- Brukernavn eksisterer allerede
- Manglende rettigheter i Active Directory

### Løsning

Kontroller:

- Kolonnenavn og struktur i CSV-filen
- At brukeren ikke allerede finnes i AD
- At skript kjøres som administrator

---

## Problem: Bruker blir ikke deaktivert

### Mulige årsaker

- Feil brukernavn i CSV-fil
- Brukeren finnes ikke i Active Directory

### Løsning

- Søk etter brukeren i Active Directory Users and Computers
- Kontroller at brukernavnet stemmer med sAMAccountName

---

## Problem: Kan ikke flytte bruker til OU

### Mulige årsaker

- Feil OU-navn
- OU eksisterer ikke
- Manglende rettigheter

### Løsning

Kontroller OU-struktur i Active Directory:

- Elever
- TidligereElever
- Lærere
- IT

---

## Problem: CSV-fil ikke funnet

### Feilmelding

powershell id="csv1" Cannot find path 

### Løsning

Kontroller:

- Filplassering
- Filnavn
- Relativ sti i skriptet (..\Data\)

---

## Problem: Domenekontroller ikke tilgjengelig

### Mulige årsaker

- Active Directory er ikke riktig konfigurert
- DNS fungerer ikke korrekt
- Nettverksproblemer

### Løsning

Kontroller:

- Nettverkstilkobling
- DNS-server (127.0.0.1 / localhost ved lokal DC)
- At domenekontrolleren er online

---

## Generell feilsøkingsprosess

1. Les feilmelding nøye
2. Kontroller CSV-data og input
3. Verifiser Active Directory manuelt
4. Test kommando i PowerShell
5. Sjekk DNS og nettverk
6. Se gjennom eventuelle loggfiler