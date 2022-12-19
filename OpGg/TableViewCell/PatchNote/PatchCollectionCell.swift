//
//  PatchCollectionCell.swift
//  op.gg
//
//  Created by June on 2022/12/11.
//

import UIKit

class PatchCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var noteImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    func bind(model:PatchModel){
        titleLabel.text = model.title
        noteImage.image = model.thumbnailImage
    }
}
