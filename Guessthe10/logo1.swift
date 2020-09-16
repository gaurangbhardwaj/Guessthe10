//
//  logo1.swift
//  Guessthe10
//
//  Created by Gaurang Bhardwaj on 30/10/18.
//  Copyright © 2018 Gaurang Bhardwaj. All rights reserved.
//

import UIKit

class logo1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextlogobtn.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    var imagenames = ["arduino","github","msi","pinterest","raspberry pi","razer","snapdragon","twitter","xiaomi"]
    
    var logosimages = [UIImage(named: "arduino"), UIImage(named: "github"), UIImage(named: "msi"), UIImage(named: "pinterest"), UIImage(named: "raspberry pi"), UIImage(named: "razer"), UIImage(named: "snapdragon"), UIImage(named: "twitter"), UIImage(named: "xiaomi")]

    var imgcnt = 0
    @IBOutlet weak var logoguess: UITextField!
    @IBOutlet weak var correctwrong: UILabel!
    @IBOutlet weak var nextlogobtn: UIButton!
    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var check: UIButton!
    
    
    @IBAction func checklogo(_ sender: Any)
    {
        if(logoguess.text == imagenames[imgcnt])
        {
            correctwrong.text = "✔ Right Guess"
            correctwrong.textColor = UIColor.green
            nextlogobtn.isHidden = false
            //nextlogobtn.backgroundColor = UIColor.green
            
        }
        else{
            correctwrong.text = "✘ Wrong Guess"
            correctwrong.textColor = UIColor.red
            nextlogobtn.isHidden = true
            let alert = UIAlertController(title: "Alert", message: "Please give correct answer!!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func nextlogo(_ sender: Any)
    {
       imgcnt = imgcnt + 1
        //print("\n \(imgcnt)")
        if(imgcnt == 9 )
        {
            nextlogobtn.isHidden = true
            logoguess.text = ""
            check.isHidden = true
            logoguess.isHidden = true
            
            let alert = UIAlertController(title: "Congratulations!!", message: "You Pass the level 1", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else
        {
            logoguess.text = ""
            correctwrong.text = ""
            //nextlogo.isEnabled = false
            nextlogobtn.isHidden = true
            //nextlogobtn.backgroundColor = UIColor.red
            logoimage.image = logosimages[imgcnt]
        }
        
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
