import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var showInfoTextView: UITextView!
    
    public var params: Params?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showInfoTextView.text = params?.name
        showInfoTextView.text = params?.pass
        showInfoTextView.text = params?.phone
        
    }
    

}
