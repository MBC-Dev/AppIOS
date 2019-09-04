import UIKit

class ResumoViewController: UIViewController{
    var livro : Livro!
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var resumoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloLabel.text = livro.titulo
        resumoLabel.text = livro.resumo
    }
}
