//
//  TabBarViewController.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = self.viewControllers else { return }
            for viewController in viewControllers {
                if let personListVC = viewController as? PersonListViewController {
                    initPersonListVC(personListVC)
                } else if let detailListVC = viewController as? DetailListViewController {
                    initDetailListVC(detailListVC)
                }
                
            }
    }

}

// MARK: - Private Methods
extension TabBarViewController {
    private func initPersonListVC(_ viewController: PersonListViewController) {
        viewController.persons = persons
    }
    
    private func initDetailListVC(_ viewController: DetailListViewController) {
        viewController.persons = persons
    }
}
