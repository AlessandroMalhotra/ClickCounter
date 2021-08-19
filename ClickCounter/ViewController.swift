//
//  ViewController.swift
//  ClickCounter
//
//  Created by Alessandro Malhotra on 13/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
    }
    @IBAction func buttonClicked() {
     self.count += 1
     self.label.text = "\(self.count)"
     self.label2.text = "\(self.count)"
     self.view.backgroundColor = UIColor.green
         
     }
 
    @IBAction func decrementButtonClicked() {
     self.count -= 1
     self.label.text = "\(self.count)"
     self.label2.text = "\(self.count)"
     self.view.backgroundColor = UIColor.red
         
     }
}
