//
//  PictureFullScreenViewController.swift
//  photo-app
//
//  Created by Marangi  on 30/10/2020.
//

import UIKit

class PictureFullScreenViewController: UIViewController {
  
  
  @IBOutlet weak var pictureFullScreen: UIImageView!
   
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
      pictureFullScreen.image = PicturesViewModel.selectedImage
      
     
      
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
