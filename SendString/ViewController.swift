import UIKit


struct Params {
    var name: String
    var pass: String
    var phone: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var pressButton: UIButton!
    
    private var params = Params(name: "", pass: "", phone: "")
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameField.delegate = self
        phoneNumberField.delegate = self
        passwordField.delegate = self
        
        
    }
       
    @IBAction func pressedButton(_ sender: UIButton) {
        let secondController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondController.params = params
        self.present(secondController, animated: true, completion: nil)
        
        checkShouldEnableGoButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func checkShouldEnableGoButton(){
        
        if !params.name.isEmpty && !params.pass.isEmpty && !params.phone.isEmpty {
            
            pressButton.isEnabled = true
        } else {
            pressButton.isEnabled = false
        }
                
    }
    
}


extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let text = textField.text else {
            return
        }
        
        if textField == usernameField {
            params.name = text
        } else if textField == passwordField {
            params.pass == text
        } else if textField == phoneNumberField{
            params.phone == text
        }
    }
}

