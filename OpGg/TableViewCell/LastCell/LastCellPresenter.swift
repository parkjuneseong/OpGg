//
//  LastCellPresenter.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//

import UIKit
class LastCellPresenter{
    
    private let cellId = "LastCell"
    private var model: LastModel?
    
    func set(model: LastModel?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension LastCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? LastCell else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 110
        

    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }

    
    
    
var headerView: UIView? {
    get {
        let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
        view.headerLabel.text = "더 많은 정보 구경하기"
        view.headerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)

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

