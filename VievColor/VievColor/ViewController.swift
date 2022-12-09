//
//  ViewController.swift
//  VievColor
//
//  Created by Богдан Плакущий on 09.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redValueText: UILabel!
    @IBOutlet weak var greenValueText: UILabel!
    @IBOutlet weak var blueValueText: UILabel!
    @IBOutlet weak var alphaValueText: UILabel!
    @IBOutlet weak var vievColor: UIView!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    @IBOutlet weak var alphaValueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValueSlider.maximumValue = 255
        greenValueSlider.maximumValue = 255
        blueValueSlider.maximumValue = 255
        alphaValueSlider.maximumValue = 255
        redValueSlider.minimumValue = 0
        greenValueSlider.minimumValue = 0
        blueValueSlider.minimumValue = 0
        alphaValueSlider.minimumValue = 0
        startValueSlider()
        textValueSliders()
    }

    @IBAction func redSlider(_ sender: Any) {
        textValueSliders()
        toneControl()
    }
    
    @IBAction func greenSlider(_ sender: Any) {
        textValueSliders()
        toneControl()
    }
    
    @IBAction func blueSlider(_ sender: Any) {
        textValueSliders()
        toneControl()
        
    }
    
    @IBAction func alphaSlider(_ sender: Any) {
        textValueSliders()
        toneControl()
    }
    
    @IBAction func minPressedButton(_ sender: Any) {
        redValueSlider.value = redValueSlider.minimumValue
        greenValueSlider.value = greenValueSlider.minimumValue
        blueValueSlider.value = blueValueSlider.minimumValue
        alphaValueSlider.value = alphaValueSlider.minimumValue
        textValueSliders()
        toneControl()
    }
    
    @IBAction func mediumPressedButton(_ sender: Any) {
        startValueSlider()
        textValueSliders()
        toneControl()
    }
    
    @IBAction func maxPressedButton(_ sender: Any) {
        redValueSlider.value = redValueSlider.maximumValue
        greenValueSlider.value = greenValueSlider.maximumValue
        blueValueSlider.value = blueValueSlider.maximumValue
        alphaValueSlider.value = alphaValueSlider.maximumValue
        textValueSliders()
        toneControl()
    }
    
    func toneControl() {
        vievColor.backgroundColor = UIColor(red: CGFloat(redValueSlider.value / redValueSlider.maximumValue),
                                            green: CGFloat(greenValueSlider.value / greenValueSlider.maximumValue),
                                            blue: CGFloat(blueValueSlider.value / blueValueSlider.maximumValue),
                                            alpha: CGFloat(alphaValueSlider.value / alphaValueSlider.maximumValue))
    }
    
    func startValueSlider() {
                redValueSlider.value = (redValueSlider.maximumValue - redValueSlider.minimumValue) / 2 + redValueSlider.minimumValue
                greenValueSlider.value = (greenValueSlider.maximumValue - greenValueSlider.minimumValue) / 2 +  greenValueSlider.minimumValue
                blueValueSlider.value = (blueValueSlider.maximumValue - blueValueSlider.minimumValue) / 2 + redValueSlider.minimumValue
                alphaValueSlider.value = (alphaValueSlider.maximumValue - alphaValueSlider.minimumValue) / 2 + alphaValueSlider.minimumValue
    }
    
    func textValueSliders() {
        redValueText.text = "\(Int(redValueSlider.value))"
        greenValueText.text = "\(Int(greenValueSlider.value))"
        blueValueText.text = "\(Int(blueValueSlider.value))"
        alphaValueText.text = "\(Int(alphaValueSlider.value))"
    }
}

