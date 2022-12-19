//
//  CumView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/18.
//

import UIKit

class CumView: UIViewController {
    
    @IBOutlet weak var cumIm: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cumIm.image = UIImage(named:"cumIm")
    }
}
