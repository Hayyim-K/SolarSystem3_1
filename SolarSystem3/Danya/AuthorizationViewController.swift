//
//  AuthorizationViewController.swift
//  SolarSystem2
//
//  Created by Даниил Никулин on 07.11.2020.
//

import UIKit

class AuthorizationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    private let userData = User.userData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard segue.identifier == "menu" else { return }
         guard let destination = segue.destination as? MenuViewController else { return }
        destination.name = userData.username
     }
    
    @IBAction func passButtonTapped() {
        showAlertView(title: "Забыл пароль?", message: "Твой пароль: \(userData.password)")
    }
    
    @IBAction func nameButtonTapped() {
        showAlertView(title: "Забыл имя?", message: "Твоё имя: \(userData.username)")
    }
    
    @IBAction func enterButtonPressed() {
        guard
            userTextField.text == userData.username,
            passTextField.text == userData.password
            else {
            showAlertView(title: "Что-то пошло не так",
                      message: "Проверь введенные данные",
                      textField: passTextField)
            return
        }
        performSegue(withIdentifier: "menu", sender: nil)
    }

    @IBAction func aboutButtonPressed() {
        showAlertView(title: "About", message: "Приложение разработано при участии: Hayyim Vital, D.N.A., Kate Mamafitness,Vladislav Popov, helloslytherin, Artur.")
    }
    
    @IBAction func backSegue(segue: UIStoryboardSegue) {
        userTextField.text = nil
        passTextField.text = nil
    }
}

extension AuthorizationViewController {
        private func showAlertView(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Закрыть", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension AuthorizationViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
            passTextField.becomeFirstResponder()
        } else {
            enterButtonPressed()
        }
        return true
    }
}

