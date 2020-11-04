//
//  File.swift
//  photo-app
//
//  Created by Marangi  on 26/10/2020.
//

import Foundation
import UIKit
class PicturesViewController: UIViewController { // es un uiviewcontroller creado por nosotros.
//  var cellWidth:CGFloat = 75   // valores por defecto al iniciar la aplicación.
//  var cellHeight:CGFloat = 75   // valores por defecto al iniciar la aplicación.
  var numOfHorizontalCells: CGFloat = 5.0
  var marginBetweenCells: CGFloat = 4.0
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var stackHorizontal: UIStackView!
  @IBOutlet weak var year: UIButton!
  @IBOutlet weak var day: UIButton!
  @IBOutlet weak var month: UIButton!
  @IBOutlet weak var allPhotos: UIButton!
  

  private let reuseIdentifier = String(describing: PictureCell.self)

  
  
  @IBAction func button1Touched(_ sender: UIButton) {
    
    selectionateActiveButton(sender)
    numOfHorizontalCells = 1
//    cellWidth = 75
//    cellHeight = 75
    collectionView.reloadData()
    print("boton1")
  }
  
  
  @IBAction func button2Touched(_ sender: UIButton) {
    selectionateActiveButton(sender)
    numOfHorizontalCells = 3.0
//    cellWidth = 100
//    cellHeight = 100
    collectionView.reloadData()
    print("boton2")
    
  }
  
  
  @IBAction func button3Touched(_ sender: UIButton) {
    selectionateActiveButton(sender)
    numOfHorizontalCells = 5.0
//    cellWidth = 250
//    cellHeight = 250
    collectionView.reloadData()
    print("boton3")
  }
  
  
  @IBAction func button4Touched(_ sender: UIButton) {
    selectionateActiveButton(sender)
    numOfHorizontalCells = 7
//    cellWidth = 400
//    cellHeight = 400
    collectionView.reloadData()
    print("boton4")
  }
  // reuseIdentifier devuelve el nombre de mi clse y crea PictureCell => es ifual a poner reuseIdentificer = PictureCell
  
  // MARK -
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stackHorizontal.layer.cornerRadius = 10
    
//    year.isSelected = false
//    day.isSelected = false
//    month.isSelected = false
//    allPhotos.isSelected = false
    
   
    
    // sender es el boton que he fet click
    //
    //    func favorited(button: UIButton) {
    //
    //      button.isSelected = true
    //      button.backgroundColor =
    //    }
    
    
    // viewdidload se llama siempre al cargar la pantalla. en nib guarda la vista del xib.
    // le dices que carge el xib en NIB (forma antigua) y le digo que use mis picturesCells como propias
    let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
    // aqui estoy registrando mi nib y por eso uso la cel q quiero. registro el  picturecel que esta contenida en reuseIdentidier.
    
    // con el registro le dices que tendran ese nib los que tengan el identificador reuseIdentifier
  }
  
  
  func selectionateActiveButton(_ sender: UIButton) {
    year.isSelected = false
    day.isSelected = false
    month.isSelected = false
    allPhotos.isSelected = false
    sender.isSelected = true
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)  // le pasamos los mismos parametros del super.
    // no esta directamente en la uicollectionview

         if UIDevice.current.orientation.isLandscape {
             print("Landscape")
          if let scrollLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{

            scrollLayout.scrollDirection = .horizontal


          }


         } else if UIDevice.current.orientation.isPortrait {
             print("Portrait")

          if let  scrollLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            // esto es conversion de tipos

            scrollLayout.scrollDirection = .vertical


          }

         } else if UIDevice.current.orientation.isFlat {
          if let  scrollLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{

            scrollLayout.scrollDirection = .vertical


          }


         }
     }
  
}


// MARK: - extension PicturesViewController: UICollectionViewDataSource

