//
//  DetailViewController.swift
//  Contacts
//
//  Created by Nikita on 28.07.21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullname
        
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
