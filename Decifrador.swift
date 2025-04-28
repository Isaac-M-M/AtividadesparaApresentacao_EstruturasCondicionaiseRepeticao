import Foundation

func executarDecifrador() {
    let mensagensCodificadas = [
        "XyZ@123!aBc",
        "HELLO123world!",
        "Swift5.9_rocks!"
    ]

    func decifrarMensagem(_ mensagem: String) -> String {
        var mensagemDecifrada = ""
        for caractere in mensagem {
            if caractere.isLowercase {
                mensagemDecifrada.append(caractere)
            } else if caractere.isUppercase {
                mensagemDecifrada.append(caractere.lowercased())
            }
        }
        return mensagemDecifrada
    }

    for mensagem in mensagensCodificadas {
        let mensagemDecifrada = decifrarMensagem(mensagem)
        print("Mensagem Codificada: \(mensagem)")
        print("Mensagem Decifrada: \(mensagemDecifrada)")
        print("-----")
    }
}
