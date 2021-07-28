//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Nikita on 27.07.21.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].fullname)"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumber", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            let person = persons[indexPath.section]
            content.image = UIImage(systemName: "teletype.circle.fill")
            content.text = person.phoneNumber
            
            cell.contentConfiguration = content

            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            let person = persons[indexPath.section]
            content.image = UIImage(systemName: "envelope.fill")
            content.text = person.email
            
            cell.contentConfiguration = content

            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
