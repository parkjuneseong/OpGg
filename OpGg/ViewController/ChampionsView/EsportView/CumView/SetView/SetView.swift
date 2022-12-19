//
//  SetView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/18.
//

import UIKit

class SetView: UIViewController {

    @IBOutlet weak var setIm: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setIm.image = UIImage(named:"setIm")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
