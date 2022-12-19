//
//  EsportView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/18.
//

import UIKit

class EsportView: UIViewController {
    @IBOutlet weak var esportIm :UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        esportIm.image = UIImage(named:"tabEsport")
        // Do any additional setup after loading the view.
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
