//
//  AboutViewController.swift
//  NAC1-IMC
//
//  Created by Rickardo on 4/21/17.
//  Copyright © 2017 Ricardo Santos Filho. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func url(_ sender: UIButton) {
        if let url = NSURL(string: "https://github.com/rickardosf"){
            UIApplication.shared.openURL(url as URL)
        }
    }

}
