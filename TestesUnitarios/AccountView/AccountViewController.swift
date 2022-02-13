//
//  AccountViewController.swift
//  TestesUnitarios
//
//  Created by PJSMK on 13/02/22.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var instructionLabel: UILabel!
    var viewModel: AccountViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.shouldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
        
        instructionLabel.text = viewModel?.instructionText
        
        
        
        Provider().getJoke { jokes, Error in
            print(jokes)
        }
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
    }
}
