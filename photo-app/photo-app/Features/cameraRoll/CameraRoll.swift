//
//  CameraRoll.swift
//  photo-app
//
//  Created by Marangi  on 03/11/2020.
//


import Foundation
import UIKit
// hacer eso que sube y baja
//pantalla + boton, ver que funcione imagen de prueba

class CameraRoll: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  
  @IBAction func chooseFoto(_ sender: Any) {
    
    print("funciono")
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    imageView.image = UIImage(named: "pic1")
    
    
  }

  
}
 
