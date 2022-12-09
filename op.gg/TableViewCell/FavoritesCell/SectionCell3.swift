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
    
    func bind(model: Cell3Model?) {
    // nil check
    guard let model = model else {
        return
    }
        gamerName.text = model.gamerName
        changeOrder.text = model.changeOrder
        gamerList.text = model.gamerList
        searchGamer.setTitle(model.searchGamer, for: .normal)

    }
}
