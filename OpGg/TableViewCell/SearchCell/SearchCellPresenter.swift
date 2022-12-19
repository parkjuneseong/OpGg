

import UIKit


class SearchCellPresenter {
    private let cellId = "SearchCell"
    private var model: Cell4Model?
    
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
        return 45
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 1
    }
    
    
}
