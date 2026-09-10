## 2024-05-24 - [Measure-Object Bottleneck]
**Learning:** PowerShell 3.0+ supports direct `.Count` property access, which is drastically faster than the pipeline `Measure-Object` overhead and fixes logic bugs with scalar `$null`s, hashtables, and strings where `Where-Object` silently absorbs `$null` or `Measure-Object` returns 1 for empty hashtables/strings.
**Action:** Always replace pipeline-based `| Measure-Object | Select-Object -ExpandProperty Count` (and similar structures) with direct array-wrapped `.Count` properties. Use `-split` for string character counting.
