//
//  AdvertiseCell.swift
//  op.gg
//
//  Created by June on 2022/12/05.
//

import UIKit

class AdvertiseCell: UITableViewCell {

    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var gameExplain: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var playGame: UIButton!
    
    func bind(model: Cell2Model?) {
        guard let model = model else {
            return
        }
        gameName.text = model.gameName
        playGame.setTitle(model.playGame, for: .normal)
        gameExplain.text = model.gameExplain
        gameImage.image = model.gameImage
    }
}
