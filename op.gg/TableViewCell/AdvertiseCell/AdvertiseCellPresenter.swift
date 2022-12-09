

import UIKit

class AdvertiseCellPresenter {
    private let cellId = "AdvertiseCell"
    private var model: Cell2Model?
    
    func set(model: Cell2Model?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension AdvertiseCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? AdvertiseCell else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 280
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
    var headerView: UIView? {
        get {
            let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
            view.headerLabel.text = "제목제목제목제목제목제목"
            
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
}
