# My Simulation Explanation

For my failure simulation, I am going to have node 2 fail. Node 2 contains a copy of block1, block2, block4, and block5. This simulation will help show how the remaining replicas of these blocks protect the data and keep the system fault-tolerant.

After I had node 2 fail, the copies of block1, block2, block4, and block5 stored on node 2 are no longer available because they were deleted. However, each of these blocks still has two copies stored on other nodes. Block1 still remains on nodes 1 and 3, block2 remains on nodes 1 and 4, block4 remains on nodes 3 and 4, and block5 remains on nodes 1 and 3. This shows how replication helps prevent data loss when a node fails.

To recover from the node failure, I created a new node called node2_replacement. I copied block1, block2, block4, and block5 from the surviving copies into the replacement node. This restored the missing replicas and brought each block back to a replication factor of three.