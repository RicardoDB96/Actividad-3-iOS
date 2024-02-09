//
//  ViewController.swift
//  actividad3
//
//  Created by Alumno on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    // Oulets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redSlider.value = 1.0
        greenSlider.value = 1.0
        blueSlider.value = 1.0
        alphaSlider.value = 1.0
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        updateLabelAndColor()
    }
    
    func updateLabelAndColor() {
        redLabel.text =  String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        alphaLabel.text = String(alphaSlider.value)
        
        let color = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        image.backgroundColor = color
        image.alpha = CGFloat(alphaSlider.value)
    }

}

