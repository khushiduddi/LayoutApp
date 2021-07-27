//
//  ViewController.swift
//  LayoutApp
//
//  Created by Khushi Duddi on 7/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        
        tableView.allowsSelection = false
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        return cell
    }


}

