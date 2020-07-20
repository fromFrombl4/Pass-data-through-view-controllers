import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet private weak var nexButton: UIButton!
    
    public var params: Params?

    @IBAction func pressedNextButton(_ sender: UIButton) {
        
        let fourthController = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        
        fourthController.params = params
        
        self.present(fourthController, animated: true, completion: nil)
    }

}
