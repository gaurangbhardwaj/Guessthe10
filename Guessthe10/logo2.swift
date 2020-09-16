//
//  logo2.swift
//  Guessthe10
//
//  Created by Gaurang Bhardwaj on 31/10/18.
//  Copyright © 2018 Gaurang Bhardwaj. All rights reserved.
//

import UIKit

class logo2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        nextlogobtn.isHidden = true
        // Do any additional setup after loading the view.
    }
    var imgcnt = 0
    @IBOutlet weak var logoguess: UITextField!
    @IBOutlet weak var nextlogobtn: UIButton!
    @IBOutlet weak var correctwrong: UILabel!
    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var check: UIButton!
    
    var imagenames = ["apple","google","hewlett packard","motorola","oneplus","skype","visual studio code","xbox","xcode"]
    
    var logosimages = [UIImage(named: "apple"), UIImage(named: "google"), UIImage(named: "hp"), UIImage(named: "motorola"), UIImage(named: "oneplus"), UIImage(named: "skype"), UIImage(named: "visual studio code"), UIImage(named: "xbox"), UIImage(named: "xcode")]
    
    
    @IBAction func checklogo(_ sender: Any) {
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
    
    @IBAction func nextlogo(_ sender: Any) {
        imgcnt = imgcnt + 1
        //print("\n \(imgcnt)")
        if(imgcnt == 9 )
        {
            nextlogobtn.isHidden = true
            logoguess.text = ""
            check.isHidden = true
            logoguess.isHidden = true
            
            let alert = UIAlertController(title: "Congratulations!!", message: "You Pass the level 2", preferredStyle: UIAlertController.Style.alert)
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
