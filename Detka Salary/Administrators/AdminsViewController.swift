//
//  ViewController.swift
//  Detka Salary
//
//  Created by Maria Mezhova on 02.01.2022.
//

import UIKit

class AdminsViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    let containerView = UIView()
    
    let evaView = Admin1()
    let nastyaView = Admin2()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        button.setTitle("ПОСЧИТАТЬ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(calculatePressed), for: .touchUpInside)
        button.toAutoLayout()
        return button
    }()
    
    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        button.setTitle("СБРОСИТЬ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(clearPressed), for: .touchUpInside)
        button.toAutoLayout()
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        nastyaView.sundayTextField2.delegate = self
        setupViews()
    }

    func setupViews() {
        scrollView.toAutoLayout()
        containerView.toAutoLayout()
        evaView.toAutoLayout()
        nastyaView.toAutoLayout()
        
        view.addSubview(scrollView)

        scrollView.addSubview(containerView)
        containerView.addSubviews(evaView, nastyaView, calculateButton, clearButton)

        
        let constraints = [
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            evaView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 70),
            evaView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            evaView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            nastyaView.topAnchor.constraint(equalTo: evaView.bottomAnchor, constant: inset),
            nastyaView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            nastyaView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),

            calculateButton.topAnchor.constraint(equalTo: nastyaView.bottomAnchor, constant: inset),
            calculateButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: inset),
            calculateButton.widthAnchor.constraint(equalToConstant: 120),
            calculateButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            clearButton.topAnchor.constraint(equalTo: nastyaView.bottomAnchor, constant: inset),
            clearButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -inset),
            clearButton.widthAnchor.constraint(equalToConstant: 120),
     

        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    var inset: CGFloat { return 30 }
    
    @objc func clearPressed () {
        for view in evaView {
            if let textField = view as? UITextField {
                textField.text = ""
            }
        }
    }
    
    @objc func calculatePressed () {
        let monday = Int(evaView.mondayTextField.text ?? "0")
        let tuesday = Int(evaView.tuesdayTextField.text ?? "0")
        let wednesday = Int(evaView.wednesdayTextField.text ?? "0")
        let thirsday = Int(evaView.thirsdayTextField.text ?? "0")
        let friday = Int(evaView.fridayTextField.text ?? "0")
        let saturday = Int(evaView.saturdayTextField.text ?? "0")
        let sunday = Int(evaView.sundayTextField.text ?? "0")
        
        var array1: [Int] = []
        
        array1.append(monday ?? 0)
        array1.append(tuesday ?? 0)
        array1.append(wednesday ?? 0)
        array1.append(thirsday ?? 0)
        array1.append(friday ?? 0)
        array1.append(saturday ?? 0)
        array1.append(sunday ?? 0)
        
        let sum1 = array1.reduce(0, +)
        
        let adminTotal = sum1 * 100
        
        let monday2 = Int(evaView.mondayTextField2.text ?? "0")
        let tuesday2 = Int(evaView.tuesdayTextField2.text ?? "0")
        let wednesday2 = Int(evaView.wednesdayTextField2.text ?? "0")
        let thirsday2 = Int(evaView.thirsdayTextField2.text ?? "0")
        let friday2 = Int(evaView.fridayTextField2.text ?? "0")
        let saturday2 = Int(evaView.saturdayTextField2.text ?? "0")
        let sunday2 = Int(evaView.sundayTextField2.text ?? "0")

        var array2: [Int] = []

        array2.append(monday2 ?? 0)
        array2.append(tuesday2 ?? 0)
        array2.append(wednesday2 ?? 0)
        array2.append(thirsday2 ?? 0)
        array2.append(friday2 ?? 0)
        array2.append(saturday2 ?? 0)
        array2.append(sunday2 ?? 0)

        let sum2 = array2.reduce(0, +)

        let cleaningTotal = sum2 * 150
        let total = adminTotal+cleaningTotal
        
        let monday3 = Int(nastyaView.mondayTextField.text ?? "0")
        let tuesday3 = Int(nastyaView.tuesdayTextField.text ?? "0")
        let wednesday3 = Int(nastyaView.wednesdayTextField.text ?? "0")
        let thirsday3 = Int(nastyaView.thirsdayTextField.text ?? "0")
        let friday3 = Int(nastyaView.fridayTextField.text ?? "0")
        let saturday3 = Int(nastyaView.saturdayTextField.text ?? "0")
        let sunday3 = Int(nastyaView.sundayTextField.text ?? "0")
        
        var array3: [Int] = []
        
        array3.append(monday3 ?? 0)
        array3.append(tuesday3 ?? 0)
        array3.append(wednesday3 ?? 0)
        array3.append(thirsday3 ?? 0)
        array3.append(friday3 ?? 0)
        array3.append(saturday3 ?? 0)
        array3.append(sunday3 ?? 0)
        
        let sum3 = array3.reduce(0, +)
        
        let adminTotal2 = sum3 * 100
        
        
        let monday4 = Int(nastyaView.mondayTextField2.text ?? "0")
        let tuesday4 = Int(nastyaView.tuesdayTextField2.text ?? "0")
        let wednesday4 = Int(nastyaView.wednesdayTextField2.text ?? "0")
        let thirsday4 = Int(nastyaView.thirsdayTextField2.text ?? "0")
        let friday4 = Int(nastyaView.fridayTextField2.text ?? "0")
        let saturday4 = Int(nastyaView.saturdayTextField2.text ?? "0")
        let sunday4 = Int(nastyaView.sundayTextField2.text ?? "0")

        var array4: [Int] = []

        array4.append(monday4 ?? 0)
        array4.append(tuesday4 ?? 0)
        array4.append(wednesday4 ?? 0)
        array4.append(thirsday4 ?? 0)
        array4.append(friday4 ?? 0)
        array4.append(saturday4 ?? 0)
        array4.append(sunday4 ?? 0)

        let sum4 = array4.reduce(0, +)

        let cleaningTotal2 = sum4 * 150
        let total2 = adminTotal2+cleaningTotal2



        print(array1)
        print(array2)
        print(array3)
        print(array4)

        evaView.calculationLabel.text = String(total)
        nastyaView.calculationLabel.text = String(total2)
    }

// MARK: Keyboard
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
}

override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
}

@objc fileprivate func keyboardWillShow(notification: NSNotification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
        
        scrollView.contentInset.bottom = keyboardSize.height
        scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
    }
}

@objc fileprivate func keyboardWillHide(notification: NSNotification) {
    scrollView.contentInset.bottom = .zero
    scrollView.verticalScrollIndicatorInsets = .zero
}
}

extension UIView {
    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

extension AdminsViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
    }
}
