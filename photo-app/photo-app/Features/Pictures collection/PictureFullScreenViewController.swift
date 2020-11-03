//
//  PictureFullScreenViewController.swift
//  photo-app
//
//  Created by Marangi  on 30/10/2020.
//

import UIKit

class PictureFullScreenViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
  
  var imagePickerClose: UIImagePickerController = UIImagePickerController()
  @IBOutlet weak var pictureFullScreen: UIImageView!
   
  @IBOutlet weak var switchOutlet: UISwitch!
  
  @IBAction func switchLike(_ sender: Any) {
    print (switchOutlet.isOn)
    
  }
 
  
  
  
  @IBAction func closeButton(_ sender: Any) {
     dismiss(animated: true, completion: nil)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
      pictureFullScreen.image = PicturesViewModel.selectedImage
      
  
    }
    
 
  
   
}
