import UIKit

class Livro{
    var capa: UIImage!
    var autor: String!
    var titulo: String!
    var resumo: String!
    
    init(capa: UIImage, autor: String, titulo:String, resumo: String) {
        self.capa = capa
        self.autor = autor
        self.titulo = titulo
        self.resumo = resumo
    }
}
