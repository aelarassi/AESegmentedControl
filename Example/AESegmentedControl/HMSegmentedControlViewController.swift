//
//  HMSegmentedControlViewController.swift
//  AESegmentedControl_Example
//
//  Created by ABDELAZiZ EL ARASSi on 26/12/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//


import UIKit
import AESegmentedControl

class HMSegmentedControlViewController: UIViewController {
    
    @IBOutlet weak var segmentControl1: AESegmentedControl!
    @IBOutlet weak var segmentControl2: AESegmentedControl!
    @IBOutlet weak var segmentControl3: AESegmentedControl!
    @IBOutlet weak var segmentControl4: AESegmentedControl!
    @IBOutlet weak var segmentControl5: AESegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControl1.append(title: "Trending")
        segmentControl1.append(title: "News")
        segmentControl1.append(title: "Library")
        segmentControl1.indicator.linePosition = .top
        
        segmentControl2.append(title: "One")
        segmentControl2.append(title: "Two")
        segmentControl2.append(title: "Three")
        segmentControl2.append(title: "Four")
        segmentControl2.append(title: "Five")
        segmentControl2.append(title: "Six")
        segmentControl2.append(title: "Seven")
        segmentControl2.append(title: "Eight")
        segmentControl2.segmentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        
        segmentControl3.append(image: #imageLiteral(resourceName: "1"))
            .set(image: #imageLiteral(resourceName: "1-selected"), for: .selected)
            .set(image: .left)
            .imageView?.contentMode = .scaleAspectFit
        segmentControl3.append(image: #imageLiteral(resourceName: "2"))
            .set(image: #imageLiteral(resourceName: "2-selected"), for: .selected)
            .set(image: .left)
            .imageView?.contentMode = .scaleAspectFit
        segmentControl3.append(image: #imageLiteral(resourceName: "3"))
            .set(image: #imageLiteral(resourceName: "3-selected"), for: .selected)
            .set(image: .left)
            .imageView?.contentMode = .scaleAspectFit
        segmentControl3.append(image: #imageLiteral(resourceName: "4"))
            .set(image: #imageLiteral(resourceName: "4-selected"), for: .selected)
            .set(image: .left)
            .imageView?.contentMode = .scaleAspectFit
        
        segmentControl4.append(title: "One")
        segmentControl4.append(title: "Two")
        segmentControl4.append(title: "Three")
        segmentControl4.append(title: "4")
        segmentControl4.append(title: "Five")
        
        segmentControl5.append(title: "Worldwide")
        segmentControl5.append(title: "Local")
        segmentControl5.append(title: "Headlines")
        segmentControl5.indicator.linePosition = .top
    }

}

