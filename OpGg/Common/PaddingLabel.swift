//
//  PaddingLabel.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/20.
//

import Foundation


import UIKit

class PaddingLabel: UILabel {

    private var padding = UIEdgeInsets(top: 4, left: 5, bottom: 4, right: 5)
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }
    
    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        
        return contentSize
    }
}
