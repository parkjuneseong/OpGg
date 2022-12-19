//
//  SalePresenter.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//


import UIKit
class SalePresenter{
    
    private let cellId = "Sale"
    private var model: [SaleModel]?
    
    func set(model: [SaleModel]?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension SalePresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? Sale else {
            return UITableViewCell()
        }
        cell.dataList = model ?? []
        cell.bind(model: model?[indexPath.row]
        )
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 380
        
        
    }
    //    func width(at indexPath: IndexPath) -> CGFloat{
    //        return 1
    //    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
    
    var headerView: UIView? {
        get {
            let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
            view.headerLabel.numberOfLines = 2
            view.headerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
            view.headerLabel.text = "놓치지 마세요! \n지금 할인중인 스킨 & 챔피언"
            
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
            let view = CommonFooterView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
            view.footerLabel.numberOfLines = 2
            view.footerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
            view.footerLabel.text = "놓치지 마세요! \n지금 할인중인 스킨 & 챔피언"
            
            return view
        } set {
            _ = newValue
        }
    }
    
    var footerHeight: CGFloat {
        get {
            return 50
        } set {
            _ = newValue
        }
    }
}





