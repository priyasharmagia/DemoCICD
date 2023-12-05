//
//  LoginVC.swift
//  CIdemoProject
//
//  Created by Priya Sharma on 05/12/23.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }


}
