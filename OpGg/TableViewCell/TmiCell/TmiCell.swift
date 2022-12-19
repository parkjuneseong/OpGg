//
//  TmiCellCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//

import UIKit

class TmiCell: UITableViewCell {
    @IBOutlet weak var todayTmi: UILabel!
    
    @IBOutlet weak var tmi: UILabel!
    
    func bind(model:TmiModel?){
        guard let model = model else{
            return
        }
        todayTmi.text = model.todayTmi
        tmi.text = model.tmi
        tmi.textColor = .black
        todayTmi.textColor = .black
    }
    
}
