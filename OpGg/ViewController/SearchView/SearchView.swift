//
//  SearchView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/21.
////
//

import UIKit
import SwiftUI

class SearchView: UIViewController {
    
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var backButton: UIImageView!
    @IBOutlet weak var searchTableView: UITableView!
    var index: Int = 0
    var list = [
        [ "nickname" : "adkasld", "tear" : "P4", "image" : "lcw",
          "image2" : "pl" ],
        [ "nickname" : "72세병만이", "tear" : "P4", "image" : "icon",
          "image2" : "pl" ],
        [ "nickname" : "동휘가춤을춰요", "tear" : "G4", "image" : "hwi",
          "image2" : "gold" ],
        ["nickname" : "김인태" , "tear" : "D4" , "image" : "kit", "image2" : "dia" ],
        ["nickname" : "김준후" , "tear" : "C1" , "image" : "kjh", "image2" : "chall" ],
        ["nickname" : "이진욱" , "tear" : "D4" , "image" : "ljw", "image2" : "dia" ],
        ["nickname" : "최봉기" , "tear" : "G4" , "image" : "cbk", "image2" : "gold" ],
        ["nickname" : "주형일" , "tear" : "G4" , "image" : "jhi", "image2" : "gold" ],
        ["nickname" : "안상수" , "tear" : "P4" , "image" : "ass", "image2" : "pl" ],
        ["nickname" : "박창규" , "tear" : "G4" , "image" : "pcg", "image2" : "gold" ],
        ["nickname" : "이현승" , "tear" : "S3" , "image" : "lhs", "image2" : "sil" ]
        
    ]
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        self.view.endEditing(true)
        // 배경 터치시 키보드 내려감
    }
    @objc func backTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = TabBarViewController()
        self.navigationController?.popViewController(animated: true)//근데 드래그는 안돼;
    }
    
    override func viewDidLoad() {
        field.addLeftPadding()
        field.addleftimage(image: UIImage(named:"search") ?? UIImage())
        searchTableView.register(UINib(nibName: "SearchViewCell", bundle: nil), forCellReuseIdentifier: "SearchViewCell")
        let tapImageViewRecognizer
        = UITapGestureRecognizer(target: self, action: #selector(backTapped(tapGestureRecognizer:)))
        //이미지뷰가 상호작용할 수 있게 설정
        backButton.isUserInteractionEnabled = true
        //이미지뷰에 제스처인식기 연결
        backButton.addGestureRecognizer(tapImageViewRecognizer)
        
        
        
    }
    //    override func viewWillAppear(_ animated: Bool) {
    ////        field.becomeFirstResponder()//화면에 바로 뜨는 키보드
    //        field.canBecomeFocused//누르먄 뜨는 키보드 근데 unused 뜨는데 사용됨 이게아님 ?
    //
    //    }
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
        cell?.bind(nickname: list[indexPath.row]["nickname"] ?? "" , tear :list[indexPath.row]["tear"] ?? "", image: UIImage(named: list[indexPath.row]["image"] ?? "" ) ?? UIImage(),image2: UIImage(named: list[indexPath.row]["image2"] ?? "" ) ?? UIImage())
        return cell ?? SearchViewCell()
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = CommonSearchHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}


//TextField에 padding 넣어 이미지 넣기 근데 왼쪽으로 쫌 떨어뜨리게 어떻게 함 ?
extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    func addleftimage(image:UIImage) {
        let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        leftimage.image = image
        self.leftView = leftimage
        self.leftViewMode = .always
    }
}

extension SearchView: UITextFieldDelegate {
    // ✅ textField 에서 편집을 시작한 후
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 키보드 업
        field.becomeFirstResponder()
        field.delegate = self
        // 입력 시 textField 를 강조하기 위한 테두리 설정
        
    }
    
    // ✅ textField 에서 편집이 끝난 후(first responder 를 resign 한 후)
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //// 입력 완료시 총 4개의 텍스트필드가 비어있는지 여부를 판단해서 notification 을 보냄.
    //// 비어있지 않다면 특정 버튼을 활성화 시키는 notification 을 보낸다.
    //        if field.hasText {
    //            NotificationCenter.default.post(name: .field, object: false)
    //        } else {
    //            NotificationCenter.default.post(name: .field, object: true)
    //        }
    //// 입력 종료시 테두리 없애기
    //        field.borderWidth = 0
    //    }
    
    // ✅ 텍스트필드에 대한 return 버튼 누름처리를 할 것인지 묻는다.(true: 처리O, false: 처리X)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 키보드 다운
        //        let tapGesture = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        //        self.view.addGestureRecognizer(tapGesture)
        // resignFirstResponder() 는 first responder 를 포기하는 메서드다. 리턴값이 Bool 이고 기본적으로 true 를 구현한다.
        return field.resignFirstResponder()
    }
    
}
//이씨발 됫다안됫다해 ㅈ좆같게
