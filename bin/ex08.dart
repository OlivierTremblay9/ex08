import 'package:ex08/funct.dart';

void ex08_1(){ 
  
  var associationmembers = [ 
             {"associationName": "IS", "firstName": "Roger", "lastName": "Bouchard", "email": "robou@gmail.com\n"}, 
             {"associationName": "CS", "firstName": "Olivier", "lastName": "Tremblay", "email": "oltrem@gmail.com\n"}, 
             {"associationName": "CS", "firstName": "Samuel", "lastName": "Tremblay", "email": "satrem@gmail.com\n"}, 
             {"associationName": "IS", "firstName": "Léa", "lastName": "Tremblay", "email": "letrem@gmail.com\n"}, 
             {"associationName": "CS", "firstName": "David", "lastName": "Julien", "email": "dajul@gmail.com\n"}, 
             {"associationName": "IS", "firstName": "Eliane", "lastName": "Tremblay", "email": "eltrem@gmail.com\n"}, 
             {"associationName": "CS", "firstName": "Julie", "lastName": "Simard", "email": "jusim@gmail.com\n"}, 
             {"associationName": "CS", "firstName": "Simon", "lastName": "Fournier", "email": "sifour@gmail.com\n"}
             ];
  var result_part_1 = ('${association(associationmembers)}\n');
  var letter = "T";
  var result_part_2 = beginwith(associationmembers, ('${letter}'));
  
       
  
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
   
  List partie_quebecois = new List(); 
  
   var partie1 = new Association("PQ", "Partie Québécois", "New PQ leadership candidate");   
   var member1 = new Member("PQ", "Pierre Karl ", "Péladeau", "PKP@hotmail.com"); 
    partie_quebecois.add(member1);
   var member2 = new Member("PQ", "Bernard", "Drainville", "Bedr@hotmail.com");
    partie_quebecois.add(member2);
   var member3 = new Member("PQ", "Carole ", "Poirier", "capo@hotmail.com");  
    partie_quebecois.add(member3);
    
  List partie_liberal = new List(); 
  
   var partie2 = new Association("PL", "Partie Libéral", "New PL leadership candidate"); 
   var member4 = new Member("PL", "Philippe", "Couillard", "phco@hotmail.com");
    partie_liberal.add(member4);
   var member5 = new Member("PL", "François", "Blais", "frbl@hotmail.com");
    partie_liberal.add(member5);   
   var member6 = new Member("PL", "Carlos", "Leitao", "cale@hotmail.com.com"); 
    partie_liberal.add(member6); 
    partie1.addMember(member6); 
    partie2.deleteMember('phco@hotmail.com'); //ne semble pas fonctionner??
    partie2.editMember("PL", "Francois", "Blais", "frbl@gmail.com"); 
    
   print("#2 : Classe permettant d'ajouter, d'enlever ou de modifier un membre d'association."); 
   print('$partie1 $partie_quebecois'); 
   print(''); 
   print('$partie2 $partie_liberal'); 
 } 

  
  



void main() {
  ex08_1();  //This code was inspired by: https://github.com/leduy10/ex08.git
  ex08_2();  //This code was inspired by: https://github.com/etdeschenes/ex08.git
      
}
