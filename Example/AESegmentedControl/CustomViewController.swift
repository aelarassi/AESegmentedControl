//
//  CustomViewController.swift
//  AESegmentedControl_Example
//
//  Created by ABDELAZiZ EL ARASSi on 26/12/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import AESegmentedControl

class CustomViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl1: AESegmentedControl!
    @IBOutlet weak var segmentedControl2: AESegmentedControl!
    @IBOutlet weak var segmentedControl3: AESegmentedControl!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl1.append(title: "First")
        segmentedControl1.append(title: "Second")
        segmentedControl1.append(title: "Third")
        segmentedControl1.append(title: "Fourth")
        segmentedControl1.append(title: "Fifth")
        segmentedControl1.append(title: "Sixth")
        segmentedControl1.append(title: "Seven")
        segmentedControl1.append(title: "Eight")
        segmentedControl1.append(title: "Nine")
        segmentedControl1.animation.duration = 0
        
        segmentedControl2.append(title: "First")
        segmentedControl2.append(title: "Second")
        
        segmentedControl3.append(title: "First")
            .set(titleColor: #colorLiteral(red: 0.9981629252, green: 0.6096215844, blue: 0.6670924425, alpha: 1), for: .selected)
        segmentedControl3.append(title: "Second")
            .set(titleColor: #colorLiteral(red: 1, green: 0.7996580601, blue: 0.4006214142, alpha: 1), for: .selected)
        segmentedControl3.append(title: "Third")
            .set(titleColor: #colorLiteral(red: 0.9995033145, green: 0.9875727296, blue: 0.4039593935, alpha: 1), for: .selected)
        segmentedControl3.append(title: "Fourth")
            .set(titleColor: #colorLiteral(red: 0.8013994098, green: 0.9842005372, blue: 0.4007700682, alpha: 1), for: .selected)
        segmentedControl3.append(title: "Fifth")
            .set(titleColor: #colorLiteral(red: 0.4016934037, green: 0.9801344275, blue: 0.3977853954, alpha: 1), for: .selected)
        
        segmentedControl3.indicator.boxView.alpha = 0.1
        
        segmentedControl3.addTarget(self, action: #selector(changeIndex(segmentedControl:)), for: .valueChanged)
    }
    
    @objc func changeIndex(segmentedControl: AESegmentedControl) {
                
        if let segment = segmentedControl.segment(at: segmentedControl.selectedIndex) {
            segmentedControl.indicator.boxView.backgroundColor = segment.titleColor(for: .selected)
            segmentedControl.indicator.lineView.backgroundColor = segment.titleColor(for: .selected)
        }
    }
    
}


