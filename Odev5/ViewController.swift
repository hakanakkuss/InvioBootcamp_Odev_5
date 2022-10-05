import UIKit

class ViewController: UIViewController {
    
    var sayi1 = ""
    var sayi2 = ""
    var sonuc = 0
    var sonucInt = 0
    var s1 = 0
    var s2 = 0

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func clear(){
        label.text = "0"
    }
 
    @IBAction func buttons(_ sender: AnyObject) {
        label.text = (label.text!) + (String(sender.tag!))
    }
    @IBAction func clearButton(_ sender: Any) {
        clear()
    }
    @IBAction func plusButton(_ sender: Any) {
            sayi1 = label.text!
            label.text = ""
    }
    @IBAction func esittirButon(_ sender: Any) {
            sayi2 = label.text!
            s1 = Int(sayi1)!
            s2 = Int(sayi2)!
            sonuc = s1 + s2
            sonucInt = Int(sonuc)
            label.text = String(sonucInt)
    }
}

