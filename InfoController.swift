import UIKit

class InfoController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        d.selected = d.names.firstIndex(of: d.top10[d.selected])!
        
        name.text = d.names[d.selected]
        message.text = d.messages[d.selected]
        image.image = UIImage(named: d.names[d.selected])
        
    }
    
    @IBAction func home2Clicked(_ sender: Any) {
        
        if let presentedViewController = UIApplication.shared.keyWindow?.rootViewController?.presentedViewController {
            presentedViewController.dismiss(animated: true, completion: nil)
            presentedViewController.dismiss(animated: true, completion: nil)
            presentedViewController.dismiss(animated: true, completion: nil)
        }
        
    }
    
    @IBAction func backClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "goBack", sender: self)
        
    }
    
}
