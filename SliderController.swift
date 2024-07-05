import UIKit

class SliderController: UIViewController {
    
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var slider4: UISlider!
    @IBOutlet weak var slider5: UISlider!
    @IBOutlet weak var slider6: UISlider!
    @IBOutlet weak var slider7: UISlider!
    @IBOutlet weak var slider8: UISlider!
    @IBOutlet weak var slider9: UISlider!
    @IBOutlet weak var slider10: UISlider!
    @IBOutlet weak var slider11: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        slider1.value = 5
        slider2.value = 5
        slider3.value = 5
        slider4.value = 5
        slider5.value = 5
        slider6.value = 5
        slider7.value = 5
        slider8.value = 5
        slider9.value = 5
        slider10.value = 5
        slider11.value = 5
        
    }
    
    @IBAction func resultsPressed(_ sender: Any) {
        
        let weights: [Double] = [Double(slider1.value), Double(slider2.value), Double(slider3.value), Double(slider4.value), Double(slider5.value), Double(slider6.value), Double(slider7.value), Double(slider8.value), Double(slider9.value), Double(slider10.value), Double(slider11.value)]
        
        d.weights = weights
        
        performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
}
