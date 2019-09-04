import UIKit

class DetalhesViewController: UIViewController{
    
    var livro: Livro!
    @IBOutlet weak var capaImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var resumoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        capaImageView.image = livro.capa
        tituloLabel.text = livro.titulo
        autorLabel.text = livro.autor
        resumoLabel.text = livro.resumo
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resumoCompleto"{
            
            let viewControllerDestino = segue.destination as! ResumoViewController
            viewControllerDestino.livro = self.livro
        }
    }
}

