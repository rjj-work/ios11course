// 2019.01.24 objects

class Ghost {
    var isAlive = true
    var strength = 9

    func kill() {
        isAlive = false
    }

    func isStrong() -> Bool {
        if isAlive == false {
            return false
        }
        return strength > 10
    }
}

var ghost = Ghost()
print(ghost.isAlive, ghost.strength, ghost.isStrong())

ghost.strength = 20
print(ghost.isAlive, ghost.strength, ghost.isStrong())

ghost.kill()
print(ghost.isAlive, ghost.strength, ghost.isStrong())

