# Importerer Active Directory-modul
Import-Module ActiveDirectory

# Leser CSV-fil med nye elever
$users = Import-Csv "..\Data\nye-elever.csv"

foreach ($user in $users) {

    # Lager brukernavn (første bokstav fornavn + etternavn)
    $username = ($user.Fornavn.Substring(0,1) + $user.Etternavn).ToLower()

    # Sjekk at bruker finnes
    $base = $username
    $i = 1

    while (Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue) {
        $username = "$base$i"
        $i++
    }

    # Standard passord (demo / eksamensbruk)
    $password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

    try {
        # Oppretter bruker i Active Directory
        New-ADUser `
            -Name "$($user.Fornavn) $($user.Etternavn)" `
            -GivenName $user.Fornavn `
            -Surname $user.Etternavn `
            -SamAccountName $username `
            -UserPrincipalName "$username@eksamen.lab" `
            -AccountPassword $password `
            -Enabled $true `
            -Path "OU=Elever,DC=eksamen,DC=lab"

        Write-Host "Opprettet bruker: $username" -ForegroundColor Green
    }
    catch {
        Write-Host "Feil ved opprettelse av bruker: $username" -ForegroundColor Red
        Write-Host $_.Exception.Message -ForegroundColor Yellow
    }
}