//
//  DetailListTableViewController.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import UIKit

class DetailListViewController: UITableViewController {
    
    var pesons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        pesons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsDetail", for: indexPath)

      

        return cell
    }


}
