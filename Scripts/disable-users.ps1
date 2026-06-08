# Importerer Active Directory-modul
Import-Module ActiveDirectory

# Leser CSV-fil med sluttede elever
$users = Import-Csv "..\Data\sluttede-elever.csv"

foreach ($user in $users) {

    try {
        # Henter bruker fra AD
        $adUser = Get-ADUser -Identity $user.Brukernavn -ErrorAction Stop

        # Deaktiverer bruker
        Disable-ADAccount -Identity $adUser.SamAccountName

        # Flytter bruker til TidligereElever OU
        Move-ADObject -Identity $adUser.DistinguishedName `
            -TargetPath "OU=TidligereElever,DC=eksamen,DC=local"

        Write-Host "Deaktivert og flyttet: $($user.Brukernavn)" -ForegroundColor Green
    }
    catch {
        Write-Host "Feil: Bruker ikke funnet eller kunne ikke behandles: $($user.Brukernavn)" -ForegroundColor Red
    }
}