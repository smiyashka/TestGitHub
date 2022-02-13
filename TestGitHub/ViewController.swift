//
//  ViewController.swift
//  TestGitHub
//
//  Created by Olexandra on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let labelOne = UILabel()
    let buttonLabel = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    

}

extension ViewController {
    
    func setupSubviews() {
        
        labelOne.numberOfLines = 0
        labelOne.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        labelOne.textColor = .black
        labelOne.textAlignment = .center
        view.addSubview(labelOne)
        
        buttonLabel.setTitle("Press", for: .normal)
        buttonLabel.backgroundColor = .systemGray
        buttonLabel.setTitleColor(.systemBlue, for: .normal)
        buttonLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .light)
        buttonLabel.backgroundColor = .white
        view.addSubview(buttonLabel)
        
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
           labelOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
           labelOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
           labelOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
           buttonLabel.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 40),
           buttonLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
           buttonLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
           buttonLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        buttonLabel.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        
    }
   
    @objc func pressButton() {
        labelOne.text = "Hello!!!"
    }
    
}
