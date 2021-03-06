﻿
$settings =  gc "\\lab-script-01\Scripts\GlobalSettings\settings.json" | ConvertFrom-Json
$global:EnvironmentPhase = "alpha"
$outputfileName = "PowershellProfiles_T1504"
$buildOutputPaths =  Get-ChildItem ([string]::Concat($settings.OutputFolder,"\*\",$outputfileName, ".",$settings.OutputFileType))
$data = @()
#Dynamically Building the mandatory Software list as all environments have different output
$buildOutputPaths |  ForEach-Object {
    if($settings.OutputFileType -eq "csv"){
        $temp = Import-Csv   $_.FullName
        $data += $temp
        }
}
$data
# SIG # Begin signature block
# MIIHNgYJKoZIhvcNAQcCoIIHJzCCByMCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUiXA87VAvsw6rJqaFuHuK9rCI
# wy2gggShMIIEnTCCBESgAwIBAgITYQAAAAedH0A3IMLoeQAAAAAABzAKBggqhkjO
# PQQDAjBHMRUwEwYKCZImiZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNs
# YWIxGTAXBgNVBAMTEGxhYi1MQUItQ0EtMDEtQ0EwHhcNMjAwMjA4MTkwOTAyWhcN
# MjIwMjA3MTkwOTAyWjAkMSIwIAYDVQQDExlMQUJDb2RlU2lnbmluZ0NlcnRpZmlj
# YXRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtZ3fgTxf2DMjqcU9
# 0soylzNJwi1+3841eZ8kL3rTsAswjo16bI7qwxjXWdlcwkQEPNkoRwIDt+xWCZkE
# Ha4Jhal8maeKu+kTsP/tunhuWbIcQMpc8CKSwg7rgHXhfJYsCqwuM0b1MQQhEdiL
# XONqlmdem58oJydV5uTK3KqHHRwN0Z+4k84Hjt5OkudiQz+/v9/9PuYQdGQspNAd
# 1amoCW2GaS9y4Uqh3/y4x2cHbd1jY8jHKTlVtXV/1zEIJdvIZungWhVGG06L6hjC
# kE9UrGE/F5Vhq4FqcrbRI7Sx31/f2vgEIrJ7tOAqnhtSxGQWz24K+XyH/Zeh/19T
# 2mzdKwIDAQABo4ICZTCCAmEwOwYJKwYBBAGCNxUHBC4wLAYkKwYBBAGCNxUIg4rr
# BoXL8DyBiYUL6o9qg4b+RmyF3aNA2rEMAgFkAgEDMBMGA1UdJQQMMAoGCCsGAQUF
# BwMDMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMBsGCSsGAQQBgjcVCgQO
# MAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFLacxubNl5U7CQn9V983Lp+z/Z46MB8G
# A1UdIwQYMBaAFMhXY3OWycWedj6aQJPC3vx1Ys01MIHOBgNVHR8EgcYwgcMwgcCg
# gb2ggbqGgbdsZGFwOi8vL0NOPWxhYi1MQUItQ0EtMDEtQ0EsQ049TEFCLUNBLTAx
# LENOPUNEUCxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxD
# Tj1Db25maWd1cmF0aW9uLERDPWxhYixEQz1sb2NhbD9jZXJ0aWZpY2F0ZVJldm9j
# YXRpb25MaXN0P2Jhc2U/b2JqZWN0Q2xhc3M9Y1JMRGlzdHJpYnV0aW9uUG9pbnQw
# gcAGCCsGAQUFBwEBBIGzMIGwMIGtBggrBgEFBQcwAoaBoGxkYXA6Ly8vQ049bGFi
# LUxBQi1DQS0wMS1DQSxDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2VydmljZXMs
# Q049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1sYWIsREM9bG9jYWw/Y0FD
# ZXJ0aWZpY2F0ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3Jp
# dHkwCgYIKoZIzj0EAwIDRwAwRAIgfBJxC4oZWNAJeZb6NUu3YfTQePYNF6oXfnsw
# /LgucYgCIFx7LYe2vHTF+YYtRl6idp8sgBNvbgi+fTg+Jyx5Fi4wMYIB/zCCAfsC
# AQEwXjBHMRUwEwYKCZImiZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNs
# YWIxGTAXBgNVBAMTEGxhYi1MQUItQ0EtMDEtQ0ECE2EAAAAHnR9ANyDC6HkAAAAA
# AAcwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZI
# hvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcC
# ARUwIwYJKoZIhvcNAQkEMRYEFDnR8++i88rJNGIIJzb/vvJwWoaCMA0GCSqGSIb3
# DQEBAQUABIIBAF3trAXd3E3Mso3yxWXajQ9ornuciOgtXdP08OncIik4x1ZlqfZm
# aQ+ZXyJUZjpkKHPfsq5mZCiPjcZjhkh3pee37S+OCVLbq6Aks9PvQOH+xBMdk6w/
# xLdz1shLoK15w+dD4HVip/IFxtQd09pk5LEg8zPM8OnWGNFhhc0qMIYGMLU/pG9D
# PGmpifwbxw/rHWy/NjrlVxl5T/ppLNrj/VmO9+N7ARYZF59raehJW+0zXZieEJ7x
# pkRry8pidOq9z6gjMWA5oukjwusIbR8AdOLT+NGy4Yzdf7d31eTb4UhIhhsrJPF8
# bW5Dbxad5k5tsvKRWD3P4wCmFFo1TrO+zIc=
# SIG # End signature block
