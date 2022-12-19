//
//  OrderGameCollectionCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//

import UIKit

class OrderGameCollectionCell: UICollectionViewCell {
        
    @IBOutlet weak var orderGameImage: UIImageView!
    
    
        func bind(model:OrderModel){
            orderGameImage.image = model.orderGameImage
        }
    }
