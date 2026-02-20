Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Install-ADDSForest `
-DomainName "providence.lan" `
-DomainNetbiosName "PROVIDENCE" `
-InstallDNS:$false `
-Force
