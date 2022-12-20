//
//  OrderGame.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/15.
//

import UIKit

class OrderGame: UITableViewCell {
    
        
    @IBOutlet weak var ordercollectionView: UICollectionView!
    var dataList : [OrderModel] = [] {
        didSet {
            ordercollectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        ordercollectionView.register(UINib(nibName: "OrderGameCollectionCell", bundle: nil), forCellWithReuseIdentifier: "OrderGameCollectionCell")
    }
    
}

extension OrderGame: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 0
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OrderGameCollectionCell", for: indexPath as IndexPath) as? OrderGameCollectionCell
        cell?.bind(model:dataList[indexPath.row])
        return cell ?? OrderGameCollectionCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 150
        let height: CGFloat = 100 // collectionViewCell 높이
        
        return CGSize(width: width, height: height)
    }
}

