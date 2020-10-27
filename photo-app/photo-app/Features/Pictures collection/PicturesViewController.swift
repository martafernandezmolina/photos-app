//
//  File.swift
//  photo-app
//
//  Created by Marangi  on 26/10/2020.
//

import Foundation
import UIKit
class PicturesViewController:UIViewController{
  
  @IBOutlet weak var collectionView: UICollectionView!
  private let reuseIdentifier = String(describing: PictureCell.self)
  
// reuseIdentifier devuelve el nombre de mi clse y crea PictureCell => es ifual a poner reuseIdentificer = PictureCell
  
  override func viewDidLoad() {
    // le dices que carge el xib en NIB (forma antigua) y le digo que use mis picturesCells como propias
    let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
    
  }
  
  
}

extension PicturesViewController: UICollectionViewDataSource {
  // delegado sobre el dataSource para que se entere de lo q pasa
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   
    return 100
    
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) // crea celdas reutilizadas
     cell.backgroundColor = .black

      
    // id que usa collectionview para saber que celdas se tiene q traer.
    
     return cell
  }

  //esta clase no solo hereda del uiview si no qe tmb implementa el datasource -> es decir metodos del datasource mediante protocolo
}
  extension PicturesViewController:UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      print (indexPath)
      print(indexPath.item)
      print(indexPath.row)
      
       // escribir directamente didSelect
    }
       
    }
 
  

