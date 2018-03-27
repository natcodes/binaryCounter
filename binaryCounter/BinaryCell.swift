//
//  cell.swift
//  binaryCounter
//
//  Created by Natalie Nuno on 3/26/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import Foundation
import UIKit

class BinaryCell: UITableViewCell {
    
    var delegate: BinaryCellDelegate?
    
    var value: Int!
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        delegate?.subtractFromTotal(data: value)
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate?.addToTotal(data: value)
    }
    
    @IBOutlet weak var valueLabel: UILabel!
    



}
