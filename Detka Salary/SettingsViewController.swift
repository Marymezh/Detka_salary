//
//  SettingsViewController.swift
//  Detka Salary
//
//  Created by Maria Mezhova on 04.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let jobLabel1: UILabel = {
        let label = UILabel()
        label.text = "Администратор 1"
        label.textColor = .white
        label.toAutoLayout()
        return label
    }()
    
    let name1: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "Введите имя"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()

    
    let jobLabel2: UILabel = {
        let label = UILabel()
        label.text = "Администратор 2"
        label.textColor = .white
        label.toAutoLayout()
        return label
    }()
    
    let name2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "Введите имя"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        button.setTitle("СОХРАНИТЬ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(savePressed), for: .touchUpInside)
        button.toAutoLayout()
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        setupViews()
  
    }
    
    
    func setupViews() {
        view.addSubviews(jobLabel1, jobLabel2, name1, name2, saveButton)
        
        let constraints = [
        
            jobLabel1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            jobLabel1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            jobLabel1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            name1.topAnchor.constraint(equalTo: jobLabel1.bottomAnchor, constant: 20),
            name1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            name1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            jobLabel2.topAnchor.constraint(equalTo: name1.bottomAnchor, constant: 50),
            jobLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            jobLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            name2.topAnchor.constraint(equalTo: jobLabel2.bottomAnchor, constant: 20),
            name2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            name2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            saveButton.topAnchor.constraint(equalTo: name2.bottomAnchor, constant: 50),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
        
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func savePressed() {
        
    }
    
}
