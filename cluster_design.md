# My Mini "Cluster" Layout

For my cluster design, I am choosing to have four nodes and use a "replication factor of 3." I am choosing to do a replication factor of three because it is a common choice and will help with data integrity. Each block will have three copies stored across the different nodes. This will help with data integrity because if one node fails, the other copies of the block will still be available. The layout below shows what the file structure will look like:

cluster/
    node1/
        block1
        block2
        block3
        block5
    node2/
        block1
        block2
        block4
        block5
    node3/
        block1
        block3
        block4
        block5
    node4/
        block2
        block3
        block4

The blocks in this layout hold all the individual loan files, and each block represents one month of loan records for the Spring semester of 2026.