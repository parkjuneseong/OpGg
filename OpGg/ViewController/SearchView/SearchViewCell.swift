//
//  SearchViewCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/26.
//

import UIKit

class SearchViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var tearWrite: UILabel!
    @IBOutlet weak var tearMark: UIImageView!
    func bind(nickname:String,tear:String,image:UIImage, image2 : UIImage){
        name.text = nickname
        mainImage.image = image
        tearMark.image = image2
        tearWrite.text = tear
        
    }
   
}
