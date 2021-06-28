pipeline{
  agent any
  
  enviroment{
    F_NAME= "Ram"
    L_NAME= "Bahadur"
    VERSION= "1.0.3"
  }
  
  stages{
    stage ("Dev"){
      steps{
        echo "This is dev stage"
        echo "Owner of this stage is :${F_NAME} ${L_NAME}"
        echo "Version: ${VERSION}"
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
