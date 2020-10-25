//
//  PhotosGaleryCollectionViewController.swift
//  PosysaevSA_HW2.4
//
//  Created by Sergei Posysaev on 25.10.2020.
//

import UIKit
 

class PhotosGaleryCollectionViewController: UICollectionViewController {
//
//    let images = ["scr1", "scr2", "scr3", "scr4", "scr5", "scr6", "scr7",
//                         "scr8", "scr9", "scr10", "scr11", "scr12", "scr13",
//                         "scr14", "scr15"]
   
    let images = PhotosSet.addNameImages()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        
        let imageName = images[indexPath.item]
        let image = UIImage(named: imageName)
        cell.scrPhotoView.image = image
        //cell.backgroundColor = .black
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "picPhotoSegue" {
            let photoVC = segue.destination as! PhotoViewController
            let cell = sender as! PhotoCollectionViewCell
            photoVC.image = cell.scrPhotoView.image
        }
    }

}

extension PhotosGaleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 2
        let paddingWidth = 20 * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    
}
