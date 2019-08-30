//
//  TableViewCell.swift
//  Tabelview_deleting_adding
//
//  Created by Anil on 7/20/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
   
    @IBOutlet weak var lbl1: UILabel!
    
  
    @IBOutlet weak var lbl2: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
