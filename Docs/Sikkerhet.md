# Sikkerhet

## Oversikt

Sikkerhet er en sentral del av brukeradministrasjon i Active Directory. Dette prosjektet tar hensyn til tilgangskontroll, livssyklusstyring og risiko ved automatisering.

---

## Brukerlivssyklus

Brukerkontoer skal ikke slettes direkte uten kontroll.

Anbefalt prosess:

1. Deaktivere brukerkonto
2. Flytte bruker til OU TidligereElever
3. Beholde konto i en definert periode
4. Slette konto etter godkjenning eller utløpt lagringsperiode

Denne prosessen reduserer risiko for utilsiktet datatap og gir mulighet for gjenoppretting.

---

## Tilgangskontroll

- Kun administratorer skal ha tilgang til å kjøre PowerShell-skript som endrer Active Directory.
- Brukere skal plasseres i riktige OU-er for å sikre korrekt tilgangsstyring.
- Rollebasert tilgang (RBAC) bør benyttes der det er mulig.

---

## Logging og sporbarhet

Alle handlinger i systemet bør logges:

- Opprettelse av brukere
- Deaktivering av brukere
- Flytting mellom OU-er
- Eventuell sletting

Logging gir:
- Sporbarhet
- Feilsøking
- Kontroll ved uønskede endringer

---

## Risikoanalyse

| Risiko | Tiltak |
|--------|--------|
| Utilsiktet sletting av brukere | Deaktivering før eventuell sletting |
| Feil i CSV-data | Validering og kontroll før kjøring |
| Uautorisert tilgang til skript | Begrenset tilgang til administratorer |
| Feil OU-plassering | Standardisert OU-struktur |

---

## Beste praksis

- Bruk alltid testmiljø før produksjon.
- Dokumenter alle endringer i systemet.
- Bruk strukturert OU-design for organisering.
- Unngå direkte sletting uten verifisering.
- Følg prinsippet om minst mulig privilegium (least privilege).