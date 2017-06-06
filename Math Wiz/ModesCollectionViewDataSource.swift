//
//  ModesCollectionViewDataSource.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/5/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import UIKit

class ModesCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kGameModes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ModesCollectionViewCell", for: indexPath) as! ModesCollectionViewCell
        
        cell.modeNameLabel.text = kGameModes[indexPath.row].name
        cell.modeLogoImageView.image = nil // TODO: assign image
        
        return cell
    }
    
}
