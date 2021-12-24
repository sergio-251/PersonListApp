//
//  PersonListViewController.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import UIKit



class PersonListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }

    
}

// MARK: - Table view data source
extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.textProperties.font = UIFont(name: "Helvetica", size: 30) ?? UIFont()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailPersonVC = segue.destination as? DetailPersonViewController {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            detailPersonVC.person = persons[indexPath.row]
        }
        
    }
}
