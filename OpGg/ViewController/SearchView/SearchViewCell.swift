//
//  SearchViewCell.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/26.
//

import UIKit

class SearchViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!

    
//    var headerView: UIView? {
//        get {
//            let view = CommonSearchHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
//            view.searchHeaderView.text = "최근 검색"
//            view.searchHeaderView.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
//            return view
//        } set {
//            _ = newValue
//        }
//    }
//
//    var headerHeight: CGFloat {
//        get {
//            return 50
//        } set {
//            _ = newValue
//        }
//    }
//    
    func bind(nickname:String){
        name.text = nickname
        
    }
   
}
extension SearchViewCell{
  
    
    func height(at indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    var headerView: UIView? {
          get {
              let view = CommonSearchHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
              view.searchHeaderView.text = "최근 검색"
              view.searchHeaderView.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
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