extension PicturesViewController: UICollectionViewDataSource {
  // delegado sobre el dataSource para que se entere de lo q pasa
  // extiendo mi clase añadiendole comportamientos. extension q implementan protocolos. y se que aqui solo van las cosas del DataSource.
  
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    return ImagesData.numOfImages()
    
  }
  
//  func rotated() {
//      if UIDevice.current.orientation.isLandscape {
//          print("Landscape")
//      } else {
//          print("Portrait")
//      }
 
   
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) // crea celdas reutilizadas
    cell.backgroundColor = .black
    // confirmame que eres de tipo cell i guardate ahí
    if let pictureCell = (cell as? PictureCell){
      //      print(pictureCell.label.text)
       pictureCell.label.text = String(indexPath.item)
      //let image1 = UIImage(named:"pic2.jpg")
      // pictureCell.imageView.image = UIImage(named: "pic2")
      // if.row pom imagen pero si
      pictureCell.imageView.image = ImagesData.imageForPosition(indexPath.row)
       
      
      
      
      
      // mi celda tiene  una imgagen imagen que es mi imageView i ahora le paso =  imagedata. imageporposition me develve un entero y me da la imagen que le corresponde al 3.
      // pictureCell.label.text = indexPath.item
      // pictureCell.label.text = indexPath.row
      // print(indexPath.section)
//      if indexPath.row % 2  == 0 {
//
//        pictureCell.imageView.image = UIImage(named: "pic2")
//
//      } else{
//
//        pictureCell.imageView.image = UIImage(named: "pic1")
//
//      }
//
//
      
  
    
      
      
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


// MARK: - extension PicturesViewController:UICollectionViewDelegate
extension PicturesViewController:UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print (indexPath)
    print(indexPath.item)
    print(indexPath.row)
    PicturesViewModel.selectedImage = ImagesData.imageForPosition(indexPath.row)
    PicturesViewModel.selectedIndex = indexPath.row

    performSegue(withIdentifier: "segueToDetail", sender: nil)
    //extension de la clase Pictureview que usa protocolo q implementa esta funcionalidad.
    // escribir directamente didSelect
    // super importante porq cuando pinchas tenemos q saber esa info.
  }
  
}


extension PicturesViewController:UICollectionViewDelegateFlowLayout {
  // adapta visualmente la collectionView y hay que implementar metodos, que solo hay que bsuscarlo.
  
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let cellWidth = (collectionView.frame.size.width - (numOfHorizontalCells - 1) * marginBetweenCells) / numOfHorizontalCells

        return CGSize(width: cellWidth, height: cellWidth)

    }
    
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

          return marginBetweenCells

      }

      

      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

          return marginBetweenCells

      }
  



  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1


  }
}
  
  
  
  
//  [12:07] Cesc
//
//
//  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//
//          super.viewWillTransition(to: size, with: coordinator)
//
//
//
//  // Solucion guard
//
//          guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {​​​​​​​​ return }
//
//
//
//  if UIDevice.current.orientation.isLandscape {
//
//              layout.scrollDirection = .horizontal
//
//          }​​​​​​​​ else if UIDevice.current.orientation.isPortrait {
//
//              layout.scrollDirection = .vertical
//
//          }
//
//
//
//  // Solucion 1
//
//  if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//
//  if UIDevice.current.orientation.isLandscape {
//
//                  layout.scrollDirection = .horizontal
//
//              }​​​​​​​​ else if UIDevice.current.orientation.isPortrait {
//
//                  layout.scrollDirection = .vertical
//
//              }
//
//          }
//
//
//
//  // Solucion 2
//
//  if UIDevice.current.orientation.isLandscape {
//
//  print("Orientation => Landscape")
//
//              if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//
//                  layout.scrollDirection = .horizontal
//
//              }
//
//          }​​​​​​​​ else if UIDevice.current.orientation.isPortrait {
//
//  print("Orientation => Portrait")
//
//              if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//
//                  layout.scrollDirection = .vertical
//
//              }

    

  
  
  
  
  
  
  
  
  
  
  




