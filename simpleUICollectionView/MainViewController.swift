//  ViewController.swift
//  simpleUICollectionView
//
//  Created by Vikentor Pierre on 2/15/18.
//  Copyright © 2018 Vikentor Pierre. All rights reserved.
//
import UIKit

class MainViewController: UIViewController {
    
    // when making a collection we first you have to init the uicollectionView and layout
    var collectionView:UICollectionView!
    var layout: UICollectionViewFlowLayout!
    
    // the SeaFood struct will be the collectionView Datasource
    let food = [SeaFood(image:"seafood1.jpeg", type: "seafood"),SeaFood(image:"seafood2", type: "seafood") ,SeaFood(image:"seafood3", type: "seafood"),SeaFood(image:"seafood4", type: "seafood"),SeaFood(image:"seafood5", type: "seafood"),SeaFood(image:"seafood6", type: "seafood"),SeaFood(image:"fish1", type: "fish"),SeaFood(image:"lobster", type: "lobster"),SeaFood(image:"octopus", type: "octopus")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupNav()
        setupCollectionView()
        
    }
    func setupNav(){
        navigationItem.title = "UICollectionView"
        
    }
    // initializing a collectionview and layout and adding it to the viewController
    func setupCollectionView (){
        layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        //pick the scrollDirection
        //layout.scrollDirection = .horizontal
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.register(CusCell.self, forCellWithReuseIdentifier: "foodCell")
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

// our DataSource Structure
struct SeaFood{
    var image:String?
    var type: String?
    
}

// we extend MainViewController to make our file clean and look nice 
extension MainViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    //specifying the number of section in the collectionView
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    // specifying the number of cell in the given section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return food.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! CusCell
        cell.food = food[indexPath.row]
        //cell.awakeFromNib()
        return cell
    }
}

