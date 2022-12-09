

import UIKit

class SectionCell3Presenter {
    private let cellId = "SectionCell3"
    private var model: Cell3Model?
    
    func set(model: Cell3Model?) {
        self.model = model
    }
}

// MARK: - CommonTablePresenter
extension SectionCell3Presenter: CommonTablePresenter {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? SectionCell3 else {
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
