//
//  MainTabBarViewController.swift
//  Contacts
//
//  Created by Алексей Парфенов on 10.11.2021.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    

    
    // MARK: - Navigation
    private func setupViewControllers() {
        let persons = Person.getContactList()
        guard let contactVC = viewControllers?.first as? ContacViewController
        else { return }
        guard let detailsVC = viewControllers?.last as? DetailsViewController
        else { return }
        
        contactVC.persons = persons
        detailsVC.persons = persons
    }
    
}
