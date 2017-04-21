//
//  ViewController.swift
//  NAC1-IMC
//
//  Created by Rickardo on 4/21/17.
//  Copyright © 2017 Ricardo Santos Filho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var alturaTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var sexoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func calcIMC(_ sender: UIButton) {
        
        let p = Double(pesoTextField.text!)
        let a = Double(alturaTextField.text!)
        
        let bmiM = IMCComputation(peso:p!, altura:a!)
        
        resultLabel.text = (NSString(format: "%.2f", bmiM.imc())) as String
        
    }

    @IBAction func toogle(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            sexoLabel.text = "Masculino"
        }else{
            sexoLabel.text = "Feminino"
        }
        
    }


    @IBAction func table(_ sender: UIButton) {
        performSegue(withIdentifier: "ResultadoSegue", sender: nil)
    }

    
    @IBAction func about(_ sender: UIButton) {
        performSegue(withIdentifier: "AboutSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier!{
        case "ResultadoSegue":
            let objResult = segue.destination as! ResultadoViewController
            objResult.resultado = resultLabel.text!
        default: return;
        }
    }
}

