//
//  PopUpRegistrationViewController.swift
//  SolarSystem2
//
//  Created by Даниил Никулин on 08.11.2020.
//

import UIKit

class PopUpRegistrationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nextButton: UIView!
    
       override func viewDidLoad() {
           super.viewDidLoad()
           messageView.layer.cornerRadius = 24
        nextButton.layer.cornerRadius = 10
           self.view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
           
           moveIn()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
      }
       
    @IBAction func nextButtonPressed() {
        UserDataManager.dataManage.name = nameTextField.text!
        UserDataManager.dataManage.pass = passwordTextField.text!
        
        moveOut()
    }
    
    
    func moveIn() {
           self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
           self.view.alpha = 0.0
           
           UIView.animate(withDuration: 0.24) {
               self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
               self.view.alpha = 1.0
           }
       }
       
       func moveOut() {
           UIView.animate(withDuration: 0.24, animations: {
               self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
               self.view.alpha = 0.0
           }) { _ in
               self.view.removeFromSuperview()
           }
       }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 50
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
}

extension PopUpRegistrationViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            nextButtonPressed()
        }
        return true
    }
}

