import 'package:ex08/funct.dart';

void ex08_1(){ 
  
  List members = [ 
           {"associationName": "IS", "firstName": "Roger", "lastName": "Bouchard", "email": "robou@gmail.com\n"}, 
           {"associationName": "CS", "firstName": "Olivier", "lastName": "Tremblay", "email": "oltrem@gmail.com\n"}, 
           {"associationName": "CS", "firstName": "Samuel", "lastName": "Tremblay", "email": "satrem@gmail.com\n"}, 
           {"associationName": "IS", "firstName": "Léa", "lastName": "Tremblay", "email": "letrem@gmail.com\n"}, 
           {"associationName": "CS", "firstName": "David", "lastName": "Julien", "email": "dajul@gmail.com\n"}, 
           {"associationName": "IS", "firstName": "Éliane", "lastName": "Tremblay", "email": "eltrem@gmail.com\n"}, 
           {"associationName": "CS", "firstName": "Julie", "lastName": "Simard", "email": "jusim@gmail.com\n"}, 
           {"associationName": "CS", "firstName": "Simon", "lastName": "Fournier", "email": "sifour@gmail.com\n"} 
         ]; 
  var result_part_1 = ('${association(members)}\n');
  var letters = "T";
  var result_part_2 = getMembersLastNameBeginsWith(members, ('${letters}'));
  
  print('\n******************************************QUESTION_1:*********************************************\n'); 
  print('''Part_1: Create a list of associations of members, where a member is represented as a map with 
         the following keys: firstName, lastName and email. Sort the list of members of a given 
         association first by the last name, then by the first name. \n''');              
  print('Answer:\n\n$result_part_1'); 
  
  print('''Part_2: Provide a way to obtain only members of all associations whose last name starts with 
         a given letter.''');
  print('\n        Associations whose last name starts with: [ $letters ]\nAnswer:\n\n$result_part_2');

     
}


void ex08_2(){
  
  print('\n******************************************QUESTION_2:*********************************************\n');
  
}


void main() {
  ex08_1();  //This code was inspired by: https://github.com/leduy10/ex08.git
  ex08_2();
      
}
