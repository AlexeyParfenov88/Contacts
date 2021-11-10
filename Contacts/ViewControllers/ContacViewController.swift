//
//  ContacViewController.swift
//  Contacts
//
//  Created by Алексей Парфенов on 10.11.2021.
//

import UIKit

class ContacViewController: UITableViewController {

    var persons: [Person]!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tappedRowIndex = tableView.indexPathForSelectedRow?.row {
            guard let contactInfoVC = segue.destination as? ContactInfoViewController
            else { return }
            contactInfoVC.person = persons[tappedRowIndex]
        }
    }
}
