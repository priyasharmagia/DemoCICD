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
    private var employeesViewModel : EmployeesViewModel!

    
    var name : String = ""
    
    func uiUpdate()  {
        self.employeesViewModel = EmployeesViewModel()
        self.employeesViewModel.bindEmployeeViewModelToController = {
            //self.updateDataSource()
            
            
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        welcomeLabel.text = "Hello \(name), how are you ?"
    }
    
    
    
}
