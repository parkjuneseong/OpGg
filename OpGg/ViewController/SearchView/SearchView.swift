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
    var list = [
        [ "nickname" : "소환사이름"]
    ]
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as! SearchCell
//
//
//
//            return cell
//        }

    
//    weak var delegate : SearchView
   

    override func viewDidLoad() {
        searchTableView.register(UINib(nibName: "SearchViewCell", bundle: nil), forCellReuseIdentifier: "SearchViewCell")
//        SearchView.delegate = self
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
        cell?.bind(nickname: list[indexPath.row]["nickname"] ?? "" )
        return cell ?? SearchViewCell()
        
    }
    
    
    
    
    
}

