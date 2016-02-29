//
//  myCell.swift
//  YummyDesserts
//
//  Created by work on 2/27/16.
//  Copyright (c) 2016 work. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {


    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
