//
//  ViewController.swift
//  AutoImageSlide
//
//  Created by Toe Wai Aung on 12/4/18.
//  Copyright © 2018 com.kotoe.ymb. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AACarouselDelegate {
    @IBOutlet weak var carouselView: AACarousel!
    var titleArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageArray = ["img1.png","img2.png","img3.png"]
        carouselView.delegate = self
        carouselView.setCarouselData(paths: imageArray, isAutoScroll: true, timer: 1.0, defaultImage: "swift.png")
        carouselView.setCarouselOpaque(layer: false, pageIndicator: false)
    }
    
    //require method
    func downloadImages(_ url: String, _ index:Int) {
        
    }
    
    // OptionMethod
    
    //optional method (interaction for touch image)
    func didSelectCarouselView(_ view:AACarousel ,_ index:Int) {
        
        let alert = UIAlertView.init(title:"Alert" , message: titleArray[index], delegate: self, cancelButtonTitle: "OK")
        alert.show()
        
        //startAutoScroll()
        //stopAutoScroll()
    }
    
    //optional method (show first image faster during downloading of all images)
    func callBackFirstDisplayView(_ imageView: UIImageView, _ url: [String], _ index: Int) {
        
//        imageView.kf.setImage(with: URL(string: url[index]), placeholder: UIImage.init(named: "defaultImage"), options: [.transition(.fade(1))], progressBlock: nil, completionHandler: nil)
        
    }
    
    func startAutoScroll() {
        //optional method
        carouselView.startScrollImageView()
        
    }
    
    func stopAutoScroll() {
        //optional method
        carouselView.stopScrollImageView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



