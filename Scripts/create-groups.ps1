Import-Module ActiveDirectory

$users = Get-ADUser -SearchBase "OU=Elever,DC=eksamen,DC=lab" -Filter *

if (-not (Get-ADGroup -Filter "Name -eq 'Elever-Access'" -ErrorAction SilentlyContinue)) {
    New-ADGroup `
        -Name "Elever-Access" `
        -GroupScope Global `
        -GroupCategory Security `
        -Path "OU=IT,DC=eksamen,DC=lab"
}

foreach ($user in $users) {

    $isMember = Get-ADGroupMember "Elever-Access" -ErrorAction SilentlyContinue |
        Where-Object { $_.SamAccountName -eq $user.SamAccountName }

    if (-not $isMember) {
        Add-ADGroupMember -Identity "Elever-Access" -Members $user.SamAccountName
        Write-Host "Lagt til i gruppe: $($user.SamAccountName)"
    }
}