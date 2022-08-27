import UIKit

// Interface
protocol TeamBehaviour {
    func play( _ players:Int)
}
// Comportamiento
class Attack : TeamBehaviour {
    func play(_ players:Int) {
        print("El equipo Ataca con \(players) jugadores")
    }
}

class Defense : TeamBehaviour {
    func play(_ players:Int) {
        print("El equipo defiende con \(players) jugadores")
    }
}

class WaitTeam : TeamBehaviour {
    func play(_ players:Int) {
        print("El equipo espera con \(players) jugadores")
    }
}

class attackHalf : TeamBehaviour {
    func play(_ players:Int) {
        print("El equipo Ataca con medio equipo con \(players) jugadores")
    }
}

// Contexto
class Team {
    var _teamBehaviour: TeamBehaviour = WaitTeam()
    var teamBehaviour: TeamBehaviour {
        get {
            return _teamBehaviour
        }
        set {
            self._teamBehaviour = newValue
        }
    }
    
    func play(behaviour:TeamBehaviour, _ players:Int){
        teamBehaviour = behaviour
        teamBehaviour.play(players)
    }
}


class Play {
    func players() {
        let team = Team()
        team.play(behaviour: WaitTeam(), 12)
        team.play(behaviour: Attack(), 4)
        team.play(behaviour: Defense(), 3)
    }
}
//-----------------------
let play = Play()
play.players()
