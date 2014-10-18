import 'package:ex08/funct.dart';

void ex08_1(){ 
  

  var result_part_1 = ('${association(members)}\n');
  var letter = "T";
  var result_part_2 = getMembersLastNameBeginsWith(members, ('${letter}'));
  
  print('\n******************************************QUESTION_1:*********************************************\n'); 
  print('''Part_1: Create a list of associations of members, where a member is represented as a map with 
         the following keys: firstName, lastName and email. Sort the list of members of a given 
         association first by the last name, then by the first name. \n''');              
  print('Answer:\n\n$result_part_1'); 
  
  print('''Part_2: Provide a way to obtain only members of all associations whose last name starts with 
         a given letter.''');
  print('\n        Associations whose last name starts with: [ $letter ]\nAnswer:\n\n$result_part_2');

     
}


void ex08_2(){
  
  print('\n******************************************QUESTION_2:*********************************************\n');
  
  test(var firstName, var lastName, var members){
     for(var n in members){
        if(n['firstName'] == firstName && n['lastName'] == lastName)
        return true;
     }
     return false;
   }
  
   additions(var associationName, var firstName, var lastName, var email, var members){
       members.add({
                    'associationName': associationName,
                    'firstName': firstName,
                    'lastName': lastName,
                    'email': email, 
                  });

     firstNameSorting(var members){
      members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
      print('\nAdd entity:\n');
      printRow(members); 
     }   
     firstNameSorting(members);   
   } 
     additions('CS', 'Boucher', 'Lortis', 'bolor@gmail.com', members); 
  
   removal(var firstName, var lastName, var email, var members){     
      for(var n = 0; n < members.length; n++){        
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName && members[n]['email'] == email){
         members.removeAt(n);
       }
      }
 
     firstNameSorting(var members){
      members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
      print('\nRemove entity:\n'); 
      printRow(members); 
     }    
     firstNameSorting(members);
   } 
     removal('Roger', 'Bouchard', 'robou@gmail.com', members);
   
   update(var associationName, var firstName, var lastName, var email, var members){
      for(var n = 0; n < members.length; n++){
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName){
           members[n]['associationName'] = associationName;
           members[n]['firstName'] = firstName;
           members[n]['lastName'] = lastName;
           members[n]['email'] = email; 
       }
      }
     
     
     firstNameSorting(var members){
       members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
       print('\nUpdate entity:\n'); 
       printRow(members);
     }
     firstNameSorting(members);
   }

   update('IS', 'Eliane', 'Tremblay', ['eltrem@gmail.com','eltrem@hotmail.com'], members);
  
  
}


void main() {
  ex08_1();  //This code was inspired by: https://github.com/leduy10/ex08.git
  ex08_2();  //This code was inspired by: https://github.com/alaincastonguay/ex08.git
      
}
