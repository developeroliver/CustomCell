//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by olivier geiger on 17/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let users       = ["codewitholiver", "alise.code", "dieyuna", "tarek_tgn", "battersya"]
    var customTV: UITableView!
    let reuseID     = "Users"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSetup()
        configureTableView()
    }

    
    func configureSetup() {
        view.backgroundColor = .systemBackground
        title = "Instagram Users"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func configureTableView() {
        customTV                = UITableView(frame: view.bounds)
        customTV.dataSource     = self
        customTV.delegate       = self
        customTV.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)
    }
}

