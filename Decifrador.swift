// Missão 1: Decifrador de Mensagens Estelares
// Objetivo: decifrar mensagens contendo letras, números e símbolos.

// Lista de mensagens codificadas
let mensagens = ["XyZ@123!aBc", "HELLO123world!", "Swift5.9_rocks!"]

// Loop externo para percorrer cada mensagem
for mensagem in mensagens {
    var mensagemDecifrada = ""  // Variável que armazenará a versão decifrada

    // Loop interno para verificar caractere por caractere
    for caractere in mensagem {
        if caractere.isLowercase {
            mensagemDecifrada.append(caractere)  // Adiciona minúscula diretamente
        } else if caractere.isUppercase {
            mensagemDecifrada.append(caractere.lowercased())  // Converte maiúscula em minúscula
        }
        // Números e símbolos são ignorados
    }

    // Imprime a mensagem original e a decifrada
    print("Mensagem original: \(mensagem)")
    print("Mensagem decifrada: \(mensagemDecifrada)")
    print("-----")
}
