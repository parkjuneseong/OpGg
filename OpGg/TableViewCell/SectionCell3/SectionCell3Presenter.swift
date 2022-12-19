//
//  SectionCell3Presenter.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//

import UIKit


class FavoriteCellPresenter {
    private let cellId = "FavoriteCell"
    private var model: Cell3Model?
    
    func set(model: Cell3Model?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension FavoriteCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? FavoriteCell else {
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
    
    
}
