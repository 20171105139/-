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
    var judge = false
    var flag = 0
    var add = 0
    var sum = 0.0
    var sum1 = 0
    var i = 0
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    
    
    @IBAction func button_1(_ sender: Any) {
           caculaterDisplay.text = caculaterDisplay.text!+"1"
    }
    /*
如果是result中的第一个，则直接显示该数字，如果不是，则在result.text字符串的末尾+“number”，为判断该数字是否为字符串中的第一个数字，可添加名为re的Int型变量作为判断的条件
     if re == 1{
     caculaterDisplay.text = "2"
     }else{
     caculaterDisplay.text = caculaterDisplay.text!+"2"
     }
 */
    
    @IBAction func button_2(_ sender: Any) {
           caculaterDisplay.text = caculaterDisplay.text!+"2"
    }
    
    
    @IBAction func button_3(_ sender: Any) {
           caculaterDisplay.text = caculaterDisplay.text!+"3"
    }
    
    
    @IBAction func button_4(_ sender: Any) {
           caculaterDisplay.text = caculaterDisplay.text!+"4"
    }
    
    
    @IBAction func button_5(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"5"
    }
    
    
    @IBAction func button_6(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"6"
    }
    
    
    @IBAction func button_7(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"7"
    }
    
    
    @IBAction func button_8(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"8"
    }
    
    
    @IBAction func button_9(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"9"
    }
    
    
    @IBAction func button_0(_ sender: Any) {
            caculaterDisplay.text = caculaterDisplay.text!+"0"
    }
    
    
    @IBAction func button_delete(_ sender: Any) {
        caculaterDisplay.text = ""
        judge = false
    }
    
    
    @IBAction func button_sum(_ sender: Any) {
        switch flag {
        case 1:
            if judge == true {
                sum = sum + Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            if judge == false {
                sum1 = Int(sum + Double(caculaterDisplay.text!)!)
                caculaterDisplay.text = "\(sum1)"
                i = 0
            }
            
        case 2:
            sum = sum - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            i = 0
            
        case 3:
            sum = sum * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
            i = 0
            
        case 4:
            if caculaterDisplay.text=="0"
            {
                break
            }else{
                sum = sum / Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            
        default:
            break
        }
        
       /* caculaterDisplay.text = String()
        if judge == 0 {
            caculaterDisplay.text = String(format:"%.1f",sum)
        }else {
            caculaterDisplay.text = String(format:"%d",sum)
        }*/
    }
    
    @IBAction func button_dot(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "."
        judge = true
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
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 2
    }
    
    
    @IBAction func button_multiply(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 3
    }
    
    
    @IBAction func button_divide(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        if(i == 0)
        {
            caculaterDisplay.text = ""
            sum = temp
        }
        i=i+1
        if(i == 2)
        {
            sum = sum / Double(caculaterDisplay.text!)!
            caculaterDisplay.text = ""
        }
        i = 1
        flag = 4
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
        sum1 = Int(sqrt(count7))
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

