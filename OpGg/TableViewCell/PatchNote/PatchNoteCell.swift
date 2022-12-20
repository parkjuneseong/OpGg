//
//  PatchNoteCell.swift
//  op.gg
//
//  Created by June on 2022/12/11.
//

import UIKit

class PatchNoteCell: UITableViewCell {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
        var dataList : [PatchModel] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        collectionView.register(UINib(nibName: "PatchCollectionCell", bundle: nil), forCellWithReuseIdentifier: "PatchCollectionCell")
    }
    
}

extension PatchNoteCell: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PatchCollectionCell", for: indexPath as IndexPath) as? PatchCollectionCell
        cell?.bind(model:dataList[indexPath.row])
        return cell ?? PatchCollectionCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 260
        let height: CGFloat = 160 // collectionViewCell 높이
        
        return CGSize(width: width, height: height)
    }
}

