//
//  2ndViewController.swift
//  PicKo
//
//  Created by Michelle Habib on 1/30/17.
//  Copyright © 2017 MichelleHabibR. All rights reserved.
//

import UIKit
var color = UIColor.white
var myColorArray = [UIColor(colorLiteralRed: 26/255, green: 188/255, blue: 156/255, alpha: 1.0), UIColor(colorLiteralRed: 26/255, green: 188/255, blue: 156/255, alpha: 1.0),UIColor(colorLiteralRed: 46/255, green: 204/255, blue: 113/255, alpha: 1.0), UIColor(colorLiteralRed: 52/255, green: 152/255, blue: 219/255, alpha: 1.0), UIColor(colorLiteralRed: 52/255, green: 73/255, blue: 94/255, alpha: 1.0), UIColor(colorLiteralRed: 22/255, green: 160/255, blue: 133/255, alpha: 1.0), UIColor(colorLiteralRed: 39/255, green: 174/255, blue: 96/255, alpha: 1.0), UIColor(colorLiteralRed: 41/255, green: 128/255, blue: 185/255, alpha: 1.0), UIColor(colorLiteralRed: 44/255, green: 62/255, blue: 80/255, alpha: 1.0), UIColor(colorLiteralRed: 241/255, green: 197/255, blue: 15/255, alpha: 1.0), UIColor(colorLiteralRed: 230/255, green: 126/255, blue: 34/255, alpha: 1.0), UIColor(colorLiteralRed: 231/255, green: 76/255, blue: 60/255, alpha: 1.0), UIColor(colorLiteralRed: 236/255, green: 240/255, blue: 241/255, alpha: 1.0), UIColor(colorLiteralRed: 149/255, green: 165/255, blue: 166/255, alpha: 1.0), UIColor(colorLiteralRed: 243/255, green: 156/255, blue: 18/255, alpha: 1.0), UIColor(colorLiteralRed: 211/255, green: 84/255, blue: 0/255, alpha: 1.0), UIColor(colorLiteralRed: 189/255, green: 195/255, blue: 199/255, alpha: 1.0), UIColor(colorLiteralRed: 127/255, green: 140/255, blue: 141/255, alpha: 1.0), UIColor(colorLiteralRed: 192/255, green: 57/255, blue: 43/255, alpha: 1.0), UIColor(colorLiteralRed:255/255.0, green:105/255.0, blue:180/255.0, alpha: 1.0), UIColor(colorLiteralRed:220/255.0, green:20/255.0, blue:60/255.0, alpha: 1.0),  UIColor(colorLiteralRed:0/255.0, green:191/255.0, blue:255/255.0, alpha: 1.0), UIColor(colorLiteralRed:65/255.0, green:105/255.0, blue:225/255.0, alpha: 1.0), UIColor(colorLiteralRed:0/255.0, green:0/255.0, blue:128/255.0, alpha: 1.0), UIColor(colorLiteralRed:127/255.0, green:255/255.0, blue:212/255.0, alpha: 1.0), UIColor(colorLiteralRed:245/255.0, green:222/255.0, blue:179/255.0, alpha: 1.0), UIColor(colorLiteralRed:160/255.0, green:82/255.0, blue:45/255.0, alpha: 1.0), UIColor(colorLiteralRed:255/255.0, green:127/255.0, blue:80/255.0, alpha: 1.0), UIColor(colorLiteralRed:240/255.0, green:128/255.0, blue:128/255.0, alpha: 1.0), UIColor(colorLiteralRed:128/255.0, green:0/255.0, blue:0/255.0, alpha: 1.0)]//30 colores(0-29)
var topScore = 0
var colorRand = 0
var rand01 = 0
var counter = 21
class _ndViewController: UIViewController {
    func values(){
        b1 = 0; b2 = 0; b3 = 0; b4 = 0
    }
    func randomize(){
        colorRand = Int(arc4random_uniform(29)) //0-29
        color = myColorArray[colorRand] //newcolor
        rand01 = Int(arc4random_uniform(4)+1)//1-4
        buttons()
        highScore+=1
        self.highScoreLabel.text = String(highScore)
    }
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var labelprove: UILabel!
    var seconds = 0
    var timer = Timer()
    var timerIsOn = false
    var b1 = 1, b2 = 0, b3 = 0, b4 = 0
    func buttons(){
    switch rand01{
        case 1:
            b1 = 1;  b2 = 0; b3 = 0; b4 = 0
            self.Button1.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
            self.Button2.backgroundColor = color
            self.Button3.backgroundColor = color
            self.Button4.backgroundColor = color
            break
        case 2:
            b1 = 0; b2 = 1; b3 = 0; b4 = 0
            self.Button1.backgroundColor = color
            self.Button2.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
            self.Button3.backgroundColor = color
            self.Button4.backgroundColor = color
            break
        case 3:
            b1 = 0; b2 = 0; b3 = 1; b4 = 0
            self.Button1.backgroundColor = color
            self.Button2.backgroundColor = color
            self.Button3.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
            self.Button4.backgroundColor = color
            break
        case 4:
            b1 = 0; b2 = 0; b3 = 0; b4 = 1
            self.Button1.backgroundColor = color
            self.Button2.backgroundColor = color
            self.Button3.backgroundColor = color
            self.Button4.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
            break
        default:
            values()
        }
    }
    override func viewDidLoad() {
        highScore = 0
        super.viewDidLoad()
        self.labelprove.textColor = UIColor.cyan
        self.Button2.backgroundColor = color
        self.Button3.backgroundColor = color
        self.Button4.backgroundColor = color
        self.Button1.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)//comenzar WISTERIA
        self.highScoreLabel.text = String(highScore)
        if(timerIsOn == false){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(_ndViewController.updateTimer)), userInfo: nil, repeats: true)
            timerIsOn = true
        }
        // Do any additional setup after loading the view.
    }
    func updateTimer(){
        seconds+=1
        self.labelprove.text = String(counter - seconds)
        if(seconds == 23){
            values()
            self.labelprove.textColor = UIColor.black
            self.performSegue(withIdentifier: "timerLost", sender: self)
        }
        if seconds == 21{
            self.labelprove.textColor = UIColor.black
            self.performSegue(withIdentifier: "CuatroASeisS", sender: self)
            seconds = 24
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Button1(_ sender: Any) {
        if(b1 == 1){
            randomize()
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            scoreCheck()
            seconds = 22
        }
    }
    @IBAction func Button2(_ sender: Any) {
        if(b2 == 1){
            randomize()
        }
        else {
            values()
            scoreCheck()
            seconds = 22
        }
    }
    @IBAction func Button3(_ sender: Any) {
        if(b3 == 1){
            randomize()
        }
        else {
            values()
            scoreCheck()
            seconds = 22
        }
    }
    @IBAction func Button4(_ sender: Any) {
        if(b4 == 1){
            randomize()
        }
        else {
            values()
            scoreCheck()
            seconds = 22
        }
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
