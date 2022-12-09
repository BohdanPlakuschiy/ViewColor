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
    
    let maxColorValue: Float = 255.0
    let minColorValue: Float = 0.0
    var medColorValue: Float {
        return (maxColorValue - minColorValue) / 2.0 + minColorValue
    }
    var arraySlider: [UISlider] {
        return [redValueSlider, greenValueSlider, blueValueSlider, alphaValueSlider]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUpdateForSlider()
        toneControl()
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
        updateSliderValue(minColorValue)
        textValueSliders()
        toneControl()
    }
    
    @IBAction func mediumPressedButton(_ sender: Any) {
        updateSliderValue(medColorValue)
        textValueSliders()
        toneControl()
    }
    
    @IBAction func maxPressedButton(_ sender: Any) {
        updateSliderValue(maxColorValue)
        textValueSliders()
        toneControl()
    }
    
    func toneControl() {
        let redValue = CGFloat(redValueSlider.value / redValueSlider.maximumValue)
        let greenValue = CGFloat(greenValueSlider.value / greenValueSlider.maximumValue)
        let blueValue = CGFloat(blueValueSlider.value / blueValueSlider.maximumValue)
        let alphaValue = CGFloat(alphaValueSlider.value / alphaValueSlider.maximumValue)
        vievColor.backgroundColor = UIColor(red: redValue,
                                            green: greenValue,
                                            blue: blueValue,
                                            alpha: alphaValue)
    }
    
    func textValueSliders() {
        redValueText.text = "\(Int(redValueSlider.value))"
        greenValueText.text = "\(Int(greenValueSlider.value))"
        blueValueText.text = "\(Int(blueValueSlider.value))"
        alphaValueText.text = "\(Int(alphaValueSlider.value))"
    }
    
    func updateSliderValue(_ value: Float) {
        for item in arraySlider {
            item.value = value
        }
        
    }
    
    func setupBoudaryValue(for slider: UISlider) {
        slider.minimumValue = minColorValue
        slider.maximumValue = maxColorValue
    }
    
    func initUpdateForSlider() {
        for slider in arraySlider {
            setupBoudaryValue(for: slider)
        }
        
        updateSliderValue(medColorValue)
        textValueSliders()
    }
    
}

