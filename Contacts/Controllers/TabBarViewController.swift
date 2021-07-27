//
//  TabBarViewController.swift
//  Contacts
//
//  Created by Nikita on 27.07.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let person = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
