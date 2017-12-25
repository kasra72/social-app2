//
//  ViewController.swift
//  social-app2
//
//  Created by kasra solati on 12/20/17.
//  Copyright © 2017 kasra solati. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var passField: textField!
    @IBOutlet weak var UserField: textField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FacebookBtnPressed(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("unable to Auth with facebook")
            }else if result?.isCancelled == true {
                print("user cancelled Auth with FB")
            }else {
                print("successfully Auth with FB")
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.FirebaseAuth(credential)
            }
        }
    }
    func FirebaseAuth(_ credential:AuthCredential){
        Auth.auth().signIn(with: credential,completion : { (user, error) in
            if error != nil{
                print("unable to Auth with Firebase")
            }else{
                print("successfully Auth With Firebase")
            }
        })
    }
    
    @IBAction func SignInTapped(_ sender: Any) {
        if let email = UserField.text , let pass = passField.text {
            Auth.auth().signIn(withEmail: email, password: pass, completion: { (user,error ) in
                if error == nil {
                    print("successfuly user email Auth")
                }else{
                    Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                        if error != nil {
                            print("unable to auth with firebase")
                        }else{
                            print("suceesfully auth with firebase")

                        }
                    })
                }
                
            })
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

