//
//  Admin2.swift
//  Detka Salary
//
//  Created by Maria Mezhova on 04.01.2022.
//

import UIKit

class Admin2: UIView {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "НАСТЯ"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.toAutoLayout()
        return label
    }()
    
    let jobLabel1: UILabel = {
        let label = UILabel()
        label.text = "Администрирование"
        label.textColor = .white
        label.toAutoLayout()
        return label
    }()
    
    let mondayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ПН"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let tuesdayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ВТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let wednesdayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "СР"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let thirsdayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ЧТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let fridayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ПТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let saturdayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "СБ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let sundayTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ВС"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let stack: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.toAutoLayout()
        return stackView
    }()
    
    let jobLabel2: UILabel = {
        let label = UILabel()
        label.text = "Уборка"
        label.textColor = .white
        label.toAutoLayout()
        return label
    }()
    
    let mondayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ПН"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let tuesdayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ВТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let wednesdayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "СР"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let thirsdayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ЧТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let fridayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ПТ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let saturdayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "СБ"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let sundayTextField2: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.placeholder = "ВС"
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.toAutoLayout()
        return textField
    }()
    
    let stack2: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.toAutoLayout()
        return stackView
    }()
    
    let calculationLabel: UILabel = {
        let label = UILabel()
        label.text = "СУММА"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        label.toAutoLayout()
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews(nameLabel, jobLabel1, jobLabel2, stack, stack2, calculationLabel)
        
        stack.addArrangedSubview(mondayTextField)
        stack.addArrangedSubview(tuesdayTextField)
        stack.addArrangedSubview(wednesdayTextField)
        stack.addArrangedSubview(thirsdayTextField)
        stack.addArrangedSubview(fridayTextField)
        stack.addArrangedSubview(saturdayTextField)
        stack.addArrangedSubview(sundayTextField)
        
        stack2.addArrangedSubview(mondayTextField2)
        stack2.addArrangedSubview(tuesdayTextField2)
        stack2.addArrangedSubview(wednesdayTextField2)
        stack2.addArrangedSubview(thirsdayTextField2)
        stack2.addArrangedSubview(fridayTextField2)
        stack2.addArrangedSubview(saturdayTextField2)
        stack2.addArrangedSubview(sundayTextField2)
        
        setupViews()
    }
    
    func setupViews() {
        let constraints = [
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            jobLabel1.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            jobLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            jobLabel1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            stack.topAnchor.constraint(equalTo: jobLabel1.bottomAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            stack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            stack.heightAnchor.constraint(equalToConstant: inset),
            jobLabel2.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 20),
            jobLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            jobLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            stack2.topAnchor.constraint(equalTo: jobLabel2.bottomAnchor, constant: 20),
            stack2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            stack2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            stack2.heightAnchor.constraint(equalToConstant: inset),
            calculationLabel.topAnchor.constraint(equalTo: stack2.bottomAnchor, constant: inset),
            calculationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset),
            calculationLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    var inset: CGFloat { return 30 }
    
}
