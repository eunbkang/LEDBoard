//
//  ViewController.swift
//  LEDBoard
//
//  Created by Eunbee Kang on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var topBackgroundView: UIView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var colorButton: UIButton!
    @IBOutlet var boardLabel: UILabel!
    
    let colorList: [UIColor] = [.brown, .magenta, .green, .orange, .systemMint, .systemPink, .systemYellow, .purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }

    @IBAction func tappedColorButton(_ sender: UIButton) {
        setRandomLabelColor()
    }
    
    func configUI() {
        configTopBackgroundView()
        configTextField()
        configButton(sendButton)
        configButton(colorButton)
        configBoardLabel()
    }
    
    func configTopBackgroundView() {
        topBackgroundView.layer.cornerRadius = 16
        topBackgroundView.clipsToBounds = true
    }
    
    func configTextField() {
        textField.font = .preferredFont(forTextStyle: .body)
        textField.borderStyle = .none
    }
    
    func configButton(_ button: UIButton) {
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.titleLabel?.font = .preferredFont(forTextStyle: .body)
    }
    
    func configBoardLabel() {
        boardLabel.text = "Hello Swift"
        boardLabel.font = .systemFont(ofSize: 120, weight: .bold)
        setRandomLabelColor()
    }
    
    func setRandomLabelColor() {
        let color = colorList.randomElement()!
        boardLabel.textColor = color
    }
}

