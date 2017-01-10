//
//  ViewController.swift
//  IdadeCachorro
//
//  Created by Guilherme Assemany on 08/01/17.
//  Copyright © 2017 Guilherme Assemany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        idadeDog.layer.cornerRadius = 10.0
        idadeDog.clipsToBounds = true
        idadeDog.isHidden = true
        lblResultado.isHidden = true
        lblFooter.isHidden = true
        btnLimpar.isHidden = true
    }
    
    @IBOutlet weak var txtIdade: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var idadeDog: UILabel!
    @IBOutlet weak var lblFooter: UILabel!
    @IBOutlet weak var btnLimpar: UIButton!
    
    @IBAction func Limpar(_ sender: Any) {
        idadeDog.isHidden = true
        lblResultado.isHidden = true
        lblFooter.isHidden = true
        btnLimpar.isHidden = true
    }
    
    @IBAction func btnIdade(_ sender: Any) {
        if(txtIdade.text?.isEmpty)!{
            let alert = UIAlertController(title: "Atenção", message: "Digite a idade do seu cachorro", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.view.endEditing(true)
            return
        }
        var idade = Int(txtIdade.text!)!;
        idade = idade * 7;
        idadeDog.text = String(idade)
        lblResultado.isHidden = false
        idadeDog.isHidden = false
        lblFooter.isHidden = false
        btnLimpar.isHidden = false
        self.view.endEditing(true)
        return
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

