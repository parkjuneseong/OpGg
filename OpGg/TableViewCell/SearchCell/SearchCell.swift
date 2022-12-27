//
//  SearchCell.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//

import UIKit

protocol SearchCellDelegate: AnyObject {
    func searchViewAction()
}

class SearchCell: UITableViewCell {
    @IBOutlet weak var search: UILabel!
    @IBOutlet weak var searchView: UIControl!
    weak var delegate: SearchCellDelegate?
    
    func bind(model: Cell4Model?) {
        // nil check
        guard let model = model else {
            return
        }
        search.text = model.search
    }
    
    @IBAction private func searchViewAction(_ sender: UIControl) {
        delegate?.searchViewAction()
    }
}
