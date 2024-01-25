//
//  LoginViewModel.swift
//  CIdemoProject
//
//  Created by Priya Sharma on 24/01/24.
//

import Foundation

class LoginViewModel : NSObject {
    
    var password = ""
    var username = ""
    
    
    func isUsernameValid(_uname : String) -> Bool{
        
        let unameTest = NSPredicate(format: "SELF MATCHES %@", "\\w{7,18}")
        return unameTest.evaluate(with: _uname)
    }
    
    func isPasswordValid(_pass : String) -> Bool{
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: _pass)
    }
    
}
