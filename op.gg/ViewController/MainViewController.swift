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
    
    // MARK: - Presenters
    private var tablePresenters: [CommonTablePresenter?] = []
    private let sectionCell1Presenter = MyProfilePresenter()
    private let advertiseCellPresenter = AdvertiseCellPresenter()
    private let sectionCell3Presenter = SectionCell3Presenter()
    private let searchCellPresenter = SearchCellPresenter()
    // Cell1
    let cell1Model = Cell1Model(
      iconImage: UIImage(named:"icon") ?? UIImage(),
      nickName: "72세병만이",
      gamerTear: "플레")
   
    
//      // Cell2
    let cell2Model = Cell2Model(
      gameImage: UIImage(named: "zom") ?? UIImage(),
      gameExplain: "Survive from zombies!",
      gameName: "ZomBoid",
      playGame: "게임 플레이")
//      // Cell3
    let cell3Model = Cell3Model(
          changeOrder: "순서 변경❕",
          gamerList: "★즐겨찾기한 소환사가 없습니다.\n 소환사를 검색한 후 등록해주세요!",
          searchGamer: "소환사 검색하기",
          gamerName: "즐겨찾기한 소환사")
   //cell 4
    let cell4Model = Cell4Model(
    
      
        
        gamer: "🔍 소환사 검색")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        opggimage.image = UIImage(named:"opgg")
        gmaer.returnKeyType = .done
        gmaer.borderStyle = .bezel
        gmaer.textColor = .black
        gmaer.backgroundColor = .white
        gmaer.text = "🔍 소환사 검색"
        setPresenterModel()
        setTablePresenters()
    }
    private func setPresenterModel() {
        sectionCell1Presenter.set(model: cell1Model)
        advertiseCellPresenter.set(model: cell2Model)
        sectionCell3Presenter.set(model: cell3Model)
        searchCellPresenter.set(model:cell4Model)
        
       
    }
    private func setTablePresenters(){
        tablePresenters.removeAll()
        
        tablePresenters.append(sectionCell1Presenter)
        tablePresenters.append(advertiseCellPresenter)
        tablePresenters.append(sectionCell3Presenter)
        tablePresenters.append(searchCellPresenter)
        
        registerCells()
        tableView.reloadData()
    }
    
    func registerCells() {
        tablePresenters.forEach {
            $0?.registerCell(to: tableView)
        }
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        tablePresenters.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let presenter = tablePresenters[section] else {
            return 0
        }
        return presenter.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let presenter = tablePresenters[indexPath.section],
              let cell = presenter.tableView(tableView, cellForRowAt: indexPath)
        else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let presenter = tablePresenters[indexPath.section] else {
            // cell의 height는 0이되면 안됨
            // 그래서 leastNormalMagnitude = 0.00000000.........001이라고 보면댐
            return .leastNormalMagnitude
        }
        return presenter.height(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let presenter = tablePresenters[section] else {
            return nil
        }
        return presenter.headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard let presenter = tablePresenters[section] else {
            return .leastNormalMagnitude
        }
        
        return presenter.headerHeight
    }
}


