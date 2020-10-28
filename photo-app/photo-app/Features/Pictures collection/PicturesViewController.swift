//
//  File.swift
//  photo-app
//
//  Created by Marangi  on 26/10/2020.
//

import Foundation
import UIKit
class PicturesViewController:UIViewController{ // es un uiviewcontroller creado por nosotros.
  
  @IBOutlet weak var collectionView: UICollectionView!
  private let reuseIdentifier = String(describing: PictureCell.self)
  private let marginBetweenCells: CGFloat = 4.0
  
// reuseIdentifier devuelve el nombre de mi clse y crea PictureCell => es ifual a poner reuseIdentificer = PictureCell
  
  override func viewDidLoad() { // viewdidload se llama siempre al cargar la pantalla. en nib guarda la vista del xib.
    // le dices que carge el xib en NIB (forma antigua) y le digo que use mis picturesCells como propias
    let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
    // aqui estoy registrando mi nib y por eso uso la cel q quiero. registro el  picturecel que esta contenida en reuseIdentidier.
    
    // con el registro le dices que tendran ese nib los que tengan el identificador reuseIdentifier
  }
  
  
}

extension PicturesViewController: UICollectionViewDataSource {
  // delegado sobre el dataSource para que se entere de lo q pasa
  // extiendo mi clase añadiendole comportamientos. extension q implementan protocolos. y se que aqui solo van las cosas del DataSource.
  
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 
    return 100
    
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) // crea celdas reutilizadas
     cell.backgroundColor = .black
                            // confirmame que eres de tipo cell i guardate ahí
    if let pictureCell = (cell as? PictureCell){
//      print(pictureCell.label.text)
   //  pictureCell.label.text = String(indexPath.item)
      //let image1 = UIImage(named:"pic2.jpg")
     // pictureCell.imageView.image = UIImage(named: "pic2")
     // if.row pom imagen pero si 
    
      // pictureCell.label.text = indexPath.item
       // pictureCell.label.text = indexPath.row
     // print(indexPath.section)
      
      if indexPath.row % 2  == 0 {
        
        pictureCell.imageView.image = UIImage(named: "pic2")
        
      } else{
        
        pictureCell.imageView.image = UIImage(named: "pic1")
        
      }
    
      
    //  pictureCell.imageView.image = indexPath.row % 2 == 0 ?  UIImage(named: "pic2"): UIImage(named: "pic1")
      //  pictureCell.imageView.image = indexPath.row % 2 == 0 ? imagen1 : imagen2
      
      // se puede hacer tmb con la funcion que devuelva  un bool true o false.
          }
    
     // crea/ devuelve Cells
    // representacion visual celda super importnt
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
        //extension de la clase Pictureview que usa protocolo q implementa esta funcionalidad.
       // escribir directamente didSelect
      // super importante porq cuando pinchas tenemos q saber esa info.
    }
       
  }
    extension PicturesViewController:UICollectionViewDelegateFlowLayout {
   // adapta visualmente la collectionView y hay que implementar metodos, que solo hay que bsuscarlo.
      
      func collectionView(_: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
    
         return CGSize.init(width:300, height:300)
        
      }

      func collectionView(_: UICollectionView, layout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt: Int) -> CGFloat {
        
        return marginBetweenCells
              
    }
      
      func collectionView(_: UICollectionView, layout: UICollectionViewLayout, minimumLineSpacingForSectionAt: Int) -> CGFloat {
      
        return marginBetweenCells
    
        
      }
      
      
      func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
        
      }
      
    
  
      
      
      
        }
