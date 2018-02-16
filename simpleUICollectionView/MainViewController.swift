//
//  ViewController.swift
//  simpleUICollectionView
//
//  Created by Vikentor Pierre on 2/15/18.
//  Copyright © 2018 Vikentor Pierre. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // when making a collection we first you have to init the uicollectionView and layout
    var collectionView:UICollectionView! // our uicollectionView var
    var layout: UICollectionViewFlowLayout! // the layout is gonna be of flowlayout
    // the SeaFood struct will be the collectionView Datasource
    
    let food = [SeaFood(image:"seafood1", type: "seafood"), SeaFood(image:"seafood2", type: "seafood")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupNav()
        setupCollectionView()
        
    }
    func setupNav(){
        navigationItem.title = "UICollectionView"
        
    }
    func setupCollectionView (){
        layout = UICollectionViewFlowLayout()
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .blue
        view.addSubview(collectionView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


struct SeaFood{
    var image:String?
    var type: String?
    
}

extension MainViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return food.count
    }
}

