/*
class Players {
  int id;
  String name;
  int rank;

  //constructor
  Players(this.id, this.name, this.rank);

  //methods
  void member() {
    print('lets verify first if you are an existig member of our community');
  }

  void paidup() {
    print('verify if the user has cleared payment');
  }

  void newplayer() {
    print('it seems you are a new user in the system: registration page');
  }

  //method display information
  void display1() {
    print('id: ${id}');
    print('name: ${name}');
    print('rank: ${rank}');
  }

  //creating an instance of the person class
  void main() {
    var player1 = Players(1, 'solo', 1);
    // calling the displayinfo method to print information
    player1.display1();
  }
}

class Challenges {
  int Id;
  int Rank;
  DateTime last_match;
  int last_opponent;

  Challenges(this.Id, this.Rank, this.last_match, this.last_opponent);

  void rankings() {
    print(
        'is the user falling or going up the rank, bring in the ranking rules');
  }

  void proceedchallenge() {
    print('book the challenge match data if all the conditions are met');
  }

  void relegation() {
    print(
        'if not played any match for the past 14 days, apply the drop the ladder rule');
  }

//method display information
  void display2() {
    print('id: ${Id}');
    print('Rank: ${Rank}');
    print('last match: ${last_match}');
    print('last opponent id: ${last_opponent}');
  }

  //creating an instance of the person class
  void mainmini() {
    var player1 = Challenges(33139677, 1, DateTime(2024, 3, 15), 2);
    // calling the displayinfo method to print information
    player1.display2();
  }

//creating my class instance
  void main() {
    var Player1 = Challenges(1, 18, DateTime(2024, 3, 15), 2);
    var Player2 = Players(1, 'moha', 1);

    if (Player1.Rank == 1) {
      print('your currently ranked in the first position');
    } else {
      print('oops keep playing to go up! you are not number one');
    }
    if (Player2.name == 'solo') {
      print('you are leading the ladder but in a suspicious way!');
    } else {
      print('challenges opponents above you to go the ladder quickly');
    }
  }
}
/*
void main() {
  var Player1 = Challenges(1, 18, DateTime(2024, 3, 15), 2);
  var Player2 = Players(1, 'moha', 1);

  if (Player1.Rank == 1) {
    print('your currently ranked in the first position');
  } else {
    print('oops keep playing to go up! you are not number one');
  }
  if (Player2.name == 'solo') {
    print('you are leading the ladder but in a suspicious way!');
  } else {
    print('challenges opponents above you to go the ladder quickly');
  }
}
*/

void main() {}
*/

