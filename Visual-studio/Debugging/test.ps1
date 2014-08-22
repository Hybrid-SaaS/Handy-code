$vsversion = "12.0" # VS 2013 (optionally 11, 10, 9, etc.)
kill -name devenv # end any existing VS instances (optional)

Get-ItemProperty -Path "HKCU:\Software\Microsoft\VisualStudio\$vsversion\Debugger" -Name DisableAttachSecurityWarning # query value
Set-ItemProperty -Path "HKCU:\Software\Microsoft\VisualStudio\$vsversion\Debugger" -Name DisableAttachSecurityWarning -Value 1 # assign value