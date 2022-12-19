//
//  Sale.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/13.
//

import UIKit

class Sale: UITableViewCell {
    
    @IBOutlet weak var saleImage: UIImageView!
    @IBOutlet weak var discountShow: UIButton!
    @IBOutlet weak var during: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    @IBOutlet weak var salecollectionView: UICollectionView!
    var dataList : [SaleModel] = [] {
        didSet {
            salecollectionView.reloadData()
        }
    }
    
    func bind(model:SaleModel?){
        guard let model = model else {
            return
        }
        discountShow.setTitle(model.discountShow, for: .normal)
        saleImage.image = model.saleImage
        during.text = model.during
        discountPrice.text = model.discountPrice
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        salecollectionView.register(UINib(nibName: "SaleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SaleCollectionViewCell")
        
    }

    
}
extension Sale: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleCollectionViewCell", for: indexPath as IndexPath) as? SaleCollectionViewCell
//        cell?.bind(model: .init(price: "d", salecolImage: UIImage(named:"saleTitle") ?? UIImage()))
        
        cell?.bind(model:dataList[indexPath.row])
        return cell ?? SaleCollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 100
        let height: CGFloat = 128 // collectionViewCell 높이
        
        return CGSize(width: width, height: height)
    }
}

