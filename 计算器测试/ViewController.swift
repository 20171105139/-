//
//  ViewController.swift
//  计算器测试
//
//  Created by 国东东 on 2018/10/18.
//  Copyright © 2018年 国东东. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var temp : Double = 0
    var temp1 = 0
    var judge = 0
    var flag = 0
    var add = 0
    var sum = 0.0
    var sum1 : Double = 0
    var i = 0
    
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
        switch flag {
        case 1:
            sum = sum + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            i = 0
        case 2:
            sum = temp - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            
        case 3:
            sum = temp * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            
        case 4:
            if caculaterDisplay.text=="0"
            {
                break
            }else{
                sum = temp / Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
            }
            
        default:
            break
        }
        
        caculaterDisplay.text = String()
        if judge == 0 {
            caculaterDisplay.text = String(format:"%.1f",sum)
        }else {
            caculaterDisplay.text = String(format:"%d",sum)
        }
    }
    
    @IBAction func button_dot(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "."
        judge = 0
    }
    
    @IBAction func button_add(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 1
    }
    
    
    @IBAction func button_minus(_ sender: Any) {
        flag = 2
        temp -= Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_multiply(_ sender: Any) {
        flag = 3
        temp *= Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func button_divide(_ sender: Any) {
        flag = 4
        temp /= Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func change(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if temp==0{
            caculaterDisplay.text = "\(temp)"
        }else if temp>0{
            temp = -temp
            caculaterDisplay.text = "\(temp)"
        }
    }
    
    @IBAction func percent(_ sender: Any) {
        let count = Double(caculaterDisplay.text!)!
        let count2 = count * 0.01
        caculaterDisplay.text = String(count2)
        re = 0
    }
    
    
    @IBAction func square(_ sender: Any) {
        let count3 = Double(caculaterDisplay.text!)!
        let count4 = count3 * count3
        caculaterDisplay.text = String(count4)
    }
    
    @IBAction func cube(_ sender: Any) {
        let count5 = Double(caculaterDisplay.text!)!
        let count6 = count5 * count5 * count5
        caculaterDisplay.text = String(count6)
    }
    
    @IBAction func radical(_ sender: Any) {
        let count7 = Double(caculaterDisplay.text!)!
        sum1 = Double(sqrt(count7))
        caculaterDisplay.text = String(sum1)
    }
    
    @IBAction func left(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "("
    }
    
    @IBAction func right(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + ")"
    }
    
    @IBAction func back(_ sender: Any) {
        if caculaterDisplay.text == ""{
            caculaterDisplay.text = ""
        }else{
            temp1 = Int(caculaterDisplay.text!)!
            temp1 /= 10
            if temp1 != 0{
                caculaterDisplay.text = "\(temp1)"
            }else{
                caculaterDisplay.text = ""
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

