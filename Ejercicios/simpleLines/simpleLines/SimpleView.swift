//
//  SimpleView.swift
//  simpleLines
//
//  Created by Itzel GoOm on 13/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class SimpleView: UIView {

   
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context =  UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.green.cgColor)
        context?.setLineWidth(2)
        context?.move(to: CGPoint(x: 50, y: 50))
        context?.addLine(to: CGPoint(x: 150, y: 50))
        context?.addQuadCurve(to: CGPoint(x: 160, y: 60), control: CGPoint(x: 160, y: 50))
        context?.addLine(to: CGPoint(x: 160, y: 160))
        context?.addQuadCurve(to: CGPoint(x: 150, y: 170), control: CGPoint(x: 160, y: 170))
        context?.addLine(to: CGPoint(x: 50, y: 170))
        context?.addQuadCurve(to: CGPoint(x: 40, y: 160), control: CGPoint(x: 40, y: 170))
        context?.addLine(to: CGPoint(x: 40, y: 60))
        context?.addQuadCurve(to: CGPoint(x: 50, y: 50), control: CGPoint(x: 40, y: 50))
        
        context?.strokePath()
        
        
        
        
        
    }
    

}
