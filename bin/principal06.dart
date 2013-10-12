library principal06;

part 'fonctions06.dart';

ex6_1() {
  print('Ex. 6.1');
  var palindrome = ["laval", "exercice", "ressasser"];
  for (var pal in palindrome) {
    var check = EstUnPalindrome(pal);
    if (check) {
      print('$pal est un palindrome');
    }else{
      print ('$pal n\'est pas un palindrome');
    }
  }
  print('');
}

ex6_2() {
  print('Ex. 6.2');
  var date1 = "2103-06-08 00:00:00";
  var date2 = "2103-10-08 00:00:00";
  var jours  = DateCalculate(date1, date2);
  print('Il y a $jours jours entre le $date1 et le $date2.'); 
  print('');
}

ex6_3() {
  print('Ex. 6.3');
  var notes = [96, 61.55, 59, -10];
  var grade = "";
  for (var note in notes){
    grade = convertGrade(note);  
    print ('Avec la note de $note, votre grade est $grade');
  }
  print('');
}

ex6_4() {
  print('Ex. 6.4');
  var inputList = ['Annie', 'Noémie', 'Chantal', 'André-Bruno', 'Nathalie', 'Jean-Pierre', 'Sandra', 'Brigitte', 'Florence', 'Benjamin', 'Alexandre'];
  var sb = NamesList(inputList);
  print(sb.toString());
  print('');
}

ex6_5() {
  print('Ex. 6.5');
  //Liste des équipes
  var equipes = new Map();
  equipes[1] = 'Bruins de Boston';
  equipes[2] = 'Flyers de Philadelphie';
  equipes[3] = 'Canadiens de Montréal';
  equipes[4] = 'Canucks de Vancouver';
  equipes[5] = 'Sénateurs d\'Ottawa';
  
  var listEquipes =equipes.values.toList();
  print('*****Listes des des equipes*****');
  for (var equipe in listEquipes){
    print('$equipe');
  }
  print('\n');
  
  //Liste des joueurs 
  var joueurs = new Map();
  joueurs['Zdeno Chara'] = 1;
  joueurs['Patrice Bergeron'] = 1;
  joueurs['Milan Lucic'] = 1;
  joueurs['Brad Marchand'] = 1;
  joueurs['Mike Moore'] = 1;
  joueurs['Matt Fraser'] = 1;
  joueurs['Jordan Caron'] = 1;
  joueurs['Jason Spezza'] = 5;
  joueurs['Erik Karlsson'] = 5; 
  joueurs['Craig Anderson'] = 5;
  joueurs['Cory Conacher'] = 5;
  joueurs['Claude Giroux'] = 2;
  joueurs['Ilia Bryzgalov'] = 2;
  joueurs['Simon Gagné'] = 2;
  joueurs['Wayne Simmonds'] = 2; 
  joueurs['Roberto Luongo'] = 4;
  joueurs['Ryan Kesler'] = 4;
  joueurs['Henrik Sedin'] = 4;
  joueurs['Alexandre Burrows'] = 4;
  joueurs['Zack Kassian'] = 4;
  joueurs['Jason Garrison'] = 4;
  joueurs['Carey Price'] = 3;
  joueurs['Karl Subban'] = 3;
  joueurs['Daniel Brière'] = 3;
  joueurs['Max Pacioretty'] = 3;
  joueurs['Alex Galchenyuk'] = 3;
  joueurs['Brian Gionta'] = 3;
  joueurs['Andreï Markov'] = 3;
  joueurs['Lars Eller'] = 3; 
  
  var listJoueurs = joueurs.keys.toList();
  print('*****Listes des joueurs*****');
  for (var joueur in listJoueurs){
    print('$joueur');
  }
  print('\n');
  
 
  var mapListThree = ClubsPlayers(equipes, joueurs);
  print('*****Listes des clubs classés par leurs noms, et chaque club suivi par la liste de ses joueurs classés par ordre alphabétique:*****');
  mapListThree.forEach((k,v) => print('$k: $v'));
  print('');
}

void main() {
  ex6_1();
  ex6_2();
  ex6_3();
  ex6_4();
  ex6_5();
}
