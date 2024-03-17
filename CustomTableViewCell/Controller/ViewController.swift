//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by olivier geiger on 17/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let users       = ["codewitholiver", "alise.code", "dieyuna", "tarek_tgn", "battersya"]
    var tableView = UITableView()
    let cellIdentifier = "CustomCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Instagram Users"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView                = UITableView(frame: view.bounds, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellIdentifier)
        view.addSubview(tableView)
    }
}


extension ViewController:  UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return users.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomCell
            let name = users[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            cell.configure(withName: name)
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60 // Hauteur de chaque cellule
        }
    
    
}
