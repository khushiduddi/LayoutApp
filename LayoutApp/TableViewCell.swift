//
//  TableViewCell.swift
//  LayoutApp
//
//  Created by Khushi Duddi on 7/27/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var textView: UITextView!
    
    @IBOutlet var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
