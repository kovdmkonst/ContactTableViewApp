//
//  DetailsViewController.swift
//  ContactTableViewApp
//
//  Created by Kovalyov Dmitry on 25.03.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!

     var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(person.name)"
        surnameLabel.text = "Surname: \(person.surname)"
        phoneNumberLabel.text = "Phone number: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
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
