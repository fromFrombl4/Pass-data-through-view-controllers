import UIKit

class FourthViewController: UIViewController {
    @IBOutlet private weak var oneMoreStepButton: UIButton!
    
    public var params: Params?
    
    @IBAction func pressedOneMoreStepButton(_ sender: UIButton) {

        let fifthController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController

        fifthController.params = params
        
        self.present(fifthController, animated: true, completion: nil)
        
    }
}
