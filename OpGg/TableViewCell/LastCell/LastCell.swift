//
//  LastCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//
import UIKit


class LastCell: UITableViewCell {
   
    @IBOutlet weak var pro: UIButton!
    @IBOutlet weak var ranking: UIButton!
 
    
    func bind(model:LastModel?){
        guard let model = model else{
            return
        }
        pro.setTitle(model.pro, for: .normal)
        ranking.setTitle(model.ranking, for: .normal)
        
    }
    
}
