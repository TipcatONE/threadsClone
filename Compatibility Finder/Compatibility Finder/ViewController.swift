//
//  ViewController.swift
//  Compatibility Finder
//
//  Created by Никита Иголкин on 01.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var YourNameTF: UITextField!
    @IBOutlet weak var PartnerNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let s = segue.destination as? ResultViewController else{return}
        s.FirstName = YourNameTF.text
        s.SecondName = PartnerNameTF.text
    }
    @IBAction func ButtonForResult() {
        performSegue(withIdentifier: "GoToResult", sender: nil)
    }
    
}

extension ViewController:UITextFieldDelegate{

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == YourNameTF{
            PartnerNameTF.becomeFirstResponder()
        }else{
            ButtonForResult()
        }
        return true
    }
    
}
