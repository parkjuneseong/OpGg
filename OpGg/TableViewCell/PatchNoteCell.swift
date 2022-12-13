//
//  PatchNoteCell.swift
//  op.gg
//
//  Created by June on 2022/12/11.
//

import UIKit

class PatchNoteCell: UITableViewCell {
    
  
    @IBOutlet weak var patchCell: UICollectionView!
    
    @IBOutlet weak var ssss: UILabel!
//    var collectionView: UICollectionView!
//    let layout = UICollectionViewFlowLayout()
//    patchCell = UICollectionView(frame: .zero, collectionViewLayout: patchCell.self)
//    
     func registerPatch() {
       
//
        patchCell.register(UINib(nibName: "PatchCollectionCell", bundle: nil), forCellWithReuseIdentifier: "PatchCollectionCell")
    }
    func bind(model: PatchModel?) {
        // nil check
       
        guard let model = model else {
            return 
        }
        ssss.text = model.ssss
//        patchCell.register(UINib(nibName: "PatchCollectionCell", bundle: nil), forCellWithReuseIdentifier: "PatchCollectionCell")
//

    }
    
}
extension PatchNoteCell: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PatchCollectionCell", for: indexPath as IndexPath) as? PatchCollectionCell
        return cell ?? PatchCollectionCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     //아이패드 공백 및 가로모드 3칸으로 만들기 해야됨
            
                let width: CGFloat = UIScreen.main.bounds.size.width - 40
                let height: CGFloat = 270 // collectionViewCell 높이
                
                return CGSize(width: width, height: height)
//    func collectionView(_ collectionView: UICollectionView, UICollectionViewDelegateFlowLayout{
//
//           let layout = UICollectionViewFlowLayout()
//           layout.minimumLineSpacing = 10
//
//           layout.scrollDirection = .vertical
//           layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//
//           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//
//           return cv
//    }()
}
        }
    
