//
//  TableViewCell.swift
//  TableViewTest
//
//  Created by 麻生 拓弥 on 2015/12/02.
//  Copyright © 2015年 麻生 拓弥. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
