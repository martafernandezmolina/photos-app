//
//  ImagesData.swift
//  photo-app
//
//  Created by Marangi  on 29/10/2020.
//

import Foundation
import UIKit   // static porq puedes acceder como propiedad sin instancia.

class ImagesData {
    static func numOfImages() -> Int {
//      let urls =  imagesUrl()?.count ?? 0
//      return urls
      
//      if let url2:[URL] = imagesUrl() {
//
//        return url2.count
//      }
//      return 0
 
      guard let urls:[URL] =  imagesUrl() else { return 0}
      
      return urls.count
        
    }
    
    static func imagesUrl() -> [URL]? {
        return Bundle.main.urls(forResourcesWithExtension: "jpg", subdirectory: nil)
      
    }
  
  
  
  
      static func imageForUrl(_ url: URL) -> UIImage? {    // aqui pasariamos un for in para pasar urls por un for in y luego me las da por parametro y lo convierto en uimage
     
        let imageName:String = url.lastPathComponent // te da el nombre del archivo
       
           return  UIImage(named: imageName)
      }


    
    static func imageForPosition(_ position: Int) -> UIImage? {
        let arrayIndex: Int = position % numOfImages()
        if arrayIndex < numOfImages() {
            if let url: URL = imagesUrl()?[arrayIndex] {
                return imageForUrl(url)
            }
        }
        return nil
    }
  

  }



  

