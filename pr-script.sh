git checkout -b optimize-where-object
git add AWStealth/AWStealth.ps1 .jules/bolt.md
git commit -m "⚡ Bolt: Optimize Where-Object string parsing" -m "💡 What: Replaced Where-Object pipeline with native string split and array filtering.
🎯 Why: Piping a string to Where-Object evaluates the entire string as a single object, leading to logic bugs. Also, Measure-Object incurs a huge pipeline overhead.
📊 Impact: Significant reduction in pipeline overhead for string operations and corrects a subtle parsing bug.
🔬 Measurement: Run AWStealth.ps1 to observe accurate and faster processing of policy names."
