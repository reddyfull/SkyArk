## 2024-05-24 - PowerShell String Pipeline Performance and Logic Flaws
**Learning:** Piping strings directly to `Where-Object` (e.g., `$str | Where-Object {$_ -eq ','}`) evaluates the entire string as a single object, not character by character. This causes massive O(N) logical failures and severe performance penalties.
**Action:** Always use native .NET string methods like `([string]$str).Split(',').Count - 1` or `[regex]::Matches($str, 'pattern').Count` for character/substring counting to achieve correct logic and orders-of-magnitude faster execution.
