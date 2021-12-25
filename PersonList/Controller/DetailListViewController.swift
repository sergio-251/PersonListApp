//
//  DetailListTableViewController.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import UIKit


class DetailListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

//MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsDetail", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            
        case 0:
            content.text = persons[indexPath.section].telephone
            content.textProperties.font = UIFont(name: "Helvetica", size: 20)
            ?? UIFont()
            content.image = UIImage(systemName: "phone")
            
        default:
            content.text = persons[indexPath.section].email
            content.textProperties.font = UIFont(name: "Helvetica", size: 20)
            ?? UIFont()
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

