//
//  ViewController.swift
//  计算器测试
//
//  Created by 国东东 on 2018/10/11.
//  Copyright © 2018年 国东东. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var temp = 0
    var judge = 0
    var flag = 0
    
    
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    
    
    
    var re = 0
    
    
    @IBAction func button_1(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "1"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"1"
        }
    }
    
    
    @IBAction func button_2(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "2"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"2"
        }
    }
    
    
    @IBAction func button_3(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "3"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"3"
        }
    }
    
    
    @IBAction func button_4(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "4"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"4"
        }
    }
    
    
    @IBAction func button_5(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "5"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"5"
        }
    }
    
    
    @IBAction func button_6(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "6"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"6"
        }
    }
    
    
    @IBAction func button_7(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "7"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"7"
        }
    }
    
    
    @IBAction func button_8(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "8"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"8"
        }
    }
    
    
    @IBAction func button_9(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "9"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"9"
        }
    }
    
    
    @IBAction func button_0(_ sender: Any) {
        if re == 1{
            caculaterDisplay.text = "0"
        }else{
            caculaterDisplay.text = caculaterDisplay.text!+"0"
        }
    }
    
    
    @IBAction func button_delete(_ sender: Any) {
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_sum(_ sender: Any) {
        var sum = 0
        switch flag {
        case 1:
            sum = temp + Int(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            
        case 2:
            sum = temp - Int(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            
        case 3:
            sum = temp * Int(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            
        case 4:
            if caculaterDisplay.text=="0"
            {
                break
            }else{
                sum = temp / Int(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
            }
            
        default:
            break
        }
    }
    
    
    @IBAction func button_dot(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "."
        judge = 1
    }
    
    @IBAction func button_add(_ sender: Any) {
        flag = 1
        temp = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_minus(_ sender: Any) {
        flag = 2
        temp = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_multiply(_ sender: Any) {
        flag = 3
        temp = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_divide(_ sender: Any) {
        flag = 4
        temp = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_off(_ sender: Any) {
    }
    
    
    @IBAction func button_back(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

