//
//  SelectLevel.swift
//  Guessthe10
//
//  Created by Gaurang Bhardwaj on 31/10/18.
//  Copyright © 2018 Gaurang Bhardwaj. All rights reserved.
//

import UIKit

class SelectLevel: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func ShowLevel3Details(_ sender: Any) {
        let alert = UIAlertController(title: "Stay tuned", message: "Level 3 is coming soon!!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
