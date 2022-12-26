//
//  AEIndicator.swift
//  AESegmentedControl
//
//  Created by ABDELAZiZ EL ARASSi on 26/12/2022.
//

import UIKit

@objcMembers
public class AEIndicator: UIView {
    
    /// The indicator line position
    ///
    /// - top: The line will be drawn at the top of the segemented control
    /// - bottom: The line will be drawn at the bottom of the segemented control
    public enum Position {
        case top
        case bottom
    }
    
    /// The indicator insets
    public var contentEdgeInsets = UIEdgeInsets.zero
    
    /// The indicator line view.
    public let lineView = UIView()
    
    public var linePosition = Position.bottom
    
    /// The indicator box view.
    public let boxView = UIView()
    
    /// The line height value.
    public var lineHeight: CGFloat = 1
    
    /// :nodoc:
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    /// :nodoc:
    override public init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    private func initialize() {
        
        lineView.backgroundColor = tintColor
        boxView.backgroundColor = tintColor
        boxView.alpha = 0
        
        addSubview(boxView)
        addSubview(lineView)
    }
    
    /// :nodoc:
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        var frame = self.bounds //container.inset(by: margin)
        //UIEdgeInsetsInsetRect(bounds, contentEdgeInsets)
        
        if linePosition == .top {
            
            lineView.frame = CGRect(x: 0, y: 0, width: frame.width, height: lineHeight)
            
            frame.origin.y = lineHeight
            frame.size.height -= lineHeight
            boxView.frame = frame
            
        } else {
            frame.size.height -= lineHeight
            boxView.frame = frame
            
            frame.origin.y = frame.size.height
            frame.size.height = lineHeight
            lineView.frame = frame
        }
    }
    
}
