//
//  ViewController.swift
//  I'm Rich
//
//  Created by macbook on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {

    private let richView = setupUIViewController(labelText: "I am Rich", font: .systemFont(ofSize: 40), imageName: "diamond")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "blue")!)
        setupContraints()
    }

    private func setupContraints() {
        view.addSubview(richView)
        richView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            richView.topAnchor.constraint(equalTo: view.topAnchor),
            richView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            richView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            richView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }

}




//MARK: - SwiftUI
import SwiftUI
struct Provider_ViewController : PreviewProvider {
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainterView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return ViewController()
        }
        
        typealias UIViewControllerType = UIViewController
        
        
        let viewController = ViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: Provider_ViewController.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) {
            
        }
    }
    
}

