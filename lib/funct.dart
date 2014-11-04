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

  //Question 2-----This code was inspired by: https://github.com/etdeschenes/ex08.git
  
  class Association { 
     String partie_code; 
     String partie_name; 
     String description; 
     var association_member = new List(); 
   
   
     Association(String this.partie_code,  
                 String this.partie_name,  
                 String this.description); 
   
   
     String toString() { 
       return '{\n' 'Association: \n' 
              'Political party code : ${partie_code}\n' 
              'Party name : ${partie_name}\n' 
              'Association description : ${description}\n' 
              '}\n'; 
   } 
 
               
   addMember(Member member) { 
     association_member.add(member);
   
   } 
 
               
   deleteMember(String email) { 
     for (var n = 0; n < association_member.length; n++) { 
       if (association_member[n].email == email) { 
         association_member.removeAt(n); 
      } 
     } 
   } 
 
               
   editMember(String partie_code, String firstName, String lastName, String email) { 
     for (var n = 0; n < association_member.length; n++) { 
       if (association_member[n]["firstName"] == firstName && association_member[n]["lastName"] == lastName) { 
           association_member[n]["associationCode"] = partie_code; 
           association_member[n]["firstName"] = firstName; 
           association_member[n]["lastName"] = lastName; 
           association_member[n]["email"] = email; 
      } 
     } 
   } 
 } 

  class Member { 
   String partie_code; 
   String firstName; 
   String lastName; 
   String email; 
   var memberList = new List(); 
 
   
   Member(String this.partie_code,  
          String this.firstName,  
          String this.lastName,  
          String this.email); 
 
   
   String toString() { 
     return '{\n' 'Member \n' 
            '  Partie code : ${partie_code} \n' 
            '  firstName: ${firstName}\n' 
            '  lastName: ${lastName}\n' 
            '  email: ${email}\n' 
            '}\n'; 
   } 
 
   
   addAssociation(Association association) { 
      memberList.add(association); 
   } 
   
   deleteAssociation(Association association) { 
     for (var n = 0; n < memberList.length; n++) { 
       if (memberList[n].partie_name == association.partie_name) { 
           memberList.removeAt(n); 
       } 
     } 
   } 
 } 
 
  
