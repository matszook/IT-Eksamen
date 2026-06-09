Import-Module ActiveDirectory

# Hent alle elever fra OU (dette er kilden)
$users = Get-ADUser -SearchBase "OU=Elever,DC=eksamen,DC=lab" -Filter *

# Opprett gruppen hvis den ikke finnes
if (-not (Get-ADGroup -Filter "Name -eq 'Elever-Access'" -ErrorAction SilentlyContinue)) {
    New-ADGroup `
        -Name "Elever-Access" `
        -GroupScope Global `
        -GroupCategory Security `
        -Path "OU=IT,DC=eksamen,DC=lab"
}

# Gå gjennom alle brukere i OU
foreach ($user in $users) {

    # Sjekk om bruker allerede er medlem i gruppen
    $isMember = Get-ADGroupMember "Elever-Access" -ErrorAction SilentlyContinue |
        Where-Object { $_.SamAccountName -eq $user.SamAccountName }

    # Hvis ikke medlem → legg til
    if (-not $isMember) {
        Add-ADGroupMember -Identity "Elever-Access" -Members $user.SamAccountName
        Write-Host "Lagt til i gruppe: $($user.SamAccountName)"
    }
}