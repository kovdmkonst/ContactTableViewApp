//
//  SortedContactsTableViewController.swift
//  ContactTableViewApp
//
//  Created by Kovalyov Dmitry on 25.03.2022.
//

import UIKit


class SortedContactsTableViewController: UITableViewController {
    
    var personArray: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personArray.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personArray[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sortedCell", for: indexPath)
        let person = personArray[indexPath.section]
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = person.phoneNumber
        } else  {
            content.text = person.email
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
