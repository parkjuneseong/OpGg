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
    private let championTearCellPresenter =
    ChampionTearCellPresenter()
    private let favoriteChampPresenter = FavoriteChampPresenter()
    private let tmiCellPresenter = TmiCellPresenter()
    private let salePresenter = SalePresenter()
    private let orderGamePresenter = OrderGamePresenter()
    private let lastCellPresenter = LastCellPresenter()
    
    // Cell1
    let cell1Model = Cell1Model(
        iconImage: UIImage(named:"icon") ?? UIImage(),
        nickName: "72세병만이",
        gamerTear: "PLATINUM",
        tearImage: UIImage(named:"tearImage") ?? UIImage(),
        tearPoint: "22P",
        oddsLabel: "9승 11패 승률 45% KDA 2.02:1",
        mostChamp1:UIImage(named:"mostChamp1") ?? UIImage(),
        mostChamp2:UIImage(named:"mostChamp2") ?? UIImage(),
        mostChamp3:UIImage(named:"mostChamp3") ?? UIImage(),
        oddsChamp1: "66% \n4.71:1",
        oddsChamp2: "66% \n1.61:1",
        oddsChamp3: "100% \n8.50:1"
    )
    
    // Cell2
    let cell2Model = Cell2Model(
        gameImage: UIImage(named: "zom") ?? UIImage(),
        gameExplain: "Survive from zombies!",
        gameName: "ZomBoid",
        playGame: "게임 플레이")
    
    // Cell3
    let cell3Model = Cell3Model(
        changeOrder: "순서 변경",
        gamerList: "★즐겨찾기한 소환사가 없습니다.\n 소환사를 검색한 후 등록해주세요!",
        searchGamer: "소환사 검색하기",
        gamerName: "즐겨찾기한 소환사")
    //Cell4
    let cell4Model = Cell4Model(
        search: "소환사 검색")
    
    //PatchNoteCell
    var patchNoteList : [PatchModel] = []
    
    let championModel = ChampionModel(showAllButton: "모두 보기"
    )
    
    let favoriteChampModel = FavoriteChampModel(
        championsLabel:"★즐겨찾기한 소환사가 없습니다. \n즐겨찾는 챔피언을 등록해주세요!",
        championsList:"즐겨찾기한 챔피언"
    )
    //tmiCell
    let tmiModel = TmiModel(todayTmi: "😁오늘의 TMI", tmi: "OP.GG 영어 번역자가 가장 좋아하는 챔피언은 룰루 입니다.")
    //SaleCell
    var saleList : [SaleModel] = []
    
        //SaleCellbind
   // let saleModel = SaleColModel(price: "d", salecolImage: UIImage(named:"saleImage2") ?? UIImage())
    //orderGame
    var orderGameList : [OrderModel] = []
    
    //LastCell
    let lastCellModel = LastModel(pro:"프로 관전",ranking: "랭킹")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        opggimage.image = UIImage(named:"opgg")
        
        setorderGameModel()
        setPatchNoteModel()
        setSaleModel()
        
        setPresenterModel()
        setTablePresenters()
        
    }
    
    private func setPatchNoteModel(){
        let patchModel = PatchModel(title: "9.24일 패치노트", thumbnailImage: UIImage(named: "patchnoteImage1") ?? UIImage())
        let patxhModel2 = PatchModel(title: "10.24일 패치노트", thumbnailImage: UIImage(named: "patchnoteImage2") ?? UIImage())
        let patchModel3 = PatchModel(title: "11.24일 패치노트", thumbnailImage: UIImage(named: "patchnoteImage3") ?? UIImage())
        let patchModel4 = PatchModel(title: "12.24일 패치노트", thumbnailImage: UIImage(named: "patchnoteImage4") ?? UIImage())
        patchNoteList.append(patchModel)
        patchNoteList.append(patxhModel2)
        patchNoteList.append(patchModel3)
        patchNoteList.append(patchModel4)
    }
    private func setorderGameModel(){
        let ordergameModel = OrderModel(orderGameImage: UIImage(named:"orderGame1") ?? UIImage())
        let ordergameMode2 = OrderModel(orderGameImage: UIImage(named:"orderGame2") ?? UIImage())
        let ordergameMode3 = OrderModel(orderGameImage: UIImage(named:"orderGame3") ?? UIImage())
        let ordergameMode4 = OrderModel(orderGameImage: UIImage(named:"orderGame4") ?? UIImage())
        orderGameList.append(ordergameModel)
        orderGameList.append(ordergameMode2)
        orderGameList.append(ordergameMode3)
        orderGameList.append(ordergameMode4)
    }
    private func setSaleModel(){
        let saleModel = SaleModel(saleImage: UIImage(named:"saleTitle") ?? UIImage(), discountShow: "모두 보기", during: "~12.19", discountPrice: "560RP", salecolImage: UIImage(named:"saleChamp1") ?? UIImage(), price: "975RP", one:"Champion",two:"조이",three:"60%",four:"390RP",five: "~12.19", price2: "270RP")
        let saleModel2 = SaleModel(saleImage: UIImage(named:"") ?? UIImage(), discountShow: "", during: "", discountPrice: "", salecolImage: UIImage(named:"saleChamp2") ?? UIImage(), price: "1350RP",one:"Skin",two: "어둠의인도자 야스오",three:"60%",four:"975RP",five: "~12.24", price2: "")
        let saleModel3 = SaleModel(saleImage: UIImage(named:"") ?? UIImage(), discountShow: "", during: "", discountPrice: "", salecolImage: UIImage(named:"saleChamp3") ?? UIImage(), price:"580RP",one: "Champion",two: "그라가스", three: "75%",four: "190RP",five: "~12.31", price2: "")
        let saleModel4 = SaleModel(saleImage: UIImage(named:"") ?? UIImage(), discountShow: "", during: "", discountPrice: "", salecolImage: UIImage(named:"saleChamp4") ?? UIImage(), price:"1680RP",one: "Skin",two: "3D카이사",three:"10%",four: "1520RP",five:"~12.31", price2: "")
                                   
        
        saleList.append(saleModel)
        saleList.append(saleModel3)
        saleList.append(saleModel2)
        saleList.append(saleModel4)
    }
    
    
    private func setPresenterModel() {
        sectionCell1Presenter.set(model: cell1Model)
        advertiseCellPresenter.set(model: cell2Model)
        favoriteCellPresenter.set(model: cell3Model)
        searchCellPresenter.set(model:cell4Model)
        patchNoteCellPresenter.set(model:patchNoteList)
        championTearCellPresenter.set(model:championModel)
        favoriteChampPresenter.set(model:favoriteChampModel)
        tmiCellPresenter.set(model: tmiModel)
//        salePresenter.set(model:saleModel)
        salePresenter.set(model: saleList)
        orderGamePresenter.set(model: orderGameList)//밑으로
        lastCellPresenter.set(model:lastCellModel)//밑으로
        
        
    }
    
    private func setTablePresenters() {
        tablePresenters.removeAll()
        
        tablePresenters.append(searchCellPresenter)
        tablePresenters.append(sectionCell1Presenter)
        tablePresenters.append(advertiseCellPresenter)
        tablePresenters.append(favoriteCellPresenter)
        tablePresenters.append(patchNoteCellPresenter)
        
        tablePresenters.append(championTearCellPresenter)
        tablePresenters.append(favoriteChampPresenter)
        tablePresenters.append(tmiCellPresenter)
        tablePresenters.append(salePresenter)
        tablePresenters.append(orderGamePresenter)
        tablePresenters.append(lastCellPresenter)
        
        registerCells()
        tableView.reloadData()
    }
    
    func registerCells() {
        tablePresenters.forEach {
            $0?.registerCell(to: tableView)
        }
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
  
    
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
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard let presenter = tablePresenters[section] else {
            return nil
        }
        return presenter.footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        guard let presenter = tablePresenters[section] else {
            return .leastNormalMagnitude
        }
        
        return presenter.footerHeight
    }
}
