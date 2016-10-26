//
//  ViewController.swift
//  FacebookLogin
//
//  Created by Ziad Ali on 10/25/16.
//  Copyright © 2016 ZiadCorp. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    @IBOutlet var loginButtonView: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonView.delegate = self
        loginButtonView.readPermissions = ["public_profile", "email", "user_friends"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("Logging in")
        if error != nil {
            print("Error: \(error.localizedDescription)")
            return
        }
        else {
            let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
                if error != nil {
                    print(error?.localizedDescription)
                    return
                }
                else {
                    print("User logged in with Facebook")
                }
            })
        }
    }

    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        try! FIRAuth.auth()?.signOut()
        print("User logged out")
    }
}

