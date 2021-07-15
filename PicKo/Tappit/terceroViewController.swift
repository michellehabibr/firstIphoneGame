//
//  terceroViewController.swift
//  PicKo
//
//  Created by Michelle Habib on 1/31/17.
//  Copyright © 2017 MichelleHabibR. All rights reserved.
//

import UIKit
var highScoreDefault = UserDefaults.standard
class terceroViewController: UIViewController {

    @IBOutlet weak var mainMenu: UIButton!
    @IBOutlet weak var background3: UIImageView!
    @IBOutlet weak var scoreeLabel: UILabel!
    @IBOutlet weak var GameL: UILabel!
    @IBOutlet weak var OverL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scoreeLabel.text = String(highScore)
        self.background3.backgroundColor = UIColor(colorLiteralRed: 46/255, green: 204/255, blue: 113/255, alpha: 1.0)
        // Do any additional setup after loading the view.
        //rrgba(46, 204, 113,1.0)
    }
    @IBAction func mainMenuTapped(_ sender: Any) {
        highScore = 0
       //highScoreDefault = UserDefaults.standard
        highScoreDefault.setValue(topScore, forKey: "topScore")
        highScoreDefault.synchronize()
    }
    @IBAction func playAgain(_ sender: Any) {
        highScore = 0
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

}
