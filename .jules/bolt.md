## 2024-05-24 - Remove Measure-Object Pipeline Overhead
**Learning:** Using `Measure-Object` in PowerShell 5+ within a loop creates a massive overhead. For example, `$($items | Measure-Object).count` on 1,000 iterations takes over 15 seconds, while direct property access `@($items).Count` takes <10ms.
**Action:** When calculating array sizes or elements counts inside loops, always wrap the variable or expression in an array `@()` and access `.Count` directly to avoid pipeline overhead and safely handle `$null` values.
