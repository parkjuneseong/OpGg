//
//  ChampionTearCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//

import UIKit

class ChampionTearCell: UITableViewCell {

    @IBOutlet weak var showAllButton: UIButton!
    
//    var dataList : [ChampionModel] = []{
//        didSet{
//            collectionView.reloadData()
//        }
//    }
    func bind(model: ChampionModel?) {
        // nil check
        guard let model = model else {
            return
        }
        showAllButton.setTitle(model.showAllButton, for: .normal)
        
    }
}
