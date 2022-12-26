//
//  ViewController.swift
//  AESegmentedControl
//
//  Created by aelarassi on 12/26/2022.
//  Copyright (c) 2022 aelarassi. All rights reserved.
//

import UIKit
import AESegmentedControl

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: AESegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.append(title: "Segmentio")
            .set(titleColor: #colorLiteral(red: 0.08598647267, green: 0.093843095, blue: 0.1104642078, alpha: 1), for: .selected)
        segmentedControl.append(title: "HMSegmentedControl")
            .set(titleColor: #colorLiteral(red: 0.08598647267, green: 0.093843095, blue: 0.1104642078, alpha: 1), for: .selected)
        segmentedControl.append(title: "Other")
            .set(titleColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), for: .selected)
        
        segmentedControl.indicator.lineView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4392156863, blue: 0.3803921569, alpha: 1)
        segmentedControl.addTarget(self, action: #selector(changeIndex(segmentedControl:)), for: .valueChanged)

        navigationItem.titleView = segmentedControl
    }
    
    @objc func changeIndex(segmentedControl: AESegmentedControl) {
        
        switch segmentedControl.selectedIndex {
        case 0:
            segmentedControl.indicator.lineView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4392156863, blue: 0.3803921569, alpha: 1)
        case 1:
            segmentedControl.indicator.lineView.backgroundColor = #colorLiteral(red: 0.2044631541, green: 0.7111002803, blue: 0.898917675, alpha: 1)
        case 2:
            segmentedControl.indicator.lineView.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        default:
            break
        }
    }
    
}

