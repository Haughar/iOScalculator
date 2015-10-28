//
//  ViewController.swift
//  Calculator
//
//  Created by Alison Rose Haugh on 10/22/15.
//  Copyright © 2015 Alison Haugh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addition: UIButton!
    @IBOutlet weak var subtraction: UIButton!
    @IBOutlet weak var multiplication: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var modulous: UIButton!
    @IBOutlet weak var average: UIButton!
    @IBOutlet weak var count: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var allClear: UIButton!
    @IBOutlet weak var equals: UIButton!
    var newNumInput : String?;
    var numberInput = [Int]();
    var opInput = [String]();
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newNumInput = "";
        one.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        two.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        three.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        four.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        five.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        six.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        seven.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        eight.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        nine.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        zero.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        addition.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        subtraction.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        multiplication.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        division.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        modulous.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        average.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        count.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        equals.addTarget(self, action:"addInput:", forControlEvents: .TouchUpInside);
        clear.addTarget(self, action:"clearCurrentInput:", forControlEvents: .TouchUpInside);
        allClear.addTarget(self, action:"clearAll:", forControlEvents: .TouchUpInside);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func evaluate() {
        var answer = numberInput[0];
        for (var i = 0; i < opInput.count; i++) {
            if (opInput[i] == "+") {
                answer += numberInput[i+1];
            } else if (opInput[i] == "-") {
                answer -= numberInput[i+1];
            } else if (opInput[i] == "x") {
                answer *= numberInput[i+1];
            } else if (opInput[i] == "/") {
                answer /= numberInput[i+1];
            } else if (opInput[i] == "count") {
                answer += numberInput.count;
            } else if (opInput[i] == "avg") {
                answer = (answer + numberInput[i+1]) / 2;
            }
        }
        opInput.removeAll();
        numberInput.removeAll();
        display.text = String(answer);
        newNumInput = String(answer);
    }
    
    @IBAction func clearAll(sender: UIButton) {
        opInput.removeAll();
        numberInput.removeAll();
        newNumInput = "";
        display.text = newNumInput;
    }
    
    @IBAction func clearCurrentInput(sender: UIButton) {
        newNumInput = "";
        display.text = newNumInput;
    }
    
    @IBAction func addInput(sender: UIButton) {
        if(sender == one) {
            newNumInput = "\(newNumInput!)1";
            display.text = newNumInput;
        } else if(sender == two) {
            newNumInput = "\(newNumInput!)2";
            display.text = newNumInput;
        } else if(sender == three) {
            newNumInput = "\(newNumInput!)3";
            display.text = newNumInput;
        } else if(sender == four) {
            newNumInput = "\(newNumInput!)4";
            display.text = newNumInput;
        } else if(sender == five) {
            newNumInput = "\(newNumInput!)5";
            display.text = newNumInput;
        } else if(sender == six) {
            newNumInput = "\(newNumInput!)6";
            display.text = newNumInput;
        } else if(sender == seven) {
            newNumInput = "\(newNumInput!)7";
            display.text = newNumInput;
        } else if(sender == eight) {
            newNumInput = "\(newNumInput!)8";
            display.text = newNumInput;
        } else if(sender == nine) {
            newNumInput = "\(newNumInput!)9";
            display.text = newNumInput;
        } else if(sender == zero) {
            newNumInput = "\(newNumInput!)0";
            display.text = newNumInput;
        } else if(sender == addition) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("+");
            newNumInput = "";
        } else if(sender == subtraction) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("-");
            newNumInput = "";
        } else if(sender == multiplication) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("*");
            newNumInput = "";
        } else if(sender == division) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("/");
            newNumInput = "";
        } else if(sender == modulous) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("%");
            newNumInput = "";
        } else if(sender == average) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("avg");
            newNumInput = "";
        } else if(sender == count) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            opInput.append("count");
        } else if(sender == equals) {
            if(newNumInput!.characters.count > 0) {
                numberInput.append(Int(newNumInput!)!);
            } else {
                numberInput.append(0);
            }
            evaluate();
        }
    }


}

