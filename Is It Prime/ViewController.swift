import UIKit

class ViewController: UIViewController {

    @IBOutlet var outputField: UILabel!
    
    @IBOutlet var primeCandidate: UITextField!
    
    @IBAction func calculateButotn(sender: AnyObject) {
        
        if primeCandidate.text.isEmpty || primeCandidate.text.toInt() == nil
        {
            return
        }
        
        var doubleVersion = Double(primeCandidate.text.toInt()!)
        var primeObject = PrimeCalculator(potentialCandidate: doubleVersion)
        
        if !primeObject.isPrime() {
            outputField.text = "That is not prime"
        } else {
            outputField.text = "That is prime"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

