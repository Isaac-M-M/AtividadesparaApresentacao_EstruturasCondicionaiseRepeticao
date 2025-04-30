// 🛰️ Missão 2: Navegação em Campo de Asteroides
// Objetivo: simular nave tentando atravessar um campo de asteroides.

// Define a função que executa a navegação pelos asteroides
func executarNavegacaoAsteroides() {
    // Pede para o usuário digitar a distância segura inicial
    print("Defina a distância segura inicial (número inteiro):", terminator: " ")
    
    // Lê o que o usuário digitou e tenta converter para um número inteiro (Int)
    if let input = readLine(), let distanciaInicial = Int(input) {
        // Se a conversão deu certo, cria a variável distanciaSegura
        var distanciaSegura = distanciaInicial
        
        // Loop infinito: vai rodar até encontrar uma condição de parada (break)
        while true {
            // Gera um número aleatório entre 1 e 10 representando a distância de um asteroide
            let distanciaAsteroide = Int.random(in: 1...10)
            print("Distância do asteroide: \(distanciaAsteroide)")
            
            // Se o asteroide estiver muito perto (menos de 3 unidades)
            if distanciaAsteroide < 3 {
                print("PERIGO! Asteroide muito próximo!")
                break // Encerra o loop
            }
            // Se o asteroide estiver se aproximando demais (menos que metade da distância segura)
            else if distanciaAsteroide < (distanciaSegura / 2) {
                print("Aproximando-se de asteroide!")
            }
            
            // Aumenta a distância segura em 2 unidades a cada rodada
            distanciaSegura += 2
            print("Nova distância segura: \(distanciaSegura)")
            
            // Se o asteroide estiver mais longe do que a distância segura, a navegação termina
            if distanciaAsteroide >= distanciaSegura {
                print("Navegação concluída com segurança!")
                break // Encerra o loop
            }
        }
    } else {
        // Se o usuário digitou algo que não é um número inteiro, mostra uma mensagem de erro
        print("Entrada inválida. Por favor, digite um número inteiro.")
    }
}

// Chama a função para executar o programa
executarNavegacaoAsteroides()
