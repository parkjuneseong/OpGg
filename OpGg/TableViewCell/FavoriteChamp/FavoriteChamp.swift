//
//  FavoriteChamp.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//

import UIKit

class FavoriteChamp: UITableViewCell {
    @IBOutlet weak var championsLabel: UILabel!
    
    @IBOutlet weak var championsList: UILabel!
    
    func bind(model:FavoriteChampModel?){
        guard let model = model else {
            return
        }
        championsList.text = model.championsList
        championsLabel.text = model.championsLabel
        
    }

}
