//
//  SectionCell1.swift
//  op.gg
//
//  Created by June on 2022/12/05.
//

import UIKit

class MyProfile: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var gamerTear: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var profile: UIView!
   
    func bind(model: Cell1Model?) {
    // nil check
    guard let model = model else {
        return
    }
    iconImage.image = model.iconImage
    nickName.text = model.nickName
    gamerTear.text = model.gamerTear
    }
}

