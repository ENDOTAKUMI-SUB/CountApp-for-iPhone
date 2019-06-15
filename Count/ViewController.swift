//
//  ViewController.swift
//  Count
//
//  Created by 遠藤拓巳 on 2019/06/15.
//  Copyright © 2019 Endo Takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        
        color(number: number)
    }
    
    @IBAction func mainasu(){
        number = number - 1
        label.text = String(number)
        
        color(number: number)
    }
    
    @IBAction func kakeru(){
        number = number * 2
        label.text = String(number)
        
        color(number: number)
    }
    
    @IBAction func waru(){
        number = number / 2
        label.text = String(number)
        
        color(number: number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        
        color(number: number)
    }
    
    func color(number :Int){
        if number >= 10 {
            label.textColor = UIColor(red: 65/255, green: 105/255, blue: 255/255, alpha: 1.0)
        }else if number <= -10 {
             label.textColor = UIColor(red: 178/255, green: 34/255, blue: 34/255, alpha: 1.0)
        }else{
            label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        }
    }
    
    
}

