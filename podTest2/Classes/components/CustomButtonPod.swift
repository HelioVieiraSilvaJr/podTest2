//
//  CustomButtonPod.swift
//  Pods
//
//  Created by HelioJunior on 18/04/19.
//

import Foundation

@IBDesignable
class CustomButtonPod: UIButton {
    
    public var actionButton: () -> () = {}
    
    @IBInspectable
    public var circleCorner: Bool {
        get {
            return min(bounds.size.height, bounds.size.width) / 2 == cornerRadius
        } set {
            cornerRadius = newValue ? min(bounds.size.height, bounds.size.width) / 2 : cornerRadius
        }
    }
    
    @IBInspectable
    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        } set {
            layer.cornerRadius = circleCorner ? min(bounds.size.height, bounds.size.width) / 2 : newValue
        }
    }
    
    @IBInspectable
    var setColor: UIColor! {
        didSet {
            backgroundColor = setColor
        }
    }
    
    @IBInspectable
    var titleButton: String! {
        didSet {
            setTitle(titleButton, for: .normal)
        }
    }
    
    
    func shouldAction(_ action: @escaping () -> ()) {
        actionButton = action
    }
    
    
    @objc
    private func handlerButton() {
        actionButton()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let action = UITapGestureRecognizer(target: self, action: #selector(handlerButton))
        self.addGestureRecognizer(action)
    }
}
