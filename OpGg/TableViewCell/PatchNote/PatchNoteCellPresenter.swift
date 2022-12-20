//
//  PatchNoteCellPresenter.swift
//  op.gg
//
//  Created by June on 2022/12/11.
//

import UIKit

class PatchNoteCellPresenter {
    private let cellId = "PatchNoteCell"
    private var model: [PatchModel]?
    
    func set(model: [PatchModel]?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension PatchNoteCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PatchNoteCell else {
            return UITableViewCell()
        }
        cell.dataList = model ?? []
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }

    var headerView: UIView? {
        get {
            let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
            view.headerLabel.text = "패치노트"
            view.headerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
            return view
        } set {
            _ = newValue
        }
    }

    var headerHeight: CGFloat {
        get {
            return 50
        } set {
            _ = newValue
        }
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

