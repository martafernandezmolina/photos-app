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
 var timer: Timer = Timer()
  
  override func viewDidLoad() {
     super.viewDidLoad()
  
     refreshPicture()
    
    
    
    //bloque forma parte param
   // mirar ->  Timer.scheduledTimer
      
      
      
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    timer.invalidate() // este es x si acaso
    timer = Timer.scheduledTimer(timeInterval: 5.0,
                          target: self, // esta en mi clase pq la funcion que quire que se ejecute es la refreshpicture
                          selector: #selector(refreshPicture) ,
                          userInfo: nil,
                          repeats: true) // repeticion para q se refresque
  
    print ("he entrado")
    
  }
  
 
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    timer.invalidate()
    print ("he salido")
    
  }
 
    
  func getRandomPicture() -> UIImage?{
    
    let randomNumber = Int.random(in: 0..<ImagesData.numOfImages())
    let img: UIImage? = ImagesData.imageForPosition(randomNumber)
    
    return img
    
  }
  
  
  @objc func refreshPicture() {   // imagen aleatoria = imgview
    
    UIView.transition(with: randomImage,
                      
                      duration: 0.5,
                      
                      options: .transitionCrossDissolve,
                      
                      animations: {
                        
                        self.randomImage.image = self.getRandomPicture()
                        
                      }, completion: { _ in
                        
                        print("Animation finished") // esto es cuando see acabe la animación, qué quieres que se ejecure. por ejemplo otro timer?
                        
                      })
    
  }
          
}
