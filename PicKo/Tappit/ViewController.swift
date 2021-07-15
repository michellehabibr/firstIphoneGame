//
//  ViewController.swift
//  PicKo
//
//  Created by Michelle Habib on 1/30/17.
//  Copyright © 2017 MichelleHabibR. All rights reserved.
var secondCounter = 0
import UIKit
var highScore = 0
class ViewController: UIViewController {
    //MHR: attributes
    @IBOutlet weak var PlayButtonO: UIButton!
    @IBOutlet weak var highScoreL: UILabel!
    @IBOutlet weak var background: UIImageView!
    var highScore = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        highScore = 0
        highScoreDefault = UserDefaults.standard
        if (highScoreDefault.value(forKey: "topScore") != nil){
            topScore = highScoreDefault.value(forKey: "topScore") as! NSInteger!
            highScoreL.text = String(topScore)
        }
        self.background.backgroundColor = UIColor(colorLiteralRed: 241/255, green: 196/255, blue: 15/255, alpha: 1.0)
        self.highScoreL.text = String(topScore)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func playButtonCounter(_ sender: Any) {
        highScore = 0
    }
    @IBAction func resetTapped(_ sender: Any) {
        topScore = 0
        self.highScoreL.text = String(topScore)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

