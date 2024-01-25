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
    
    let obj = LoginViewModel()
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
  
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        
        if nameTextFiled.text?.isEmpty == true {
            let alert = UIAlertController(title: "Alert", message: "Please enter your name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
            }))
            self.present(alert, animated: true, completion: nil)
            
        }else if obj.isUsernameValid(_uname: nameTextFiled.text!) == false{
            let alert = UIAlertController(title: "Alert", message: "Please enter valid username", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
            }))
            self.present(alert, animated: true, completion: nil)
        }else if passwordTextField.text?.isEmpty == true {
            let alert = UIAlertController(title: "Alert", message: "Please enter password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
            }))
            self.present(alert, animated: true, completion: nil)
            
        }else if obj.isPasswordValid(_pass: passwordTextField.text!) == false{
            let alert = UIAlertController(title: "Alert", message: "Please enter valid password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
            }))
            self.present(alert, animated: true, completion: nil)
        }else {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC
            vc?.name = nameTextFiled.text ?? ""
            self.navigationController?.pushViewController(vc!, animated: true)
            
        }
        
    }


}
