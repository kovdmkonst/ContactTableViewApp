//
//  TabBarViewController.swift
//  ContactTableViewApp
//
//  Created by Kovalyov Dmitry on 31.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let personArray = Person.getRandomPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: personArray)
    }

    private func setupViewControllers(with persons: [Person]) {
        let contactsVC = viewControllers?.first as! ContactsTableViewController
        let sortedContactsVC = viewControllers?.last as! SortedContactsTableViewController
        
        contactsVC.personArray = persons
        sortedContactsVC.personArray = persons
    }
    
}
