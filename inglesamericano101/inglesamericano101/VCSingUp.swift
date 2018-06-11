//
//  VCSingUp.swift
//  inglesamericano101
//
//  Created by Antonio Cortes on 6/11/18.
//  Copyright © 2018 antoniocortes. All rights reserved.
//

import UIKit
import Firebase
class VCSingUp: UIViewController {
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_pasword: UITextField!
    @IBOutlet weak var txt_confirmation_password: UITextField!
    @IBOutlet weak var btn_singUp: UIButton!
    @IBAction func singUp(_ sender: Any) {
    guard let email = txt_email.text, let password = txt_pasword.text, let password2 = txt_confirmation_password.text else { return }
        if password == password2{
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil{
                
                return
            }
        }
        }else{
            //show error
        }
    }
    
    
}

extension VCSingUp{
    override func viewDidLoad() { super.viewDidLoad() }
}
