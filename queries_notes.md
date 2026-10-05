# My Partition Layout Explanation

My data lake is partitioned based on year and month, and this helps the engine skip certain folders when answering these queries. The engine doesn't have to go into unnecessary month folders, and as the data lake grows, it won't have to go into unnecessary year folders.