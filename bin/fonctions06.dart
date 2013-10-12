part of principal06;

//exercice06_01
EstUnPalindrome(var givenString){
  //Comme l'ordre des lettres reste le même qu'on le lise de gauche
  //à droite ou de droite à gauche
  for (var i = 0; i < givenString.length ~/ 2; i++){
    if (givenString[i] != givenString[givenString.length - i - 1])
      return false;  
  }  
  return true;
}

//exercice06_02
DateCalculate(var Date1, var Date2){
  //On verifie pour connaitre la date plus récente et adapter les calculs en fonction
  DateTime maDate1;
  DateTime maDate2; 
  if (DateTime.parse(Date1).isAfter(DateTime.parse(Date2))){
    maDate1 = DateTime.parse(Date1);  
    maDate2 = DateTime.parse(Date2); 
  }else{
    maDate1 = DateTime.parse(Date2);  
    maDate2 = DateTime.parse(Date1); 
  }
  Duration difference = maDate1.difference(maDate2);
  var daysBetween = difference.inDays; 
  
  return (daysBetween);  
}

//exercice06_03
convertGrade(var notes){
  //On retourne X quand la note entrée n'est pas comprise entre 0 et 100.
  var grade ="X";
  // La note entrée doit être comprise entre 0 et 100
  if (notes >= 0 && notes <= 100){
      if (notes >= 95){
        grade = "A+"; 
      } else if (notes>=90 && notes<=94.99){
        grade = "A";
      } else if (notes>=85 && notes<=89.99){
        grade = "A-";
      } else if (notes>=80 && notes<=84.99){
        grade = "B+";
      } else if (notes>=75 && notes<=79.99){
        grade = "B";
      } else if (notes>=70 && notes<=74.99){
        grade = "B-";
      } else if (notes>=65 && notes<=69.99){
        grade = "C+";
      } else if (notes>=60 && notes<=64.99){
        grade = "C";
      } else{
        grade = "E";
      }
  }  
  return (grade);
}

//exercice06_04
NamesList(var inputNamesList){
  //On fait une copie de la liste initiale
  var copyInputNames = inputNamesList;
  var shorterThanEight = [];
  var equalToEight = [];
  var longerThanEight = [];
  var sb = new StringBuffer();
  
  shorterThanEight = copyInputNames.where((f) => f.length < 8).toList();
  equalToEight = copyInputNames.where((f) => f.length ==8).toList();
  longerThanEight = copyInputNames.where((f) => f.length > 8).toList();
  
  sb.write("***Noms de longueur inferieur a 8:\n");
  sb.write(shorterThanEight);
  sb.write("\n***Noms de longueur egale a 8:\n");
  sb.write(equalToEight);
  sb.write("\n***Noms de longueur superieur a 8:\n");
  sb.write(longerThanEight);
  
  return (sb.toString());
  
}


//exercice06_05
ClubsPlayers(var Clubs, var Joueurs){
  var tempoClubs = new List();
  var tempoMapThree = new Map <String,List> ();  
  var keysClubs = Clubs.keys.toList();
  var valuesClubs = Clubs.values.toList();
  var keysJoueurs = Joueurs.keys.toList();
  var valuesJoueurs = Joueurs.values.toList();  
  var nomJoueur;  
  var iListClub = 0;
  var iListJoueurs = 0;
  
  for(var keyClub in keysClubs){   
    iListJoueurs = 0;
    var clubName = valuesClubs[iListClub];  
    if (!tempoMapThree.containsKey(clubName)){
      tempoMapThree.putIfAbsent(clubName, ()=>tempoClubs);
    } 
    for(var valueDePlayer in valuesJoueurs){
      if(valueDePlayer == keyClub){ 
        nomJoueur = keysJoueurs[iListJoueurs];    
        tempoClubs.add(nomJoueur);
        }    
      iListJoueurs++; 
      }
      tempoClubs.sort((m,n) => m.compareTo(n));      
      tempoMapThree[clubName] = tempoClubs.toList();   
      tempoClubs.clear();
      iListClub++;
    }
  var keysMapThree = tempoMapThree.keys.toList();
  keysMapThree.sort((m,n) => m.compareTo(n));
  
  var mapThree = new Map <String,List> (); 
  for (var kmThree in keysMapThree){
    if (!mapThree.containsKey(kmThree)){
      mapThree.putIfAbsent(kmThree, ()=>tempoClubs);
      mapThree[kmThree] = tempoMapThree[kmThree];
    }
  }
  
  return mapThree;
}


