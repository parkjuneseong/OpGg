//
//  OrdergamePresenter.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//

import UIKit

class OrderGamePresenter {
    private let cellId = "OrderGame"
    private var model: [OrderModel]?
    
    func set(model: [OrderModel]?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension OrderGamePresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? OrderGame else {
            return UITableViewCell()
        }
        cell.dataList = model ?? []
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }

    var headerView: UIView? {
        get {
            let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
            view.headerLabel.text = "다른 게임 전적 보기"
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

