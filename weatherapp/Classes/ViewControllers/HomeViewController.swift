//
//  HomeViewController.swift
//  weatherapp
//
//  Created by Felix Boquet on 26/12/2018.
//  Copyright © 2018 Felix Boquet. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, StoryboardInitializable {
    
    var temperatureLabel: UILabel!
    var weatherImage: UIImageView!
    var cityLabel: UILabel!
    var mainView: UIView!
    
    var networkProvider: NetworkManager!

    
    init(networkProvider: NetworkManager) {
        super.init(nibName: nil, bundle: nil)
        self.networkProvider = networkProvider
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Main View
        mainView = UIView()
        mainView.backgroundColor = .white
        self.view.addSubview(self.mainView)
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        
        // City label
        cityLabel = UILabel()
        cityLabel.text = "Toulouse"
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: cityLabel.font.fontName, size: 20)
        mainView.addSubview(cityLabel)
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        
        // Temperature label
        temperatureLabel = UILabel()
        temperatureLabel.text = "5°C"
        temperatureLabel.textAlignment = .center
        temperatureLabel.font = UIFont(name: temperatureLabel.font.fontName, size: 40)
        mainView.addSubview(temperatureLabel)
        
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.bottomAnchor.constraint(equalTo: cityLabel.topAnchor, constant: -32).isActive = true
        temperatureLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        // Weather image
        weatherImage = UIImageView()
        weatherImage.image = UIImage(named: "sun")
        mainView.addSubview(weatherImage)
        
        weatherImage.translatesAutoresizingMaskIntoConstraints = false
        weatherImage.bottomAnchor.constraint(equalTo: temperatureLabel.topAnchor, constant: -32).isActive = true
        weatherImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
    }
}
