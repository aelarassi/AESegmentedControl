//
//  SegmentioViewController.swift
//  AESegmentedControl_Example
//
//  Created by ABDELAZiZ EL ARASSi on 26/12/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//


import UIKit
import AESegmentedControl

class SegmentioViewController: UIViewController {
    
    @IBOutlet weak var segmentControl1: AESegmentedControl!
    @IBOutlet weak var segmentControl2: AESegmentedControl!
    @IBOutlet weak var segmentControl3: AESegmentedControl!
    @IBOutlet weak var segmentControl4: AESegmentedControl!
    @IBOutlet weak var segmentControl5: AESegmentedControl!
    @IBOutlet weak var segmentControl6: AESegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControl1.append(title: "Tornado")
        segmentControl1.append(title: "Earthquakes")
        segmentControl1.append(title: "Extreme heat")
        segmentControl1.append(title: "Eruption")
        segmentControl1.append(title: "Floods")
        segmentControl1.append(title: "Wildfires")
        
        segmentControl2.append(image: #imageLiteral(resourceName: "tornado"))
        segmentControl2.append(image: #imageLiteral(resourceName: "earthquakes"))
        segmentControl2.append(image: #imageLiteral(resourceName: "heat"))
        segmentControl2.append(image: #imageLiteral(resourceName: "eruption"))
        segmentControl2.append(image: #imageLiteral(resourceName: "floods"))
        segmentControl2.append(image: #imageLiteral(resourceName: "wildfires"))
        segmentControl2.segmentWidth = 128
        
        segmentControl3.append(title: "Tornado")
            .set(image: #imageLiteral(resourceName: "tornado"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl3.append(title: "Earthquakes")
            .set(image: #imageLiteral(resourceName: "earthquakes"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl3.append(title: "Extreme heat")
            .set(image: #imageLiteral(resourceName: "heat"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl3.append(title: "Eruption")
            .set(image: #imageLiteral(resourceName: "eruption"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl3.append(title: "Floods")
            .set(image: #imageLiteral(resourceName: "floods"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl3.append(title: "Wildfires")
            .set(image: #imageLiteral(resourceName: "wildfires"))
            .set(image: .top)
            .set(padding: 16)

        segmentControl4.append(title: "Tornado")
            .set(image: #imageLiteral(resourceName: "tornado"))
            .set(image: .bottom)
            .set(padding: 16)
        segmentControl4.append(title: "Earthquakes")
            .set(image: #imageLiteral(resourceName: "earthquakes"))
            .set(image: .top)
            .set(padding: 16)
        segmentControl4.append(title: "Extreme heat")
            .set(image: #imageLiteral(resourceName: "heat"))
            .set(image: .right)
        segmentControl4.append(title: "Eruption")
            .set(image: #imageLiteral(resourceName: "eruption"))
            .set(image: .left)
        segmentControl4.append(title: "Floods")
            .set(image: #imageLiteral(resourceName: "floods"))
            .set(image: .bottom)
            .set(padding: 16)
        segmentControl4.append(title: "Wildfires")
            .set(image: #imageLiteral(resourceName: "wildfires"))
            .set(image: .top)
            .set(padding: 16)
    }

}

extension UIFont {
    
    class func exampleAvenirMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir-Book", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    class func exampleAvenirLight(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir-Light", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}

