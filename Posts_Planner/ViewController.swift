//
//  ViewController.swift
//  Posts_Planner
//
//  Created by Vlad Klunduk on 16/11/2023.
//

import UIKit
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let token = AccessToken.current, !token.isExpired {
                // User is logged in, do work such as go to next view controller.
        } else {
            let loginButton = FBLoginButton()
            loginButton.delegate = self
            loginButton.center = view.center
            view.addSubview(loginButton)
            loginButton.permissions = ["public_profile", "email"]
        }

    }
}

extension ViewController: LoginButtonDelegate {
    func loginButton(_ loginButton: FBSDKLoginKit.FBLoginButton, didCompleteWith result: FBSDKLoginKit.LoginManagerLoginResult?, error: Error?) {
        <#code#>
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginKit.FBLoginButton) {
        <#code#>
    }
    
    
}
