//
//  ViewController.swift
//  CIdemoProject
//
//  Created by Priya Sharma on 02/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        print("Clicked Submit Button")
    }


}

