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
    var temp1 : Int = 0
    var temp2 : Int = 0
    var judge = false
    var flag : Int = 0
    var flag1 : Int = 0
    var add : Int = 0
    var sum : Double = 0
    var sum1 : Int = 0
    var i : Int = 0
    var calFlag : Int = 0
    let count2 : Double = 0
    var caculatorOperator : Int = 0
    
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    
    
    @IBAction func button_1(_ sender: Any){
    if calFlag == 1 {
           caculaterDisplay.text = caculaterDisplay.text!+"1"
    }
    else {
        caculaterDisplay.text = "1"
        }
        calFlag = 1
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
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"2"
        }
        else {
            caculaterDisplay.text = "2"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_3(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"3"
        }
        else {
            caculaterDisplay.text = "3"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_4(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"4"
        }
        else {
            caculaterDisplay.text = "4"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_5(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"5"
        }
        else {
            caculaterDisplay.text = "5"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_6(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"6"
        }
        else {
            caculaterDisplay.text = "6"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_7(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"7"
        }
        else {
            caculaterDisplay.text = "7"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_8(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"8"
        }
        else {
            caculaterDisplay.text = "8"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_9(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"9"
        }
        else {
            caculaterDisplay.text = "9"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_0(_ sender: Any) {
        if calFlag == 1 {
            caculaterDisplay.text = caculaterDisplay.text!+"0"
        }
        else {
            caculaterDisplay.text = "0"
        }
        calFlag = 1
    }
    
    
    @IBAction func button_delete(_ sender: Any) {
        caculaterDisplay.text = ""
        judge = false
        caculatorOperator = 0
        temp = 0
        temp1 = 0
    }
    
    
    @IBAction func button_sum(_ sender: Any) {
        switch flag {
        case 1:
            if judge == true{
                if caculatorOperator == 1{
                    sum = sum + Double(caculaterDisplay.text!)!
                    caculaterDisplay.text = "\(sum)"
                    //i = 0
                    //sum = 0
                }
                calFlag = 2
            }
            if judge == false{
                if caculatorOperator == 1{
                    sum1 = Int(sum + Double(caculaterDisplay.text!)!)
                    caculaterDisplay.text = "\(sum1)"
                    //i = 0
                    
                }
                calFlag = 2
            }
            /*
            if judge == true {
                sum = sum + Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            if judge == false {
                sum1 = Int(sum + Double(caculaterDisplay.text!)!)
                caculaterDisplay.text = "\(sum1)"
                i = 0
            }*/
            
        case 2:
            if judge == true{
                if caculatorOperator == 1{
                    sum = sum - Double(caculaterDisplay.text!)!
                    caculaterDisplay.text = "\(sum)"
                    i = 0
                }
                calFlag = 2
            }
            if judge == false{
                if caculatorOperator == 1{
                    sum1 = Int(sum - Double(caculaterDisplay.text!)!)
                    caculaterDisplay.text = "\(sum1)"
                    i = 0
                }
                calFlag = 2
            }
            /*
            if judge == true {
                sum = sum - Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            if judge == false {
                sum1 = Int(sum - Double(caculaterDisplay.text!)!)
                caculaterDisplay.text = "\(sum1)"
                i = 0
            }*/
            
            
        case 3:
            if judge == true{
                if caculatorOperator == 1{
                    sum = sum * Double(caculaterDisplay.text!)!
                    caculaterDisplay.text = "\(sum)"
                    i = 0
                }
                calFlag = 2
            }
            if judge == false{
                if caculatorOperator == 1{
                    sum1 = Int(sum * Double(caculaterDisplay.text!)!)
                    caculaterDisplay.text = "\(sum1)"
                    i = 0
                }
                calFlag = 2
            }
            /*
            if judge == true {
                sum = sum * Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            if judge == false {
                sum1 = Int(sum * Double(caculaterDisplay.text!)!)
                caculaterDisplay.text = "\(sum1)"
                i = 0
            }
 */
            
            
        case 4:
            if caculaterDisplay.text=="0"
            {
                break
            }
            if judge == true{
                if caculatorOperator == 1{
                    sum = sum / Double(caculaterDisplay.text!)!
                    caculaterDisplay.text = "\(sum)"
                    i = 0
                }
                calFlag = 2
            }
            if judge == false{
                if caculatorOperator == 1{
                    sum1 = Int(sum / Double(caculaterDisplay.text!)!)
                    caculaterDisplay.text = "\(sum1)"
                    i = 0
                }
                calFlag = 2
            }
            /*
            if caculaterDisplay.text=="0"
            {
                break
            }
            if judge == true {
                sum = sum / Double(caculaterDisplay.text!)!
                caculaterDisplay.text = "\(sum)"
                i = 0
            }
            if judge == false {
                sum1 = Int(sum / Double(caculaterDisplay.text!)!)
                caculaterDisplay.text = "\(sum1)"
                i = 0
            }*/
            
        default:
            break
        }
        
    }
    
    @IBAction func button_dot(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "."
        judge = true
    }
    
    @IBAction func button_add(_ sender: Any) {
        if caculatorOperator == 1{
            if judge == true{
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

            if judge == false{
                temp1 = Int(caculaterDisplay.text!)!
                if(i == 0)
                {
                    caculaterDisplay.text = ""
                    sum1 = temp1
                }
                i=i+1
                if(i == 2)
                {
                    sum1 = sum1 + Int(caculaterDisplay.text!)!
                    caculaterDisplay.text = ""
                }
                i = 1
                flag = 1
                

        }
        }
        calFlag = 2
        caculatorOperator = 1
        //temp = Double(caculaterDisplay.text!)!
        //temp1 = Int(caculaterDisplay.text!)!
        //calFlag = 2
        //caculatorOperator = 1
        //flag = 1
        /*
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
 */
    
    }
    
    @IBAction func button_minus(_ sender: Any) {
        if caculatorOperator == 1{
            if judge == true{
                flag = 2
                calFlag = 2
                if i == 0{
                    sum = Double(caculaterDisplay.text!)!
                    i = 1
                }else{
                    switch flag1 {
                    case 1:
                        sum += Double(caculaterDisplay.text!)!
                        break
                    case 2:
                        sum -= Double(caculaterDisplay.text!)!
                        break
                    case 3:
                        sum *= Double(caculaterDisplay.text!)!
                        break
                    case 4:
                        sum /= Double(caculaterDisplay.text!)!
                        break
                    default:
                        break
                    }
                }
                caculaterDisplay.text = "\(sum)"
                flag1 = 2

            }
            if judge == false{
                flag = 2
                calFlag = 2
                if i == 0{
                    sum1 = Int(caculaterDisplay.text!)!
                    i = 1
                }else{
                    switch flag1 {
                    case 1:
                        sum1 += Int(caculaterDisplay.text!)!
                        break
                    case 2:
                        sum1 -= Int(caculaterDisplay.text!)!
                        break
                    case 3:
                        sum1 *= Int(caculaterDisplay.text!)!
                        break
                    case 4:
                        sum1 /= Int(caculaterDisplay.text!)!
                        break
                    default:
                        break
                    }
                }
                caculaterDisplay.text = "\(sum1)"
                flag1 = 2

        }
        }
        //temp = Double(caculaterDisplay.text!)!
        //temp1 = Int(caculaterDisplay.text!)!
        //calFlag = 2
        //caculatorOperator = 1
        //flag = 2
        /*
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
 */
        }
    
    
    @IBAction func button_multiply(_ sender: Any) {
        if caculatorOperator == 1{
            if judge == true{
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
            if judge == false{
                temp1 = Int(caculaterDisplay.text!)!
                if(i == 0)
                {
                    caculaterDisplay.text = ""
                    sum1 = temp1
                }
                i=i+1
                if(i == 2)
                {
                    sum1 = sum1 * Int(caculaterDisplay.text!)!
                    caculaterDisplay.text = ""
                }
                i = 1
                flag = 3

            }
        }
        //temp = Double(caculaterDisplay.text!)!
        //temp1 = Int(caculaterDisplay.text!)!
        calFlag = 2
        caculatorOperator = 1
        //flag = 3
        /*
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
        flag = 3*/
    }
    
    
    @IBAction func button_divide(_ sender: Any) {
        if caculatorOperator == 1{
            if judge == true{
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
            if judge == false{
                temp1 = Int(caculaterDisplay.text!)!
                if(i == 0)
                {
                    caculaterDisplay.text = ""
                    sum1 = temp1
                }
                i=i+1
                if(i == 2)
                {
                    sum1 = sum1 / Int(caculaterDisplay.text!)!
                    caculaterDisplay.text = ""
                }
                i = 1
                flag = 4

            }
        }
        //temp = Double(caculaterDisplay.text!)!
        //temp1 = Int(caculaterDisplay.text!)!
        calFlag = 2
        caculatorOperator = 1
        //flag = 4
        /*
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
 */
    }
    
    
    @IBAction func change(_ sender: Any) {
        if judge == true{
            temp = Double(caculaterDisplay.text!)!
            if temp==0{
                caculaterDisplay.text = "\(temp)"
            }else if temp>0{
                temp = -temp
                caculaterDisplay.text = "\(temp)"
            }
        }
        if judge == false{
            temp2 = Int(caculaterDisplay.text!)!
            if temp2==0{
                caculaterDisplay.text = "\(temp2)"
            }else if temp2>0{
                temp2 = -temp2
                caculaterDisplay.text = "\(temp2)"
            }
        }
    }
    
    @IBAction func percent(_ sender: Any) {
            let count = Double(caculaterDisplay.text!)!
            let count2 = count * 0.01
            caculaterDisplay.text = String(count2)
    }
    
    @IBAction func square(_ sender: Any) {
        if judge == true{
            let count3 = Double(caculaterDisplay.text!)!
            let count4 = count3 * count3
            caculaterDisplay.text = String(count4)
        }
        if judge == false{
            let count3 = Int(caculaterDisplay.text!)!
            let count4 = count3 * count3
            caculaterDisplay.text = String(count4)
        }
    }
    
    @IBAction func cube(_ sender: Any) {
        if judge == true{
            let count5 = Double(caculaterDisplay.text!)!
            let count6 = count5 * count5 * count5
            caculaterDisplay.text = String(count6)
        }
        if judge == false{
            let count5 = Int(caculaterDisplay.text!)!
            let count6 = count5 * count5 * count5
            caculaterDisplay.text = String(count6)
        }
        
    }
    
    @IBAction func radical(_ sender: Any) {
        if judge == true{
            let count7 = Double(caculaterDisplay.text!)!
            sum = Double(sqrt(count7))
            caculaterDisplay.text = String(sum)
        }
        if judge == false{
            let count7 = Double(caculaterDisplay.text!)!
            sum1 = Int(sqrt(count7))
            caculaterDisplay.text = String(sum1)
        }
        
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
        caculaterDisplay.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }


}

