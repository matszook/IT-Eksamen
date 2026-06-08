# Sikkerhet

## Oversikt

Sikkerhet er en viktig del av brukeradministrasjon i Active Directory. Dette prosjektet tar hensyn til både tilgangskontroll og livssyklusstyring av brukere.

---

## Brukerlivssyklus

Brukerkontoer skal ikke slettes direkte.

Anbefalt prosess:

1. Deaktiver bruker
2. Flytt bruker til OU “TidligereElever”
3. Behold konto i en definert periode
4. Slett konto etter godkjenning eller utløp

---

## Tilgangskontroll

- Kun administratorer skal kunne kjøre PowerShell-skript.
- Brukere skal plasseres i riktige OU-er for å begrense tilgang.
- Gruppebasert tilgang bør brukes der det er mulig.

---

## Logging

Alle handlinger skal logges:

- Opprettelse av brukere
- Deaktivering
- Flytting
- Sletting

Dette gir sporbarhet og gjør feilsøking enklere.

---

## Risiko

| Risiko | Tiltak |
|--------|--------|
| Feil sletting av bruker | Deaktivering før sletting |
| Feil i CSV-fil | Validering før kjøring |
| Uautoriserte handlinger | Begrens admin-tilgang |

---

## Beste praksis

- Bruk alltid testmiljø før produksjon.
- Dokumenter alle endringer.
- Bruk OU-struktur for organisering.
- Unngå direkte sletting uten kontroll.
