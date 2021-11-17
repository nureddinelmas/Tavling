

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    var number = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func buttonPressed(_ sender: UIButton) {
        number = Int.random(in: 0...9)
        myLabel.text = "Number är \(number)"
    
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as casting
            
            let destinationVC = segue.destination as! SecondVCViewController
            destinationVC.myRandom = String(number)
            
        }
    }
}

