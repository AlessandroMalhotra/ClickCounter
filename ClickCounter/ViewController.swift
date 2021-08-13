//
//  ViewController.swift
//  ClickCounter
//
//  Created by Alessandro Malhotra on 13/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        let label = UILabel()
        self.label = label
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        view.addSubview(label)
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(button)
        
        // target-action
        button.addTarget(self, action: #selector(ViewController.buttonClicked), for: UIControl.Event.touchUpInside)
        
        //label2
        let label2 = UILabel()
        self.label2 = label2
        label2.frame = CGRect(x: 100, y: 100, width: 60, height: 60)
        label2.text = "0"
        
        view.addSubview(label2)
        
        // decrement button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 200, y: 300, width: 60, height: 60)
        decrementButton.setTitle("Click", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        
        view.addSubview(decrementButton)
        
        // target-action decrement button
        
        button.addTarget(self, action: #selector(ViewController.decrementButtonClicked), for: UIControl.Event.touchUpInside)
    }
    
    @objc func buttonClicked() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.green
    }
    
    @objc func decrementButtonClicked() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.red
        
    }
    

}

