//
//  F4rthViewController.swift
//  PicKo
//
//  Created by Michelle Habib on 2/1/17.
//  Copyright © 2017 MichelleHabibR. All rights reserved.
import UIKit
func scoreCheck(){
    if highScore > topScore{
        topScore = highScore
    }
}
class F4rthViewController: UIViewController {
        func values(){
        b1 = 0; b2 = 0; b3 = 0; b4 = 0; b5 = 0; b6 = 0; b7 = 0; b8 = 0
    }
    func random(){
        colorRand = Int(arc4random_uniform(29)) //0-29
        color = myColorArray[colorRand] //newcolor
        rand01 = Int(arc4random_uniform(8)+1)//1-8
    }
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var highScoreLabel: UILabel!
    var seconds = 0
    var timer = Timer()
    var timerIsOn = false
    var counter = 21
    @IBOutlet weak var labelprove: UILabel!
    func updateTimer(){
        seconds+=1
        self.labelprove.text = String(counter - seconds)
        if(seconds == 23){
            values()
            scoreCheck()
            self.labelprove.textColor = UIColor.black
            self.performSegue(withIdentifier: "ochoAOverS", sender: self)
        }
        if seconds == 21{
            scoreCheck()
            self.labelprove.textColor = UIColor.black
            self.performSegue(withIdentifier: "ochoAOverS", sender: self)
            seconds = 24
        }
    }
    func buttons(){
        switch rand01{
            case 1:
                b1 = 1
                self.Button1.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 2:
                b2 = 1
                self.Button2.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
                b1 = 0
                self.Button1.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 3:
                b3 = 1
                self.Button3.backgroundColor = UIColor(colorLiteralRed: 142/255,    green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 4:
                b4 = 1
                self.Button4.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                    b3 = 0
                self.Button3.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 5:
                b5 = 1
                self.Button5.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 6:
                b6 = 1
                self.Button6.backgroundColor = UIColor(colorLiteralRed: 142/255, green:     68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 7:
                b7 = 1
                self.Button7.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
                b8 = 0
                self.Button8.backgroundColor = color
            break
            case 8:
                b8 = 1
                self.Button8.backgroundColor = UIColor(colorLiteralRed: 142/255,    green: 68/255, blue: 173/255, alpha: 1.0)
                b2 = 0
                self.Button2.backgroundColor = color
                b3 = 0
                self.Button3.backgroundColor = color
                b4 = 0
                self.Button4.backgroundColor = color
                b5 = 0
                self.Button5.backgroundColor = color
                b6 = 0
                self.Button6.backgroundColor = color
                b7 = 0
                self.Button7.backgroundColor = color
                b1 = 0
                self.Button1.backgroundColor = color
            break
            default:
                b1 = 0
                b2 = 0
                b3 = 0
                b4 = 0
                b5 = 0
                b6 = 0
                b7 = 0
                b8 = 0
        } //switch
    } //function
    var b1 = 1, b2 = 0, b3 = 0, b4 = 0, b5 = 0, b6 = 0, b7 = 0, b8 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        seconds = 0
        self.Button2.backgroundColor = color
        self.Button3.backgroundColor = color
        self.Button4.backgroundColor = color
        self.Button5.backgroundColor = color
        self.Button6.backgroundColor = color
        self.Button7.backgroundColor = color
        self.Button8.backgroundColor = color
        self.labelprove.textColor = UIColor.cyan
        self.Button1.backgroundColor = UIColor(colorLiteralRed: 142/255, green: 68/255, blue: 173/255, alpha: 1.0)//comenzar WISTERIA
        self.highScoreLabel.text = String(highScore)
        if(timerIsOn == false){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(_ndViewController.updateTimer)), userInfo: nil, repeats: true)
            timerIsOn = true
        }
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Button1(_ sender: Any) {
        if(b1 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    } //button
    @IBAction func Button2(_ sender: Any) {
        if(b2 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    } // boton
    @IBAction func Button3(_ sender: Any) {
        if(b3 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }// boton
    @IBAction func Button4(_ sender: Any) {
        if(b4 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }//boton
    @IBAction func Button5(_ sender: Any) {
        if(b5 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }//boton
    @IBAction func Button6(_ sender: Any) {
        if(b6 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }//boton
    @IBAction func Button7(_ sender: Any) {
        if(b7 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }//boton
    @IBAction func Button8(_ sender: Any) {
        if(b8 == 1){
            random()
            buttons()
            highScore+=1
            self.highScoreLabel.text = String(highScore)
        }
        else {
            //si le pican a otro y luego al morado luego luego que el juego no siga
            values()
            seconds = 22
        }
    }//boton
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
} //controller
