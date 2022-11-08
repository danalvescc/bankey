//
//  DummyViewController.swift
//  Banker
//
//  Created by Daniel  Alves Barreto on 08/11/22.
//

import UIKit

class DummyViewController: UIViewController {
    
    weak var logoutDelegate: LogoutDelegate?
    
    let stackView = UIStackView()
    let label = UILabel()
    private lazy var logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: [])
        button.configuration = .filled()
        button.addTarget(self, action: #selector(makeLogout), for: .primaryActionTriggered)
        return button
    }()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DummyViewController {
    func style(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome!"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
    }
    
    func layout(){
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

// MARK: Actions

extension DummyViewController {
    @objc func makeLogout(_ sender: UIButton){
        logoutDelegate?.didLogout()
    }
}
