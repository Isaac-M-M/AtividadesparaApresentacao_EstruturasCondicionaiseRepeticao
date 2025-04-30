// Missão 3: Batalha Espacial Intergaláctica
// Objetivo: destruir naves inimigas usando mísseis, com ataques simulados.

var misseis = 5  // Quantidade de mísseis disponíveis
var navesInimigas = ["Zorgon", "Xebulon", "Orion"]  // Lista de naves inimigas

let ataquesSimulados = [0, 1, 0, 0, 0]  // Simulação de ataques automáticos
var rodada = 0  // Índice atual dos ataques simulados

// Enquanto houver mísseis e naves
while misseis > 0 && !navesInimigas.isEmpty {
    print("\n Mísseis restantes: \(misseis)")
    print("Naves inimigas:")

    // Lista todas as naves com seus índices
    for (index, nave) in navesInimigas.enumerated() {
        print("[\(index)] \(nave)")
    }

    // Simula ataque automático
    if rodada < ataquesSimulados.count {
        let escolha = ataquesSimulados[rodada]  // Índice da nave a atacar
        rodada += 1

        // Verifica se o ataque é válido
        if escolha >= 0 && escolha < navesInimigas.count {
            let naveDestruida = navesInimigas.remove(at: escolha)  // Remove a nave destruída
            misseis -= 1  // Diminui um míssil
            print("Nave destruída: \(naveDestruida)")
        } else {
            print("Ataque inválido! Pulando rodada...")
        }
    } else {
        print("Sem mais ataques simulados!")
        break
    }
}

// Resultado final da missão
if misseis == 0 && !navesInimigas.isEmpty {
    print("Sem mísseis! Retirada estratégica!")
} else if navesInimigas.isEmpty {
    print("Vitória! Todas as naves inimigas foram destruídas!")
}
