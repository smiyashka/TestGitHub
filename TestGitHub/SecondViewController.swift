//
//  SecondViewController.swift
//  TestGitHub
//
//  Created by mac on 20.02.2022.
//

import UIKit

final class SecondViewController: UIViewController {

    private let tabBar = UITabBar()
    private let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        
    }
    
    private func setupSubviews() {
        view.backgroundColor = .yellow
        
        
        label.text = "Hello, I'am Second View Controller make with Git"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        tabBar.items = [UITabBarItem.init(title: "Home", image: UIImage.init(systemName: "house"), tag: 1),
                        UITabBarItem.init(title: "Second", image: UIImage.init(systemName: "arrowshape.turn.up.right"), tag: 2)]
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabBar)
                
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: view.leftAnchor),
            label.rightAnchor.constraint(equalTo: view.rightAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            label.heightAnchor.constraint(equalToConstant: 50),
            tabBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            tabBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            tabBar.heightAnchor.constraint(equalToConstant: 50),
            tabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                                    ])
    }
    
}


