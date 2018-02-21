//
//  File.swift
//  simpleUICollectionView
//
//  Created by Vikentor Pierre on 2/16/18.
//  Copyright © 2018 Vikentor Pierre. All rights reserved.
import UIKit
// this class is our custom uicollectionview cell, it just add an uiimageview into the cell
class CusCell: UICollectionViewCell{
    
    var foodImageView:UIImageView!
    
    var food:SeaFood? {
        didSet{
            guard let foodimg = food?.image else {return}
            foodImageView.image = UIImage(named: foodimg)
        }

    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCusCellLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCusCellLayout(){
        foodImageView = UIImageView(frame: contentView.frame)
        foodImageView.contentMode = .scaleAspectFill
        foodImageView.clipsToBounds = true
        contentView.addSubview(foodImageView)    }
} //endOfClass

