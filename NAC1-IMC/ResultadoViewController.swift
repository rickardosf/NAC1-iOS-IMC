//
//  ResultadoViewController.swift
//  NAC1-IMC
//
//  Created by Rickardo on 4/21/17.
//  Copyright © 2017 Ricardo Santos Filho. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var resultado:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultado
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func backHome(_ sender: UIButton) {
        performSegue(withIdentifier: "BackHome", sender: nil)
    }

}
