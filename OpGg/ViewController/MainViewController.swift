//
//  MainViewController.swift
//  op.gg
//
//  Created by June on 2022/12/02.
//
//https://hururuek-chapchap.tistory.com/152 << 셀안에 tableView 넣는 방법

import UIKit
import SwiftUI

class MainViewController: UIViewController, UITabBarControllerDelegate {
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var opggimage: UIImageView!
//    @IBOutlet weak var tabbar: UITabBar!
    @IBOutlet weak var tableView: UITableView!
    
    //tabbarController
    
    //버튼을 눌렀을떄 실행되는 액션함수
//     @IBAction func touchButton(_ sender: Any) {
//        // 새로운 뷰컨트롤러가 나오게 하는 코드
//        
//        //화면전환버튼
//        let vc1 =  MainViewController()
//        tabbarController.delegate = self
//        self.present(vc1, animated: true)
////    }
//    init(){
//        super.init(nibName: nil, bundle: nil)
//        self.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // MARK: - Presenters
    private var tablePresenters: [CommonTablePresenter?] = []
    private let sectionCell1Presenter = MyProfilePresenter()
    private let advertiseCellPresenter = AdvertiseCellPresenter()
    private let favoriteCellPresenter = FavoriteCellPresenter()
    private let searchCellPresenter = SearchCellPresenter()
    private let patchNoteCellPresenter = PatchNoteCellPresenter()
    
    // Cell1
    let cell1Model = Cell1Model(
        iconImage: UIImage(named:"icon") ?? UIImage(),
        nickName: "72세병만이",
        gamerTear: "PLATINUM",
        tearImage: UIImage(named:"tearImage") ?? UIImage(),
        tearPoint: "22P")
    
    // Cell2
    let cell2Model = Cell2Model(
        gameImage: UIImage(named: "zom") ?? UIImage(),
        gameExplain: "Survive from zombies!",
        gameName: "ZomBoid",
        playGame: "게임 플레이")
    
    // Cell3
    let cell3Model = Cell3Model(
        changeOrder: "순서 변경❕",
        gamerList: "★즐겨찾기한 소환사가 없습니다.\n 소환사를 검색한 후 등록해주세요!",
        searchGamer: "소환사 검색하기",
        gamerName: "즐겨찾기한 소환사")
    //Cell4
    let cell4Model = Cell4Model(
        search: "🔍 소환사 검색")
    //PatchNoteCell
    let patchModel = PatchModel(
        patchCell: UICollectionView(),
        ssss: "임시" )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        opggimage.image = UIImage(named:"opgg")
//        gmaer.returnKeyType = .done
//        gmaer.borderStyle = .bezel
//        gmaer.textColor = .black
//        gmaer.backgroundColor = .white
//        gmaer.text = "🔍 소환사 검색"
        setPresenterModel()
        setTablePresenters()
    
    }
    
    
    
    private func setPresenterModel() {
        sectionCell1Presenter.set(model: cell1Model)
        advertiseCellPresenter.set(model: cell2Model)
        favoriteCellPresenter.set(model: cell3Model)
        searchCellPresenter.set(model:cell4Model)
        patchNoteCellPresenter.set(model:patchModel)
    }
    
    private func setTablePresenters() {
        tablePresenters.removeAll()
        
        tablePresenters.append(searchCellPresenter)
        tablePresenters.append(sectionCell1Presenter)
        tablePresenters.append(advertiseCellPresenter)
        tablePresenters.append(favoriteCellPresenter)
        tablePresenters.append(patchNoteCellPresenter)
        
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
