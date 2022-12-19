//
//  ChampionTearCellPresenter.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//


import UIKit


class ChampionTearCellPresenter {
    private let cellId = "ChampionTearCell"
    private var model: ChampionModel?
    
    func set(model: ChampionModel?) {
        self.model = model
        
    }
}

// MARK: - CommonTablePresenter
extension ChampionTearCellPresenter: CommonTablePresenter {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? ChampionTearCell else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
        var headerView: UIView? {
            get {
                let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
                view.headerLabel.text = "챔피언 티어"
                view.headerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
                return view
            } set {
                _ = newValue
            }
        }
        
        var headerHeight: CGFloat {
            get {
                return 30
            } set {
                _ = newValue
            }
        
    }
}

