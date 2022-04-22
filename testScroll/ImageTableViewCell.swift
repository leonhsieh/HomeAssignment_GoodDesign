//
//  ImageTableViewCell.swift
//  testScroll
//
//  Created by leon on 2022/4/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
        
    @IBOutlet weak var bottomView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
