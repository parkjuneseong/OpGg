//
//  MainViewController.swift
//  op.gg
//
//  Created by June on 2022/12/02.
//
//https://hururuek-chapchap.tistory.com/152 << 셀안에 tableView 넣는 방법

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var gmaer: UITextField!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var opggimage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.rowHeight = 200
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.register(UINib(nibName: "MyProfileCell", bundle: nil), forCellReuseIdentifier: "MyProfileCell")
       
        tableView.delegate = self
        tableView.dataSource = self
       
        opggimage.image = UIImage(named:"opgg")
        gmaer.returnKeyType = .done
        gmaer.borderStyle = .bezel
        gmaer.textColor = .black
        gmaer.backgroundColor = .white
        gmaer.text = "🔍 소환사 검색"
        
       
    }
}
extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
       
       
        return cell ?? TableViewCell()

    }
   
}
