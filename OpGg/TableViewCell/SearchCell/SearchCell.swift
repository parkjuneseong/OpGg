//
//  SearchCell.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//

import UIKit

class SearchCell: UITableViewCell {
    @IBOutlet weak var search: UILabel!
    
    @IBOutlet weak var searchView: UIControl!
    
    func bind(model: Cell4Model?) {
        // nil check
        guard let model = model else {
            return
        }
        search.text = model.search
    }
}
