//
//  QuizViewController.swift
//  pedro
//
//  Created by ICMMAC08-5617 on 19/10/22.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var lbquestion: UILabel!
    
    @IBOutlet var btopcoes: [UIButton]!
    
    
    var manager = managerQuiz()
    var quiz:Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadQuestion()
    }
    
    @IBAction func btopcoes(_ sender: UIButton) {
        let INDEX = Int(btopcoes.firstIndex(of: sender) ?? 0)
        reloadQuestion()
    }
    
    func reloadQuestion(){
        quiz = manager.reloadQuiz()
        lbquestion.text = "\(quiz.pergunta)"
        for i in 0...3{
            btopcoes[i].setTitle(quiz.respostas[i], for: .normal)
        }
        
    }
   

}
