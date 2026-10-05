# My Data Lake Layout

My lake layout supports queries by date because I organized my loan data by year and month. My data is from the Spring 2026 semester, and within the 2026 folder, I created separate partitions for the months of January through May and put the corresponding data for those months into the partitions.

This layout makes it easier for an analytics engine to skip irrelevant data because the engine can access the individual month partitions instead of looking through irrelevant month partitions for the data. For example, a query for February 2026 would only need to use the month=02 partition and could skip month=01, month=03, month=04, and month=05.