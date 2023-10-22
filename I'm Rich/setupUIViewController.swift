//
//  File.swift
//  I'm Rich
//
//  Created by macbook on 22.10.2023.
//

import Foundation
import UIKit

final class setupUIViewController: UIView {
    let label = UILabel()
    let imageView = UIImageView()
    
    init(labelText: String, font: UIFont, imageName: String) {
        super.init(frame: .infinite)
        setupUI(labelText: labelText, font: font, imageName: imageName)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(labelText: String, font: UIFont = .systemFont(ofSize: 40), imageName: String) {
        label.textAlignment = .center
        label.text = labelText
        label.font = .systemFont(ofSize: 40)
        label.textColor = .white
        imageView.image = UIImage(named: imageName)
        self.backgroundColor = UIColor(patternImage: UIImage(named: "blue")!)
        
        self.addSubViews(label, imageView)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            imageView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
}
