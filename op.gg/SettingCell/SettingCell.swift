//
//  SettingCell.swift
//  op.gg
//
//  Created by June on 2022/12/06.
//
import UIKit
enum SettingCell {
  case cell1([SectionCell1])
  case cell2([AdvertiseCell])
  case cell3([SectionCell3])
}

struct Cell1Model {
    let iconImage = UIImage(named:"opgg")
    let nickName: String?
    let gamerTear: String?
    let closeButton: String?
}

struct Cell2Model {
    let gameImage = UIImage(named:"zom")
    let gameExplain: String?
    let gameName: String?
    let playGame: String?
}

struct Cell3Model {
    let changeOrder: String?
    let gamerList : String?
    let searchGamer: String?
    let gamerName: String?
}
