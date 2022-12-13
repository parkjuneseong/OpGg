//
//  PatchCollectionCell.swift
//  op.gg
//
//  Created by June on 2022/12/11.
//

import UIKit

class PatchCollectionCell: UICollectionViewCell {

    @IBOutlet weak var noteImage: UIImageView!
    
    func bind(image:UIImage){
        
        noteImage.image = UIImage(named: "patchnoteImage1")
}
}
