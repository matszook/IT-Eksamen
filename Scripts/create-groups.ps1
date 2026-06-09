Import-Module ActiveDirectory

$users = Import-Csv "..\Data\nye-elever.csv"

foreach ($user in $users) {
    $username = ($user.Fornavn.Substring(0,1) + $user.Etternavn).ToLower()
    
    Add-ADGroupMember -Identity "Elever-Access" -Members $username

    if(Get-ADUSer -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue) {
        ADGroupMember -Identity "Elever-Access" -Members $username
    }

    if (!(Get-ADGroupMember "Elever-Access" | Where-Object {$_.SamAccountName -eq $username})) {
        Add-ADGroupMember -Identity "Elever-Access" -Members $username
    }
}