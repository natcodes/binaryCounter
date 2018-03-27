//
//  TableViewDelegate.swift
//  binaryCounter
//
//  Created by Natalie Nuno on 3/26/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import Foundation
import UIKit

protocol BinaryCellDelegate {
    func addToTotal (data: Int)
    
    func subtractFromTotal (data: Int)
    
}
