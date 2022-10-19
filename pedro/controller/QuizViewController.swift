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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btopcoes(_ sender: UIButton) {
        let INDEX = Int(btopcoes.firstIndex(of: sender) ?? 0)
        lbquestion.text = "\(INDEX)"
    }
    
   

}
