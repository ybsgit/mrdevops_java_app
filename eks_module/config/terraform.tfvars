
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-01dee77f947854149","subnet-09ab4ab618e610d58","subnet-08d1306dda5a5c197","subnet-0df25b6a0731e2681","subnet-09d0b3011f6104448"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-01dee77f947854149","subnet-09ab4ab618e610d58","subnet-08d1306dda5a5c197","subnet-0df25b6a0731e2681","subnet-09d0b3011f6104448"]


        tags = {
             "Name" =  "node1"
         } 
  }
}