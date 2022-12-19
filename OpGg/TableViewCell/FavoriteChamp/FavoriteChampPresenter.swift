//
//  ChampionTearCellPresenter.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//


import UIKit


class FavoriteChampPresenter {
    private let cellId = "FavoriteChamp"
    private var model: FavoriteChampModel?
    
    func set(model: FavoriteChampModel?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension FavoriteChampPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? FavoriteChamp else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 150

    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
    var footerView: UIView? {
        get {
            let view = CommonFooterView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 15))
      
           
            
            return view
        } set {
            _ = newValue
        }
    }
    
    var footerHeight: CGFloat {
        get {
            return 15
        } set {
            _ = newValue
        }
    }
}
