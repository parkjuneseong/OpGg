

import UIKit
class TmiCellPresenter{
    
    private let cellId = "TmiCell"
    private var model: TmiModel?
    
    func set(model: TmiModel?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension TmiCellPresenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? TmiCell else {
            return UITableViewCell()
        }
        cell.bind(model: model)
        
        return cell
    }
    
    func registerCell(to tableView: UITableView) {
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 80
        

    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
}


