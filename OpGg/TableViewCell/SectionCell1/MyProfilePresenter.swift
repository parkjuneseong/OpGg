//
//  SectionCell1Presenter.swift
//  op.gg
//
//  Created by 이청원 on 2022/12/09.
//

import UIKit

class MyProfilePresenter {
    private let cellId = "MyProfile"
    private var model: Cell1Model?
    
    func set(model: Cell1Model?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension MyProfilePresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? MyProfile else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 230
        
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
}
