//
//  vickAutolayout.swift
//  simpleUICollectionView
//
//  Created by Vikentor Pierre on 2/15/18.
//  Copyright © 2018 Vikentor Pierre. All rights reserved.
//

import UIKit
extension UIView{
    
    func vickFillSuperView(){
        vickAnchor(top: superview?.safeAreaLayoutGuide.topAnchor, leading: superview?.safeAreaLayoutGuide.leadingAnchor, bottom: superview?.safeAreaLayoutGuide.bottomAnchor, trailing: superview?.safeAreaLayoutGuide.trailingAnchor)
    }
    
    // this function gives a view another views width and height
    func vickAnchorSize(to view: UIView){
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    func vickAnchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size:CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading {
            
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
            
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
            
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
            
        }
        
        
        if size.width != 0{
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
            
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
            
        }
        
        
        
    }
    var safeTopAnchor: NSLayoutYAxisAnchor{
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    var safeLeadingAnchor: NSLayoutXAxisAnchor{
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.leadingAnchor
        }
        return leadingAnchor
    }
    var safeTrailingAnchor: NSLayoutXAxisAnchor{
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.trailingAnchor
        }
        return trailingAnchor
    }
    var safeBottomAnchor: NSLayoutYAxisAnchor{
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
    
}//end extension
