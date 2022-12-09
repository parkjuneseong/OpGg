//
//  SectionCell3.swift
//  op.gg
//
//  Created by June on 2022/12/05.
//

import UIKit

class SectionCell3: UITableViewCell {
    @IBOutlet weak var gamerName: UILabel!
    
    @IBOutlet weak var changeOrder: UILabel!
    
    @IBOutlet weak var gamerList: UILabel!
    
    @IBOutlet weak var searchGamer: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
