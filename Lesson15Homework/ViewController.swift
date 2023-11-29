//
//  ViewController.swift
//  Lesson15Homework
//
//  Created by Alexandr Zuev on 16.11.23.
//

import UIKit

//protocol TextFieldDelegate: AnyObject {
//    func buttonBehavior()
//}
//extension UIButton: TextFieldDelegate {
//    func buttonBehavior() {
//    }
//}
//extension UITextView: TextFieldDelegate{
//    func buttonBehavior() {
//    }
//    
//}


class ViewController: UIViewController, UITextViewDelegate {
    
    let horizonalSpacing = 16.0
    let verticalSpacing = 6.0
    let stackView = UIStackView()
    let secondStackView = UIStackView()
    let thirdStackView = UIStackView()
    let fourthStackView = UIStackView()
    let fifthStackView = UIStackView()
    let sixthStackView = UIStackView()
    let seventhStackView = UIStackView()
    
    let firstName = UITextField()
    let middleName = UITextField()
    let lastName = UITextField()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let thirdLabel = UILabel()
    let somePicture = UIImageView()
    let notesField = UITextView()
    
    let save = UIButton()
    let cancel = UIButton()
    let clear = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.axis = .vertical
        stackView.spacing = verticalSpacing
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        
        secondStackView.axis = .horizontal
        stackView.addSubview(secondStackView)
        
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        secondStackView.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
        secondStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        secondStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        secondStackView.heightAnchor.constraint(equalToConstant: 100 - verticalSpacing / 2).isActive = true
        
        secondStackView.addSubview(somePicture)
        somePicture.translatesAutoresizingMaskIntoConstraints = false
        somePicture.topAnchor.constraint(equalTo: secondStackView.topAnchor).isActive = true
        somePicture.leadingAnchor.constraint(equalTo: secondStackView.leadingAnchor).isActive = true
        somePicture.heightAnchor.constraint(equalToConstant: 100 - verticalSpacing / 2).isActive = true
        somePicture.widthAnchor.constraint(equalToConstant: 100 - verticalSpacing / 2).isActive = true
        somePicture.image = UIImage(named: "download")
        
