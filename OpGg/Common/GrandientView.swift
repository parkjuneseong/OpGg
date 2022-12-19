//
//  GrandientView.swift
//  op.gg
//
//  Created by 박준성 on 2022/12/18.
//

import UIKit

class GradientView: UIView {
    @IBInspectable var startPoint: CGPoint = .zero {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var startColor: UIColor? {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var startUseCustomAlpha: Bool = false {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var startCustomAlpha: CGFloat = .zero {
        didSet {
            updateUI()
        }
    }

    @IBInspectable var endPoint: CGPoint = CGPoint.zero {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var endColor: UIColor? {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var endUseCustomAlpha: Bool = false {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var endCustomAlpha: CGFloat = .zero {
        didSet {
            updateUI()
        }
    }
    @IBInspectable var location: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }

    override class var layerClass: AnyClass {
        CAGradientLayer.self
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        updateUI()
    }

    private func updateUI() {
        guard let gradientLayer = self.layer as? CAGradientLayer else {
            return
        }

        gradientLayer.startPoint = self.startPoint
        gradientLayer.endPoint = self.endPoint
        gradientLayer.colors = [
            startUseCustomAlpha ? startColor?.withAlphaComponent(startCustomAlpha) : startColor,
            endUseCustomAlpha ? endColor?.withAlphaComponent(endCustomAlpha) : endColor
        ].compactMap { $0?.cgColor }
        if location > 0 {
            gradientLayer.locations = [NSNumber(value: Float(location))]
        } else {
            gradientLayer.locations = nil
        }
    }
}
