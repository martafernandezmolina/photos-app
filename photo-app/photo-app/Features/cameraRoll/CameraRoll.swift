//
//  CameraRoll.swift
//  photo-app
//
//  Created by Marangi  on 03/11/2020.
//


import Foundation
import UIKit
import AVFoundation
import Photos
// hacer eso que sube y baja
//pantalla + boton, ver que funcione imagen de prueba

class CameraRoll:UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  var imagePicker: UIImagePickerController = UIImagePickerController()
  
  @IBOutlet weak var imageView: UIImageView!
  
  @IBAction func chooseFoto(_ sender: Any) {
    gallery()
    print("funciono")
    
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
 
    imageView.image = UIImage(named: "pic1")
  
  }

  //el image piker es es la pantalla.
 
  func gallery() {
    if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
                imagePicker.delegate = self
                imagePicker.sourceType = .savedPhotosAlbum
                imagePicker.allowsEditing = true
                present(imagePicker, animated: true, completion: nil)

            }
     }
  
}
 
