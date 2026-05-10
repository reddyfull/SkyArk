## 2024-05-10 - [Avoid Measure-Object Pipeline Overhead]
**Learning:** In PowerShell scripts (especially performance-critical ones like AzureStealth.ps1 or AWStealth.ps1), piping collections to `Measure-Object` and accessing `.count` (e.g. `($array | Measure-Object).count`) introduces severe O(N) overhead due to pipeline construction and object enumeration. It is significantly slower than direct property access.
**Action:** Always prefer array casing and direct `.Count` property access (e.g. `@($array).Count`) in PowerShell 3.0+ for simple element counting.
