//
//  RandomPictureViewController.swift
//  photo-app
//
//  Created by Marangi  on 02/11/2020.
//

import Foundation
import UIKit
class RandomPictureViewController: UIViewController {
  
  
  @IBOutlet weak var randomImage: UIImageView!
  
  override func viewDidLoad() {
     super.viewDidLoad()
    
    //randomImage.image = PicturesViewModel.selectedImage
  
    //randomImage.image = UIImage (named: "pic1")
//    let randomNumber = Int.random(in: 0..<ImagesData.numOfImages())
//    let img: UIImage? = ImagesData.imageForPosition(randomNumber)
//    imageView.image = img
    
    getRandomPicture()
    
      
    }
    
    
  func getRandomPicture() -> UIImage?{
    
    let randomNumber = Int.random(in: 0..<ImagesData.numOfImages())
    let img: UIImage? = ImagesData.imageForPosition(randomNumber)
    
    return img
    
  }
  
}
