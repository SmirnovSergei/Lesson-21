//
//  ViewController.swift
//  Lesson-21
//
//  Created by Сергей Смирнов on 07.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let textLabel = UILabel()
    private let stackView = UIStackView()
    private let shadowView = ShadowView(imageName: raccoonData.getCurrentRaccoon().imageName)
    private let customButton = CustomButton(textButton: "Next raccoon", bgColor: .systemRed)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient()
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        view.addSubview(customButton)
        addAction()
        
        setupLayout()
    }
}

// MARK: - Setup View
private extension ViewController {
    func setupLabel() {
        textLabel.text = raccoonData.getCurrentRaccoon().number.formatted()
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textAlignment = .center
        textLabel.textColor = .red
    }
    func addAction() {
        let switchRaccoon = UIAction { _ in
            let nextRaccoon = raccoonData.getNextRaccoon()
            self.textLabel.text = nextRaccoon.number.formatted()
            self.shadowView.updateImage(nextRaccoon.imageName)
        }
            customButton.addAction(switchRaccoon, for: .touchUpInside)
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 20
        
        stackView.addStackViews(textLabel, shadowView)
    }
}

// MARK: - Setup Layout
private extension ViewController {
    func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        customButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            shadowView.heightAnchor.constraint(equalTo: stackView.widthAnchor),
            customButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
}

