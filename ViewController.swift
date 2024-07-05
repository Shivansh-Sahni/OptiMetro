import UIKit
import Darwin

public var d = Data()

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    let firstText = "Hello! I am Shiv with OptiMetro. I am here today to assist you on your quest to find the perfect metropolitan area for you to settle down in based on your preferences and your timeline."
    let secondText = "To do that, you will need to adjust the slider below to let us know how many years in the future we should calculate for. Then, you can click the button and navigate to the next page. On the next page, we will need you to adjust the sliders based on the importance of that criterion to you."
    
    var secondCheck = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        slider.value = 2.5
        
        setTextWithTypeAnimation(typedText: firstText, label: firstLabel)
        
        
    }
    
    func setTextWithTypeAnimation(typedText: String, characterDelay: TimeInterval = 5.0, label: UILabel) {
        
        var writingTask: DispatchWorkItem?
        
        writingTask = DispatchWorkItem { [weak weakSelf = label] in
            for character in typedText {
                DispatchQueue.main.async {
                    label.text!.append(character)
                }
                Thread.sleep(forTimeInterval: characterDelay/100)
            }
            if self.secondCheck == 0 {
                sleep(UInt32(2))
                self.setTextWithTypeAnimation(typedText: self.secondText, label: self.secondLabel)
                self.secondCheck = 1
            }
        }
        
        if let task = writingTask {
            let queue = DispatchQueue(label: "typespeed", qos: DispatchQoS.userInteractive)
            queue.asyncAfter(deadline: .now() + 0.05, execute: task)
        }
        
    }
    
}

extension ViewController{
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        d.n = Double(slider.value)
        
        performSegue(withIdentifier: "goToSliders", sender: self)
        
    }
    
}
