//
//  SaleCollectionViewCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//

import UIKit

class SaleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var salecolImage: UIImageView!
    @IBOutlet weak var price: UILabel!

    @IBOutlet weak var one: UILabel!
    
    @IBOutlet weak var two: UILabel!
    
    @IBOutlet weak var three: UILabel!
    
    @IBOutlet weak var four: UILabel!
    
    
    
    
    func bind(model:SaleModel){

        salecolImage.image = model.salecolImage
        price.text = model.price
        one.text = model.one
        two.text = model.two
        three.text = model.three
        four.text = model.four
    }
}
