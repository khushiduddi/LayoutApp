//
//  TableViewCell.swift
//  LayoutApp
//
//  Created by Khushi Duddi on 7/27/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
  
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
