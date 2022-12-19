//
//  ChampionsView.swift
//  op.gg
//
//  Created by June on 2022/12/10.
//

import UIKit

class ChampionsView: UIViewController {

    @IBOutlet weak var champIm: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        champIm.image = UIImage(named:"tabChamp")
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
