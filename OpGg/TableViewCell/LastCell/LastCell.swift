//
//  LastCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//
import UIKit


class LastCell: UITableViewCell {
   
    @IBOutlet weak var pro: UILabel!
    @IBOutlet weak var ranking: UILabel!
 
    
    func bind(model:LastModel?){
        guard let model = model else{
            return
        }
        pro.text = model.pro
        ranking.text = model.ranking
        
    }
    
}
