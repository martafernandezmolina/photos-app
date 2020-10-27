//
//  File.swift
//  photo-app
//
//  Created by Marangi  on 26/10/2020.
//

import Foundation
import UIKit
class PicturesViewController:UIViewController{
  
  @IBOutlet weak var collectionView: PicturesViewController!
  

}

extension PicturesViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   
    return 100
    
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath) // crea celdas reutilizadas
     cell.backgroundColor = .black
      
    // id que usa collectionview para saber que celdas se tiene q traer.
    
     return cell
    
  }
  
  
  //esta clase no solo hereda del uiview si no qe tmb implementa el datasource -> es decir metodos del datasource mediante protocolo
  

  
}
