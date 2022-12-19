//
//  SettingCell.swift
//  op.gg
//
//  Created by June on 2022/12/06.
//
import UIKit

struct Cell1Model {
    let iconImage: UIImage
    let nickName: String
    let gamerTear: String
    let tearImage: UIImage
    let tearPoint : String
    let oddsLabel : String
    let mostChamp1 : UIImage
    let mostChamp2 : UIImage
    let mostChamp3 : UIImage
    let oddsChamp1 : String
    let oddsChamp2 : String
    let oddsChamp3 : String
}

struct Cell2Model {
    let gameImage: UIImage
    let gameExplain: String
    let gameName: String
    let playGame: String
}

struct Cell3Model {
    let changeOrder: String
    let gamerList : String
    let searchGamer: String
    let gamerName: String
}
struct Cell4Model{
    let search:String
}

struct PatchModel{
    let title : String
    let thumbnailImage: UIImage
}
struct ChampionModel{
    let showAllButton : String
}
struct FavoriteChampModel {
    let championsLabel : String
    let championsList : String
}
struct TmiModel{
    let todayTmi : String
    let tmi : String
}
struct SaleModel{
    let saleImage:UIImage
    let discountShow:String
    let during:String
    let discountPrice:String
    let salecolImage:UIImage
    let price : String
    let one :String
    let two:String
    let three : String
    let four : String
    
}
//struct SaleColModel{
//    let price:String
//    let salecolImage:UIImage
//}
struct OrderModel{
    let orderGameImage:UIImage
}
struct LastModel{
    let pro : String
    let ranking:String
}
