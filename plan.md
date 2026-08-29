1.  **Refactor `Measure-Object` usage in `AWStealth.ps1`**
    - `| Measure-Object` introduces pipeline overhead and can cause bugs when collections are empty or strings are piped to `Where-Object`. I will replace these with direct `.Count` property access or native operators.
    - Change `$inlineUserPoliciesCounter += $($inlineUserPolicy| Measure-Object).count` to `$inlineUserPoliciesCounter += $inlineUserPolicy.Count` (Lines 772, 823, 893). Specifically note the bug on line 893: `$inlineRolePoliciesCounter += $($inlineRolePoliciesCounter | Measure-Object).count` which I will change to `$inlineRolePoliciesCounter += $inlineRolePolicy.Count`.
    - Change counting logic for `$numAllPrivivlgedEntities`, `$numShadowAdmins`, `$numPrivilegedUsers`, etc., to use direct `.Count` property (e.g. `@($allPrivivlgedEntities).Count` or simply `$allPrivivlgedEntities.Count`) around lines 956-975. Wait, since `Where-Object` might return a single object, `$shadowAdmins.Count` might be null on PS 2.0 but on PS 3.0+ it returns 1 or we can cast as array `@($shadowAdmins).Count`.
    - Change `($_.PolicyName | Where-Object {$_ -eq ','} | Measure-Object).Count` to `([string]$_.PolicyName -split ',').Count - 1`.
    - Change `($_.PolicyName | Where-Object {$_ -like '*-Thr*'} | Measure-Object).Count` to `@(([string]$_.PolicyName -split ',') -like '*-Thr*').Count`.
    - Note: This avoids pipeline allocations and significantly speeds up string parsing in loops.
2.  **Verify the fixes**
    - Run `pwsh -c 'Get-Command ./AWStealth/AWStealth.ps1 -ErrorAction Stop'` to ensure syntax is valid.
3.  **Complete pre-commit steps to ensure proper testing, verification, review, and reflection are done.**
4.  **Create Pull Request**
    - Create a pull request using the format "⚡ Bolt: [performance improvement]".
5.  **Submit**
