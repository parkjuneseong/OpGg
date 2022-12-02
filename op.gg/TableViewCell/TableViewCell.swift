//
//  TableViewCell.swift
//  op.gg
//
//  Created by June on 2022/12/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var oooo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        oooo.text = "제발 나와줘"
    }

   
}
