import Foundation

print("""
Escolha a missão:
1 - Decifrador de Mensagens
2 - Navegação em Campo de Asteroides
3 - Batalha Espacial
""")

if let escolha = readLine(), let opcao = Int(escolha) {
    switch opcao {
    case 1:
        executarDecifrador()
    case 2:
        executarNavegacaoAsteroides()
    case 3:
        executarBatalhaEspacial()
    default:
        print("Opção inválida!")
    }
} else {
    print("Entrada inválida!")
}