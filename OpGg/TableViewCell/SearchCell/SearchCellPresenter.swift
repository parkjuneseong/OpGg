

import UIKit


class SearchCellPresenter {
    private let cellId = "SearchCell"
    private var model: Cell4Model?
    weak var delegate : SearchCellDelegate?

    
    func set(model: Cell4Model?) {
        self.model = model
    }
    
}

// MARK: - CommonTablePresenter
extension SearchCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? SearchCell else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 60
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
    var headerView: UIView? {
        get {
            let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 20))
            view.headerLabel.text = ""
            return view
        } set {
            _ = newValue
        }
    }

    var headerHeight: CGFloat {
        get {
            return 20
        } set {
            _ = newValue
        }
    }
}
