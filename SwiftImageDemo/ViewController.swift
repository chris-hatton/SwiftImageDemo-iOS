//
//  ViewController.swift
//  SwiftImageDemo
//
//  Created by Christopher Hatton on 01/08/2015.
//  Copyright © 2015 Chris Hatton. All rights reserved.
//

import UIKit
import SwiftImage

class ViewController: UIViewController
{
    @IBOutlet var imageView : UIImageView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(self.imageView?.bounds)
        
        let inputUIImage  : UIImage = UIImage(named: "swiftLogo.png")!
        let outputUIImage : UIImage
        
        do // Test of the conversion process to & from 'GenericImage' format. Should result in an unchanged image.
        {
            let genericImage : GenericImage<RGBPixel> = inputUIImage.toGenericImage()
            
            outputUIImage = genericImage.toUIImage()
        }
        
        imageView!.image = outputUIImage
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

