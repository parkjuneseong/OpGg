//
//  AdvertiseCell.swift
//  op.gg
//
//  Created by June on 2022/12/05.
//

import UIKit

class AdvertiseCell: UITableViewCell {

    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var gameExplain: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var playGame: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
//        gameImage.image = UIImage(named:"zom")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
