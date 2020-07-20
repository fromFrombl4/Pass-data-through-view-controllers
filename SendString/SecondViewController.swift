import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private weak var goButton: UIButton!
    
    public var params: Params?
    
    @IBAction func pressedGoButton(_ sender: UIButton) {
        
        let thirdController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        thirdController.params = params
        
        self.present(thirdController, animated: true, completion: nil)
        
        
    }

}
