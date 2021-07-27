//
//  TabBarViewController.swift
//  Contacts
//
//  Created by Nikita on 27.07.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        getPerson(person: persons)
    }
    
    private func getPerson(person: [Person]) {
        guard let personListVC = viewControllers?.first as? PersonListTableViewController else { return }
        guard let contactsVC = viewControllers?.last as? ContactsTableViewController else { return }
        
        personListVC.persons = person
        contactsVC.persons = person
    }
}
