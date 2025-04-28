import Foundation

func executarBatalhaEspacial() {
    var misseis = 5
    var navesInimigas = ["Zorgon", "Xebulon", "Orion"]

    while misseis > 0 && !navesInimigas.isEmpty {
        print("\nMísseis restantes: \(misseis)")
        print("Naves inimigas:")
        for (index, nave) in navesInimigas.enumerated() {
            print("[\(index)] \(nave)")
        }

        print("Escolha o número da nave para atacar:")
        if let input = readLine(), let escolha = Int(input), escolha >= 0 && escolha < navesInimigas.count {
            let naveDestruida = navesInimigas.remove(at: escolha)
            misseis -= 1
            print("Nave destruída: \(naveDestruida)")
        } else {
            print("Índice inválido! Tente novamente.")
            continue
        }
    }

    if misseis == 0 && !navesInimigas.isEmpty {
        print("Sem mísseis! Retirada estratégica!")
    } else if navesInimigas.isEmpty {
        print("Vitória! Todas as naves inimigas foram destruídas!")
    }
}
