//
//  ViewController.swift
//  HelloWorld3
//
//  Created by Evgeniy Morozov on 01.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private weak var screenView: UIView!
    
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    
    @IBOutlet private weak var howMuchRedLabel: UILabel!
    @IBOutlet private weak var howMuchGreenLabel: UILabel!
    @IBOutlet private weak var howMuchBlueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
        setupSlider()
        setColorView()
    }
    
    // MARK: - IB Actions
    @IBAction private func redSliderAction() {
        howMuchRedLabel.text = (round(redSlider.value * 100) / 100).formatted()
        setColorView()
    }
    
    @IBAction private func greenSliderAction() {
        howMuchGreenLabel.text = (round(greenSlider.value * 100) / 100).formatted()
        setColorView()
    }
    
    @IBAction private func blueSliderAction() {
        howMuchBlueLabel.text = (round(blueSlider.value * 100) / 100).formatted()
        setColorView()
    }
}

// MARK: - Setup UI
private extension ViewController {
    func setupMainView() {
        screenView.layer.cornerRadius = 15
    }
    
    func setColorView() {
        let red: CGFloat = CGFloat(redSlider.value)
        let green: CGFloat = CGFloat(greenSlider.value)
        let blue: CGFloat = CGFloat(blueSlider.value)
        screenView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func setupSlider() {
        let startColor = (round(redSlider.value * 100) / 100).formatted()
        howMuchRedLabel.text = startColor
        howMuchGreenLabel.text = startColor
        howMuchBlueLabel.text = startColor
    }
}
