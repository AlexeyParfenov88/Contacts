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
        setViewControllers()
    }
    
    private func setViewControllers() {
        let persons = Person.getContact()
        guard let contactVC = viewControllers?.first as? ContacViewController
        else { return }
        guard let detailsVC = viewControllers?.last as? DetailsViewController
        else { return }
        
        contactVC.persons = persons
        detailsVC.persons = persons
    }
    
}
