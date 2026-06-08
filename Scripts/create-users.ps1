# Importerer Active Directory-modul
Import-Module ActiveDirectory

# Leser CSV-fil med nye elever
$users = Import-Csv "..\data\nye-elever.csv"

foreach ($user in $users) {

    # Lager brukernavn (første bokstav fornavn + etternavn)
    $username = ($user.Fornavn.Substring(0,1) + $user.Etternavn).ToLower()

    # Standard passord (kan endres senere)d
    $password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

    # Oppretter bruker i Active Directory
    New-ADUser `
        -Name "$($user.Fornavn) $($user.Etternavn)" `
        -GivenName $user.Fornavn `
        -Surname $user.Etternavn `
        -SamAccountName $username `
        -UserPrincipalName "$username@eksamen.local" `
        -AccountPassword $password `
        -Enabled $true `
        -Path "OU=Elever,DC=eksamen,DC=local"

    Write-Host "Opprettet bruker: $username"
}