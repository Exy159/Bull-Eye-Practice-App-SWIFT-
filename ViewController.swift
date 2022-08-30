//
//  ViewController.swift
//  Bulls eye
//
//  Created by Eric Kennedy on 8/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider! // interface builder outlet connects to story board
        var currentValue: Int = 50 // value of slider upon load of VC (user sees no screen at this point)
        var targetValue = 0       // empty value for target value
    
    
    override func viewDidLoad() { // screen has loaded
        super.viewDidLoad()
        currentValue = lroundf(slider.value) // value of slider 
                                                                // Do any additional setup after loading the view.
        targetValue = Int.random(in: 1...100) // Random number generated for user
    }
    
    @IBAction func showAlert() { //displaying the randon number
        
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
            title: "Hello, World!",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
@IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}
