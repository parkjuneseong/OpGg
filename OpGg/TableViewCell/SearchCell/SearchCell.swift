//
//  SearchCell.swift
//  op.gg
//
//  Created by June on 2022/12/09.
//

import UIKit

class SearchCell: UITableViewCell/*SearchViewDelegate*/ {
    @IBOutlet weak var search: UILabel!
    @IBOutlet weak var searchView: UIControl!
//    weak var delegate : SearchViewDelegate?
    
    @IBAction func searchView(_ sender: UIButton) {
//        self.delegate = SearchView
//        SearchView.delegate = self
//        self.delegate?.searchView(index: index)
//        var index: Int = 0
//        var delegate: ComponentProductCellDelegate?
        //        let rootVC = SearchView()
        //                self.present(rootVC,animated:true)
    }
    
    
    
    
    
    func viewDidload(){
//                super.viewDidload()
        
//        searchButton.setTitle("소환사 검색", for: .normal)
//        searchButton.tintColor = .black
//        searchButton.addSubview(searchButton)
//        searchButton.backgroundColor = .white
//        searchButton.frame = CGRect(x: 110, y: 110, width: 50, height: 20)
//        searchButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
//    @objc private func didTapButton(){
////        let rootVC = SearchView()
////        let naVC = UINavigationController(rootViewController: rootVC)
//
////        searchView.delegate = self
////        self.navigationController?.pushViewController(rootVC, animated: true)
//        //        naVC = modalPresentationStyle = .fullScreen
//        //        self.present(naVC.self,animated: true)
//    }
    
    func bind(model: Cell4Model?) {
        // nil check
        guard let model = model else {
            return
        }
        search.text = model.search
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
