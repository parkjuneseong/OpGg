//
//  SearchView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/21.
////
//
import UIKit
//protocol SearchViewDelegate: AnyObject {
//
//}
class SearchView: UIViewController {

    @IBOutlet weak var searchTableView: UITableView!
    var index: Int = 0
    var delegate: ComponentProductCellDelegate?
    var list = ["adkasld", "72세병만이", "동휘가춤을춰요"]

    override func viewDidLoad() {
        searchTableView.register(UINib(nibName: "SearchViewCell", bundle: nil), forCellReuseIdentifier: "SearchViewCell")
    }
    
}

extension SearchView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: "SearchViewCell", for: indexPath) as? SearchViewCell
        cell?.bind(nickname: list[indexPath.row])
        return cell ?? SearchViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = CommonSearchHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 70))
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        70
    }
    
}