        secondStackView.addSubview(thirdStackView)
        thirdStackView.translatesAutoresizingMaskIntoConstraints = false
        thirdStackView.topAnchor.constraint(equalTo: secondStackView.topAnchor).isActive = true
        thirdStackView.leadingAnchor.constraint(equalTo: somePicture.trailingAnchor, constant: horizonalSpacing / 2).isActive = true
        thirdStackView.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor).isActive = true
        thirdStackView.bottomAnchor.constraint(equalTo: secondStackView.bottomAnchor).isActive = true
        thirdStackView.axis = .vertical
        
        thirdStackView.addSubview(fourthStackView)
        thirdStackView.addSubview(fifthStackView)
        thirdStackView.addSubview(sixthStackView)
        
        fourthStackView.axis = .horizontal
        fourthStackView.translatesAutoresizingMaskIntoConstraints = false
        fourthStackView.topAnchor.constraint(equalTo: secondStackView.topAnchor).isActive = true
        fourthStackView.leadingAnchor.constraint(equalTo: thirdStackView.leadingAnchor, constant: horizonalSpacing / 2).isActive = true
        fourthStackView.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor).isActive = true
        fourthStackView.heightAnchor.constraint(equalToConstant: 33.3 - verticalSpacing / 2).isActive = true
        
        fifthStackView.axis = .horizontal
        fifthStackView.translatesAutoresizingMaskIntoConstraints = false
        fifthStackView.topAnchor.constraint(equalTo: fourthStackView.bottomAnchor, constant: verticalSpacing / 2).isActive = true
        fifthStackView.leadingAnchor.constraint(equalTo: thirdStackView.leadingAnchor, constant: horizonalSpacing / 2).isActive = true
        fifthStackView.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor).isActive = true
        fifthStackView.heightAnchor.constraint(equalToConstant: 33.3 - verticalSpacing / 2).isActive = true
        
        sixthStackView.axis = .horizontal
        sixthStackView.spacing = horizonalSpacing
        sixthStackView.translatesAutoresizingMaskIntoConstraints = false
        sixthStackView.topAnchor.constraint(equalTo: fifthStackView.bottomAnchor, constant: verticalSpacing / 2).isActive = true
        sixthStackView.leadingAnchor.constraint(equalTo: thirdStackView.leadingAnchor, constant: horizonalSpacing / 2).isActive = true
        sixthStackView.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor).isActive = true
        sixthStackView.bottomAnchor.constraint(equalTo: secondStackView.bottomAnchor).isActive = true
        
        firstLabel.text = "First"
        firstName.placeholder = "Enter First Name"
        firstName.borderStyle = .roundedRect
        secondLabel.text = "Middle"
        middleName.placeholder = "Enter Middle Name"
        middleName.borderStyle = .roundedRect
        thirdLabel.text = "Last"
        lastName.placeholder = "Enter Last Name"
        lastName.borderStyle = .roundedRect
        
        fourthStackView.addSubview(firstLabel)
        fourthStackView.addSubview(firstName)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.topAnchor.constraint(equalTo: fourthStackView.topAnchor).isActive = true
        firstLabel.leadingAnchor.constraint(equalTo: fourthStackView.leadingAnchor).isActive = true
        firstLabel.bottomAnchor.constraint(equalTo: fourthStackView.bottomAnchor).isActive = true
        firstLabel.widthAnchor.constraint(equalToConstant: 70 - horizonalSpacing / 2).isActive = true
        
        firstName.translatesAutoresizingMaskIntoConstraints = false
        firstName.topAnchor.constraint(equalTo: fourthStackView.topAnchor).isActive = true
        firstName.leadingAnchor.constraint(equalTo: firstLabel.trailingAnchor, constant: horizonalSpacing / 2).isActive = true
        firstName.trailingAnchor.constraint(equalTo: fourthStackView.trailingAnchor).isActive = true
        firstName.bottomAnchor.constraint(equalTo: fourthStackView.bottomAnchor).isActive = true
        
       
        fifthStackView.addSubview(secondLabel)
        fifthStackView.addSubview(middleName)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.topAnchor.constraint(equalTo: fifthStackView.topAnchor).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: fifthStackView.leadingAnchor).isActive = true
        secondLabel.bottomAnchor.constraint(equalTo: fifthStackView.bottomAnchor).isActive = true
        secondLabel.widthAnchor.constraint(equalToConstant: 70 - horizonalSpacing / 2).isActive = true
        
        middleName.translatesAutoresizingMaskIntoConstraints = false
        middleName.topAnchor.constraint(equalTo: fifthStackView.topAnchor).isActive = true
        middleName.leadingAnchor.constraint(equalTo: secondLabel.trailingAnchor, constant: horizonalSpacing / 2).isActive = true
        middleName.trailingAnchor.constraint(equalTo: fifthStackView.trailingAnchor).isActive = true
        middleName.bottomAnchor.constraint(equalTo: fifthStackView.bottomAnchor).isActive = true
        
        sixthStackView.addSubview(thirdLabel)
        sixthStackView.addSubview(lastName)
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        thirdLabel.topAnchor.constraint(equalTo: sixthStackView.topAnchor).isActive = true
        thirdLabel.leadingAnchor.constraint(equalTo: sixthStackView.leadingAnchor).isActive = true
        thirdLabel.bottomAnchor.constraint(equalTo: sixthStackView.bottomAnchor).isActive = true
        thirdLabel.widthAnchor.constraint(equalToConstant: 70 - horizonalSpacing / 2).isActive = true
        
        lastName.translatesAutoresizingMaskIntoConstraints = false
        lastName.topAnchor.constraint(equalTo: sixthStackView.topAnchor).isActive = true
        lastName.leadingAnchor.constraint(equalTo: thirdLabel.trailingAnchor, constant: horizonalSpacing / 2).isActive = true
        lastName.trailingAnchor.constraint(equalTo: sixthStackView.trailingAnchor).isActive = true
        lastName.bottomAnchor.constraint(equalTo: sixthStackView.bottomAnchor).isActive = true
        
        stackView.addSubview(notesField)
        notesField.translatesAutoresizingMaskIntoConstraints = false
        notesField.topAnchor.constraint(equalTo: secondStackView.bottomAnchor, constant: verticalSpacing / 2).isActive = true
        notesField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        notesField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        notesField.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -40 - verticalSpacing / 2).isActive = true
        notesField.backgroundColor = .lightGray
        notesField.font = UIFont.systemFont(ofSize: 20)
        notesField.layer.cornerRadius = 10
        notesField.text = "Notes: "
        
        stackView.addSubview(seventhStackView)
        seventhStackView.axis = .horizontal
        seventhStackView.translatesAutoresizingMaskIntoConstraints = false
        seventhStackView.addArrangedSubview(save)
        save.setTitle("Save", for: .normal)
        save.setTitleColor(.systemCyan, for: .normal)
        seventhStackView.addArrangedSubview(cancel)
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(.systemCyan, for: .normal)
        seventhStackView.addArrangedSubview(clear)
        clear.setTitle("Clear", for: .normal)
        clear.setTitleColor(.systemCyan, for: .normal)
        seventhStackView.spacing = horizonalSpacing
        seventhStackView.topAnchor.constraint(equalTo: notesField.bottomAnchor, constant: verticalSpacing / 2).isActive = true
        seventhStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        seventhStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        seventhStackView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        seventhStackView.alignment = .center
        seventhStackView.distribution = .fillEqually
        
        
        notesField.delegate = self
        save.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        
        
    }
    
    var tmp = ""
    @objc func saveButtonTapped() {
        tmp = notesField.text
    }
}

