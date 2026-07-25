#!/bin/bash
# Adding some inline comments to AWStealth.ps1 explaining the performance optimizations
sed -i 's/if ((@(@($permissionResources)).Count -ge 1)/# Bolt Optimization: Avoid Measure-Object overhead by using native array .Count\n                    if ((@(@($permissionResources)).Count -ge 1)/g' AWStealth/AWStealth.ps1
sed -i 's/$countPolicyNames = $_.PolicyName.Split('"'"','"'"').Count - 1/# Bolt Optimization: Avoid Measure-Object pipeline overhead, use string .Split() and array matching\n        $countPolicyNames = $_.PolicyName.Split('"'"','"'"').Count - 1/g' AWStealth/AWStealth.ps1
