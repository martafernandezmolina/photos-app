//
//  PictureFullScreenViewController.swift
//  photo-app
//
//  Created by Marangi  on 30/10/2020.
//

import UIKit

class PictureFullScreenViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
  
  @IBOutlet weak var meGustaOutlet: UILabel!
  
  
  
  
  var imagePickerClose: UIImagePickerController = UIImagePickerController()
  @IBOutlet weak var pictureFullScreen: UIImageView!
   
  @IBOutlet weak var labelSwitchAndImage: UILabel!
  
  
  @IBOutlet weak var outletTextField: UITextField!
  
  @IBAction func actionTextfield(_ sender: Any) {
  
    print(outletTextField.text ?? "escribe tu texto")
    
    
  }
  @IBOutlet weak var switchOutlet: UISwitch!
 
  
  @IBAction func switchLike(_ sender: Any) {
    
    if switchOutlet.isOn {
      
      ImagesData.likeForPosition(PicturesViewModel.selectedIndex ?? 0)
      print ("is on")
      
    } else {
      ImagesData.dislikeImageAtPosition(PicturesViewModel.selectedIndex ?? 0)
      print ("is offf")

    }
    
    
  }
  
  
  
  
  @IBAction func closeButton(_ sender: Any) {
     dismiss(animated: true, completion: nil)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
      meGustaOutlet.text = "I Like! ♥️"
      
      pictureFullScreen.image = PicturesViewModel.selectedImage
      
  
    }
  

  override func viewDidAppear(_ animated: Bool) {
   print ("estoy en didappear")

    outletTextField.text = ImagesData.getTitle(PicturesViewModel.selectedIndex!)

    print(PicturesViewModel.selectedIndex ?? "default")
    labelSwitchAndImage.text =  outletTextField.text

  
   
    
  }
    
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    ImagesData.setTitle(outletTextField.text!, position: PicturesViewModel.selectedIndex!)
  }

  
   
}
