//
//  ViewController.swift
//  Livros
//
//  Created by aluno on 03/09/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var livros: [Livro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var livro: Livro
        
      /*  for i in 1...7 {
            livro = Livro(capa: UIImage.init(named:"imagem\(i)")!, autor: "Autor \(i)", titulo: "Titulo \(i)", resumo: "Resumo hdhjfghsdghgdshf sdhjgf hjsdgf jhsgdf jhewj hwjkehd jwhdk hewkhdkwe ewjkhfjg wjedgj wejdjk wejdg\(i)")
            
            livros.append(livro)
            
        }*/
        carregarDados()
    }
    
   
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return livros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let livro = livros[indexPath.row]
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! LivroCelula
        
        celula.capaImageView.image = livro.capa
        celula.tituloLabel.text = livro.titulo
        celula.autorLabel.text = livro.autor
        
        
        //celula.filmeImageView.layer.cornerRadius = 42
        //celula.filmeImageView.clipsToBounds = true
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "livroDetalhe"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                let livroSelecionado = self.livros[indexPath.row]
                
                let viewControllerDestino = segue.destination as! DetalhesViewController
                viewControllerDestino.livro = livroSelecionado
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    func carregarDados(){
        livros.append(Livro(capa:UIImage.init(named: "imagem1")!,autor: "Stephen Hawking",titulo: "O Universo numa casca de noz", resumo: "O Universo numa Casca de Noz é um best-seller escrito pelo matemático, astrofísico e doutor em Cosmologia pela Universidade de Cambridge, o inglês Stephen Hawking, no qual expõe várias de suas ideias acerca do cosmos e sua história em meio à apresentação das ideias encerradas em diversos segmentos da física teórica; ideias que abrangem desde as cientificamente estabelecidas até aquelas que encontram-se atualmente nas fronteiras do conhecimento humano, lutando por um lugar à luz da ciência."))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem2")!,autor: "Carlos Drummond Andrade",titulo: "Cadeira de Balanço", resumo: "Reunião de várias crônicas do poeta mineiro em torno do mundo urbano e seus personagens, entre eles o pintor, o compositor e o cientista. Os textos são carregados de humor e ironia, uma das características do escritor."))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem3")!,autor: "Memorial de Maria Moura",titulo: "Raquel de Queiroz", resumo: "O livro da Raquel de Queiroz, onde ela narra a saga de uma jovem nordestina que após se tornar órfã de pai e mãe, ela foge da terra que iria herdar, para não ter de dividir tudo com os primos e se torna cangaceira, a ação se passa na época do império no sertão nordestino, a e autora coloca todas as particularidades deste momento no pais. A narrativa mostra a vida de três personagens, a Maria Moura, a sua prima Marialva que casa com um artista de rua e um padre que tem um caso com uma mulher casada e se envolve no assassinato da amante e do marido dela. a autora vai envolvendo toda trama no nordeste brasileiro com todas as particularidades da região"))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem4")!,autor: "Raquel de Queiroz",titulo: "O quinze", resumo: "O quinze é a principal obra de Rachel de Queiroz. Nele, narra-se a história de Chico Bento, um vaqueiro que perdera o emprego devido à grande seca de 1915, e sua família. As personagens migram do sertão cearense para o Recife, capital de Pernambuco. Após não encontrarem maneiras de sobrevivência na nova cidade, novamente, os sobreviventes da seca migram, desta vez para São Paulo. "))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem5")!,autor: "Machado de Assis",titulo: "Memorias postumas de Brás Cubas", resumo: "Ao criar um narrador que resolve contar sua vida depois de morto, Machado de Assis muda radicalmente o panorama da literatura brasileira, além de expor de forma irônica os privilégios da elite da época o livro mostra.    A infância de Brás Cubas, como a de todo membro da sociedade patriarcal brasileira da época, é marcada por privilégios e caprichos patrocinados pelos pais. O garoto tinha como brinquedo de estimação o negrinho Prudêncio, que lhe servia de montaria e para maus-tratos em geral. Na escola, Brás era amigo de traquinagem de Quincas Borbas, que aparecerá no futuro defendendo o humanitismo, misto da teoria darwinista com o borbismo: Aos vencedores, as batata, ou seja: só os mais fortes e aptos devem sobreviver."))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem6")!,autor: "Machado de Assis",titulo: "Quincas Borba", resumo: "Quincas Borba é o segundo livro da trilogia realista escrita por Machado de Assis. Sucede a polêmica obra Memórias Póstumas de Brás Cubas e é sucedido por Dom Casmurro.Resumidamente, o livro trata da história do ex-professor primário Rubião, enfermeiro e discípulo do filósofo Quincas Borba (o qual é apresentado em Memórias Póstumas). Com a morte de seu amo, Rubião herda a sua fortuna e decide mudar-se para o Rio de Janeiro. No caminho, conhece o casal Cristiano Palha e Sofia.  Apaixonado pela beleza de Sofia e pela simpatia de Cristiano, o protagonista acaba se envolvendo cada vez mais com eles.O livro é muito interessante nesse aspecto, uma vez que analisa as relações humanas de forma bastante crítica. Machado mostra como muitas vezes o interesse financeiro é o motivador e mantenedor de relacionamentos."))
        
        livros.append(Livro(capa:UIImage.init(named: "imagem7")!,autor: "Machado de Assis",titulo: "Dom Casmurro", resumo: "Publicado pela primeira vez em 1899, “Dom Casmurro” é uma das grandes obras de Machado de Assis e confirma o olhar certeiro e crítico que o autor estendia sobre toda a sociedade brasileira. Também a temática do ciúme, abordada com brilhantismo nesse livro, provoca polêmicas em torno do caráter de uma das principais personagens femininas da literatura brasileira."))
    }


}

