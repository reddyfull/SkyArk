1. **Remove `Measure-Object` pipeline overhead in `AWStealth/AWStealth.ps1` using `replace_with_git_merge_diff`**
   - Replace `$($var | Measure-Object).count` with direct property access `@($var).Count` to significantly reduce pipeline allocation overhead.
   - Replace pipelines `($_.PolicyName | Where-Object {...} | Measure-Object).Count` with native array filtering operators `@(@($_.PolicyName) -like '...').Count` to preserve functionality while eliminating pipeline costs.
   - Also fixes a typo on line 893 where `$inlineRolePoliciesCounter` was mistakenly used in its own pipeline instead of `$inlineRolePolicy`.
2. **Verify syntax using `pwsh` in `run_in_bash_session`**
   - Run `pwsh -c 'Get-Command ./AWStealth/AWStealth.ps1 -ErrorAction Stop'` to check syntax safely and ensure no errors were introduced.
3. **Complete pre-commit steps**
   - Complete pre-commit steps to ensure proper testing, verification, review, and reflection are done.
4. **Submit PR with performance findings**
   - Document the performance impact of removing pipelines and `Measure-Object` in `.jules/bolt.md`.
   - Submit the PR with title `⚡ Bolt: [performance improvement]`.
