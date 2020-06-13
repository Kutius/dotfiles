#Import Module
Import-Module posh-git
Import-Module oh-my-posh
Import-Module Get-ChildItemColor

#Set oh-my-posh Theme
Set-Theme SpencerTechy

#Encoding
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Set proxy
function set_proxy_variable {
  Set-Item Env:http_proxy "http://127.0.0.1:8888"  
  Set-Item Env:https_proxy "http://127.0.0.1:8888" 
}

function unset_proxy_variable {
  Remove-Item Env:http_proxy
  Remove-Item Env:https_proxy
}

New-Alias -Name spp -Value set_proxy_variable
New-Alias -Name upp -Value unset_proxy_variable