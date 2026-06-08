# Importerer Active Directory-modul
Import-Module ActiveDirectory

# Leser CSV-fil med sluttede elever
$users = Import-Csv "..\data\sluttede-elever.csv"

foreach ($user in $users) {

    # Deaktiverer bruker
    Disable-ADAccount -Identity $user.Brukernavn

    # Flytter bruker til TidligereElever OU
    Get-ADUser $user.Brukernavn | Move-ADObject -TargetPath "OU=TidligereElever,DC=eksamen,DC=local"

    Write-Host "Deaktivert og flyttet: $($user.Brukernavn)"
}