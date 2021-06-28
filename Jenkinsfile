pipeline{
  agent any
  
  environment{
    F_NAME= "Ram"
    L_NAME= "Bahadur"
    NEW_VERSION= "1.0.3"
  }
  
  stages{
    stage ("Dev"){
      when{
        expression{
          ${NEW_VERSION}== "1.0.0"
        }
      }
      steps{
        echo "This is dev stage"
        echo "Owner of this stage is :${F_NAME} ${L_NAME}"
        echo "Version: ${NEW_VERSION}"
      }
    }
    
    stage ("Test"){
      steps{
        echo "This is test stage"
      }
    }
    
    stage ("Prod"){
      steps{
        echo "This is prod stage"
      }
    }
    
    
  }
}
