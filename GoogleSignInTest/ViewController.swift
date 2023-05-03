//
//  ViewController.swift
//  GoogleSignInTest
//
//  Created by AnnKangHo on 2023/05/03.
//

import UIKit
import GoogleSignInSwift
import GoogleSignIn

class ViewController: UIViewController {
    private let googleSigninButton = GIDSignInButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(googleSigninButton)
        googleSigninButton.translatesAutoresizingMaskIntoConstraints = false
        googleSigninButton.addAction(.init(handler: { [weak self] _ in
            guard let self = self else { return }
            GIDSignIn.sharedInstance.signIn(withPresenting: self) { result, error in
                if let error {
                    print(error.localizedDescription)
                    return
                }
                
            }
        }), for: .touchUpInside)
        googleSigninButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleSigninButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    } 
    
    func signInGoogle() {
        
    }
}
