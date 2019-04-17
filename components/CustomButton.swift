//
//  CustomButton.swift
//  Pods-podTest2_Tests
//
//  Created by HelioJunior on 17/04/19.
//

import Foundation


@IBDesignable
public class CustomButton: UIButton {
    
    public var borderWidth : CGFloat = 2.0
    public var borderColor = UIColor.white.cgColor
    
    @IBInspectable
    public var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.black, for: .normal)
        }
    }
    
    override public init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("==> init(coder:) has not been implemented")
    }
    
    override public func layoutSubviews() {
        setup()
    }
    
    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
}

