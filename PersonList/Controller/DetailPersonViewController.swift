//
//  DetailPersonViewController.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import UIKit

class DetailPersonViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = person.fullName
        phoneLabel.text = person.telephone
        emailLabel.text = person.email
    }


}
