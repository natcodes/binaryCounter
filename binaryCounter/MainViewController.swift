//
//  ViewController.swift
//  binaryCounter
//
//  Created by Natalie Nuno on 3/26/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var total: Int = 0
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        updateLabel()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateLabel() {
        totalLabel.text = "Total: \(total)"
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        cell.delegate = self
        let math = Int(exactly: pow(10, Double(exactly: indexPath.row)!))!
        cell.value = math
        cell.valueLabel.text = "\(math)"
        return cell
    }
}

extension MainViewController: BinaryCellDelegate {
    
    func addToTotal(data: Int) {
        total += data
        updateLabel()
    }
    
    func subtractFromTotal(data: Int) {
        total -= data
        updateLabel()
    }
    
}
