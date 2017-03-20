//
//  ViewController.swift
//  SwiftImageDemo
//
//  Created by Christopher Hatton on 01/08/2015.
//  Copyright © 2015 Chris Hatton. All rights reserved.
//

import UIKit

import SwiftImage
import SwiftImage_iOS

class ViewController: UIViewController
{
    @IBOutlet var imageView : UIImageView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(self.imageView?.bounds as Any)
        
        let inputUIImage  : UIImage = UIImage(named: "swiftLogo.png")!
        let outputUIImage : UIImage
        
        do // Test of the conversion process to & from 'GenericImage' format. Should result in an unchanged image.
        {
            let pixelBuffer : CVPixelBuffer = try inputUIImage.convert()
            let genericImage : GenericImage<RGBColor> = try pixelBuffer.convert()
            
            
            
            genericImage.set( x: 4, y: 4, color: try UIColor.red.convert() )
            
            outputUIImage = try genericImage.convert()
            
            imageView!.image = outputUIImage
        }
        catch
        {
            return
        }
    }
}

