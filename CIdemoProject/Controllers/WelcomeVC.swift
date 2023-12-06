//
//  WelcomeVC.swift
//  CIdemoProject
//
//  Created by Priya Sharma on 05/12/23.
//

import Foundation
import UIKit

class WelcomeVC: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        welcomeLabel.text = "Hello \(name), how are you ? updationg jhdvahjgbsa testing somethinngnfbsjfbsjhfgdjhgfdjhgfjdx"
    }
    
}
