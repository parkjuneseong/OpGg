//
//  SectionCell1.swift
//  op.gg
//
//  Created by June on 2022/12/05.
//

import UIKit

class MyProfile: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var tearImage: UIImageView!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var gamerTear: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var tearPoint: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var profile: UIView!
    @IBOutlet weak var oddsLabel: UILabel!
    
    @IBOutlet weak var mostChamp1: UIImageView!
    @IBOutlet weak var mostChamp2: UIImageView!
    @IBOutlet weak var mostChamp3: UIImageView!
    @IBOutlet weak var oddsChamp1: UILabel!
    @IBOutlet weak var oddsChamp2: UILabel!
    @IBOutlet weak var oddsChamp3: UILabel!
    
    
    func bind(model: Cell1Model?) {
        // nil check
        guard let model = model else {
            return
        }
        iconImage.image = model.iconImage
        nickName.text = model.nickName
        gamerTear.text = model.gamerTear
        tearPoint.text = model.tearPoint
        tearImage.image = model.tearImage
        oddsLabel.text = model.oddsLabel
        oddsChamp1.text = model.oddsChamp1
        oddsChamp2.text = model.oddsChamp2
        oddsChamp3.text = model.oddsChamp3
        mostChamp1.image = model.mostChamp1
        mostChamp2.image = model.mostChamp2
        mostChamp3.image = model.mostChamp3
    }
}
