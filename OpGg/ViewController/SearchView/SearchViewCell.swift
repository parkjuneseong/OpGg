//
//  SearchViewCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/26.
//

import UIKit

class SearchViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!


    func bind(nickname:String){
        name.text = nickname
        
    }
   
}
