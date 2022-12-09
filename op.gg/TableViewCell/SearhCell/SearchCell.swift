//
//  SearchCell.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//

import UIKit

class SearchCell: UITableViewCell {
    @IBOutlet weak var gamer: UITextField!
   
    func bind(model: Cell4Model?) {
        // nil check
        guard let model = model else {
            return
        }
        gamer.text = model.gamer
    }
}

