//
//  ViewController.swift
//  FindMyAge
//
//  Created by Abraham Lay (ID) on 8/24/19.
//  Copyright © 2019 Abraham Lay (ID). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textYearOfBirth: UITextField!
    @IBOutlet weak var labelShowAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonFIndAge(_ sender: Any) {
       runCalculation()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        runCalculation()
        return true
    }
    
    func runCalculation(){
        let intYearOfBirth = Int(textYearOfBirth.text!)
        //get current date
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let personAge = year - intYearOfBirth!
        labelShowAge.text = "Your age is \(personAge)"
    }
}

