//
//  SearchCell.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//
import UIKit

protocol SearchCellDelegate: AnyObject {
    func searchViewAction()
}


class SearchCell: UITableViewCell
    {
    @IBOutlet weak var search: UILabel!
    @IBOutlet weak var searchView: UIControl!
    weak var delegate : SearchCellDelegate?
    
    func bind(model: Cell4Model?) {
    // nil check
    guard let model = model else {
        return
    }
    search.text = model.search
}

    @IBAction func searchViewAction(_ sender: UIControl) {
        delegate?.searchViewAction()
    }
    
}




















//    @objc
//    func touchButton(_ sender: UILongPressGestureRecognizer) {
//        if sender.state != UIGestureRecognizer.State.ended{
//            return
//        }
//        let nextVC = SearchView()
//        nextVC.delegate = self
//    }
//    @IBAction func touchButton(_ sender: Any) {
//        let nextVC =  SearchView()
//        nextVC.delegate = self
//        self.present(nextVC, animated: true)
//    }
// 새로운 뷰컨트롤러가 나오게 하는 코드

//화면전환버튼
//    let nextVC =  SearchView()
//    nextVC.delegate = self
//    self.searchView(nextVC, animated: true)

//        let nextVc = SearchView()
//        self.navigationController?.pushViewController(nextVC, animated: true)
//        return



//}
