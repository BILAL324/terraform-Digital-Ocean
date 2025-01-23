terraform { 
  cloud { 
    
    organization = "BilalTerraform" 

    workspaces { 
      name = "production" 
    } 
  } 
}