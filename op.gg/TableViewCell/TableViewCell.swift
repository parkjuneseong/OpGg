//
//  TableViewCell.swift
//  op.gg
//
//  Created by June on 2022/12/02.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    
   
    override func awakeFromNib() {
        iconImage.image = UIImage(named:"icon")
//        let size : CGSize = .init(width: 100, height: 100)
    }
    
   
}
