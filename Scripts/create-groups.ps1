Import-Module ActiveDirectory

$users = Import-Csv "..\Data\nye-elever.csv"

# Opprett gruppe (kan også sjekkes først)
if (-not (Get-ADGroup -Filter "Name -eq 'Elever-Access'" -ErrorAction SilentlyContinue)) {
    New-ADGroup -Name "Elever-Access" -GroupScope Global -GroupCategory Security -Path "OU=IT,DC=eksamen,DC=lab"
}

foreach ($user in $users) {

    $username = ($user.Fornavn.Substring(0,1) + $user.Etternavn).ToLower()

    # SJEKK: finnes brukeren i AD
    $adUser = Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue

    if ($adUser) {

        # SJEKK: er allerede medlem
        $isMember = Get-ADGroupMember "Elever-Access" | Where-Object { $_.SamAccountName -eq $username }

        if (-not $isMember) {
            Add-ADGroupMember -Identity "Elever-Access" -Members $username
            Write-Host "Lagt til i gruppe: $username"
        }
    }
    else {
        Write-Host "Bruker finnes ikke i AD: $username"
    }
}