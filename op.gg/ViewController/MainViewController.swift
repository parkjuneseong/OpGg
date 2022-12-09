//
//  MainViewController.swift
//  op.gg
//
//  Created by June on 2022/12/02.
//
//https://hururuek-chapchap.tistory.com/152 << 셀안에 tableView 넣는 방법

import UIKit
import SwiftUI

class MainViewController: UIViewController {
    @IBOutlet weak var gmaer: UITextField!
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var opggimage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    private func refresh() {
      // Cell1
      let cell1Model = Cell1Model(
        iconImage: UIImage(named:"icon"),
        nickName: "72세병만이",
        gamerTear: "플레",
        closeButton: "X" )
      let cell1Section = SettingCell.cell1([cell1Model])
      
//      // Cell2
      let cell2Model = Cell2Model(
        gameImage: UIImage(named: "zom"),
        gameExplain: "Survive from zombies!",
        gameName: "ZomBoid",
        playGame: "게임 플레이")
      let cell2Section = SettingCell.cell2([cell2Model])
//      // Cell3
      let cell3Model = Cell3Model(
            changeOrder: "순서 변경❕",
            gamerList: "★즐겨찾기한 소환사가 없습니다.\n 소환사를 검색한 후 등록해주세요!",
            searchGamer: "소환사 검색하기",
            gamerName: "즐겨찾기한 소환사")
        let cell3Section = SettingCell.cell3([cell3Model])

    
        self.dataSource = [cell1Section, cell2Section,cell3Section]
            self.settingTableView.reloadData()
}
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        tableView.register(UINib(nibName: "SectionCell1", bundle: nil), forCellReuseIdentifier: "SectionCell1")

        tableView.delegate = self
        tableView.dataSource = self
//
        opggimage.image = UIImage(named:"opgg")
        gmaer.returnKeyType = .done
        gmaer.borderStyle = .bezel
        gmaer.textColor = .black
        gmaer.backgroundColor = .white
        gmaer.text = "🔍 소환사 검색"
        
       
    }
}








extension MainViewController: UITableViewDataSource,UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    self.dataSource.count
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch self.dataSource[section] {
    case let .cell1(sectionCell1s):
      return sectionCell1s.count
    case let .cell2(sectionCell2s):
      return sectionCell2s.count
    case let .cell3(sectionCell3s):
      return sectionCell3s.count
    }
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch self.dataSource[indexPath.section] {
    case let .cell1(sectionCell1s):
      let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell1", for: indexPath) as? SectionCell1
   
        let cell1Model = sectionCell1s[indexPath.row]
        cell.prepare(
        iconImage: cell1Model.iconImage,
        nickName: cell1Model.nickName,
        gamerTear: cell1Model.gamerTear,
        closeButton: cell1Model.closeButton
      )
      return cell ?? SectionCell1()
        
    case let .cell2(sectionCell2s):
      let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertiseCell", for: indexPath) as? AdvertiseCell
        
      let cell2Model = sectionCell2s[indexPath.row]
      cell.prepare(
        gameImage: cell2Model.gameImage,
        gameExplain: cell2Model.gameExplain,
        gameName: cell2Model.gameName,
        playGame: cell2Model.playGame
      )
      return cell ?? AdvertiseCell()
        
    case let .cell3(sectionCell3s):
      let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell3", for: indexPath) as? SectionCell3
        
      let cell3Model = sectionCell3s[indexPath.row]
      cell.id(
        changeOrder: cell3Model.changeOrder,
        gamerList : cell3Model.gamerList,
        searchGamer: cell3Model.searchGamer,
        gamerName: cell3Model.gamerName
    
      )
      return cell ?? SectionCell3()
    }
  }
}

//
//
//
//extension MainViewController: UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 230
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell1", for: indexPath) as? SectionCell1
//
//
//        return cell ?? SectionCell1()
//
//    }
//
//}
