library funct;


 List association(List associationmembers) {  //For exercice #1. This code was inspired by: https://github.com/leduy10/ex08.git
     
    List answer = new List(); 
    Map sort = associationmembers.elementAt(0); 
    answer.add(sort); 
     
    for (int n = 1; n < associationmembers.length; n++) { 
      bool inserted = false; 
      sort = associationmembers.elementAt(n); 
      String lastName = sort["lastName"]; 
      String firstName = sort["firstName"]; 
      
    for (int n = 0; n < answer.length; n++) { 
      Map select_values = answer.elementAt(n); 
      String select_key_last_name = select_values["lastName"]; 
      String select_key_First_name = select_values["firstName"]; 
      
     if (lastName.compareTo(select_key_last_name) < 0 && inserted == false) { 
        answer.insert(n, sort); 
       inserted = true; 
     } 
     else if (lastName.compareTo(select_key_last_name) == 0 && inserted == false) { 
      
       for (int o = n; o < answer.length; o++) { 
         select_values = answer.elementAt(n); 
         select_key_last_name = select_values["lastName"]; 
         select_key_First_name = select_values["firstName"];
          
         if (lastName.compareTo(select_key_last_name) == 0 && firstName.compareTo(select_key_First_name) < 0 && inserted == false) { 
          answer.insert(o, sort); 
          inserted = true; 
         } 
          
         else if (lastName.compareTo(select_key_last_name) != 0 && inserted == false) { 
           answer.insert(o, sort); 
           inserted = true; 
         } 
       } 
     } 
    } 
      if (inserted == false) { 
        answer.add(sort); 
      } 
    } 
    
    return answer; 
  } 
  
  
  List beginwith(List members, String letter) { 
     
    List returnList = new List(); 
     
    for (int i = 0; i < members.length; i++) { 
      Map sort = members.elementAt(i); 
      String lastName = sort["lastName"]; 
      if(lastName.substring(0, 1) == letter) { 
        returnList.add(sort); 
      } 
    } 
     
    return returnList; 
  } 

  var members = [ 
           {"associationName": "IS", "firstName": "Roger", "lastName": "Bouchard", "email": "robou@gmail.com"}, 
           {"associationName": "CS", "firstName": "Olivier", "lastName": "Tremblay", "email": "oltrem@gmail.com"}, 
           {"associationName": "CS", "firstName": "Samuel", "lastName": "Tremblay", "email": "satrem@gmail.com"}, 
           {"associationName": "IS", "firstName": "Léa", "lastName": "Tremblay", "email": "letrem@gmail.com"}, 
           {"associationName": "CS", "firstName": "David", "lastName": "Julien", "email": "dajul@gmail.com"}, 
           {"associationName": "IS", "firstName": "Eliane", "lastName": "Tremblay", "email": "eltrem@gmail.com"}, 
           {"associationName": "CS", "firstName": "Julie", "lastName": "Simard", "email": "jusim@gmail.com"}, 
           {"associationName": "CS", "firstName": "Simon", "lastName": "Fournier", "email": "sifour@gmail.com"} 
      ]; 


  printRow(var row){
    for(var n in row){
    print(n);
    }
  }
  
  
  
  
