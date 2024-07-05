import UIKit

class ResultsController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        calculateAggregate()
        
    }
    
    @IBAction func homePressed(_ sender: Any) {
        
        if let presentedViewController = UIApplication.shared.keyWindow?.rootViewController?.presentedViewController {
            presentedViewController.dismiss(animated: true, completion: nil)
            presentedViewController.dismiss(animated: true, completion: nil)
        }
        
    }
    
    func calculateRegression(data: [[Double]], addition: Double, opposite: Bool) -> [Double]{
        
        var calculated: [Double] = []
        
        for i in data {
            calculated.append(i[0] * (addition + d.n) + i[1])
        }
        
        var returnable: [Double] = []
        
        let largest = calculated.max()
        
        for i in calculated {
            if opposite == false {
                returnable.append(Double(String(format: "%.3f", i / largest!))!)
            } else {
                returnable.append(Double(String(format: "%.3f", 1 - (i / largest!)))!)
            }
        }
        
        return returnable
        
    }
    
    func calculateAggregate() {
        
        var aggregate: [[Any]] = []
        
        let crime = calculateRegression(data: d.crime, addition: 10.0, opposite: true)
        let cost = calculateRegression(data: d.housing, addition: 3.0, opposite: true)
        let income = calculateRegression(data: d.income, addition: 2.0, opposite: false)
        
        for i in 0...33 {
            let one = crime[i] * d.weights[0] + d.taxes[i] * d.weights[1] + cost[i] * d.weights[2] + d.appreciation[i] * d.weights[3] + d.walkability[i] * d.weights[4] + d.public_transportation[i] * d.weights[5]
            let two = d.climate_change[i] * d.weights[6] + d.restaurants[i] * d.weights[7] + income[i] * d.weights[8] + d.schools[i] * d.weights[9] + d.college[i] * d.weights[10]
            aggregate.append([d.names[i], one + two])
            
        }
        
        aggregate = aggregate.sorted { ($0[1] as? Double ?? 0) > ($1[1] as? Double ?? 0) }
        
        var top10: [String] = []
        
        for i in 0...9 {
            top10.append(aggregate[i][0] as! String)
        }
        
        d.top10 = top10
        
        setWinners(top10: top10)
        
    }
    
    func setWinners(top10: [String]) {
        
        button1.setTitle("1. \(top10[0])", for: .normal)
        button2.setTitle("2. \(top10[1])", for: .normal)
        button3.setTitle("3. \(top10[2])", for: .normal)
        button4.setTitle("4. \(top10[3])", for: .normal)
        button5.setTitle("5. \(top10[4])", for: .normal)
        button6.setTitle("6. \(top10[5])", for: .normal)
        button7.setTitle("7. \(top10[6])", for: .normal)
        button8.setTitle("8. \(top10[7])", for: .normal)
        button9.setTitle("9. \(top10[8])", for: .normal)
        button10.setTitle("10. \(top10[9])", for: .normal)
        
    }
    
    @IBAction func button1Clicked(_ sender: UIButton) {
        
        d.selected = 0
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        
        d.selected = 1
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        
        d.selected = 2
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        
        d.selected = 3
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button5Clicked(_ sender: UIButton) {
        
        d.selected = 4
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button6Clicked(_ sender: UIButton) {
        
        d.selected = 5
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button7Clicked(_ sender: UIButton) {
        
        d.selected = 6
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button8Clicked(_ sender: UIButton) {
        
        d.selected = 7
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button9Clicked(_ sender: UIButton) {
        
        d.selected = 8
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
    @IBAction func button10Clicked(_ sender: UIButton) {
        
        d.selected = 9
        
        performSegue(withIdentifier: "goFinal", sender: self)
        
    }
    
}
