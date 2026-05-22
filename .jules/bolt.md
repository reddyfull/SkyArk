## 2024-06-25 - Incorrect Substring Evaluation via Pipeline
**Learning:** Piping a string directly to `Where-Object` (e.g. `$string | Where-Object {$_ -eq ','}`) evaluates the entire string as a single object, not its constituent characters. This results in incorrect counts (always 0 unless the string is exactly the searched character) when attempting to count occurrences of characters or substrings within a string.
**Action:** Use native string methods like `.Split(',').Count - 1` or `[regex]::Matches($string, 'pattern').Count` to efficiently and accurately count occurrences.
