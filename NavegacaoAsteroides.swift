import Foundation

func executarNavegacaoAsteroides() {
    var distanciaSegura = 6

    while true {
        let distanciaAsteroide = Int.random(in: 1...10)
        print("Distância do asteroide: \(distanciaAsteroide)")

        if distanciaAsteroide < 3 {
            print("PERIGO! Asteroide muito próximo!")
            break
        } else if distanciaAsteroide < (distanciaSegura / 2) {
            print("Aproximando-se de asteroide!")
        }

        distanciaSegura += 2
        print("Nova distância segura: \(distanciaSegura)")

        if distanciaAsteroide >= distanciaSegura {
            print("Navegação concluída com segurança!")
            break
        }
    }
}
