//
//  SquareView.swift
//  simpleLines
//
//  Created by Itzel GoOm on 13/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class SquareView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
   
    override func draw(_ rect: CGRect) {
         //Drawing code
        
        let aPath = UIBezierPath()
        aPath.lineWidth = 4
        aPath.move(to: CGPoint(x: 10, y: 0))
        aPath.addLine(to: CGPoint(x: frame.width - 10 , y: 0))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 0))
        aPath.addLine(to: CGPoint(x: frame.width , y: frame.width - 10))
        aPath.addQuadCurve(to: CGPoint(x: frame.width - 10, y: frame.width), controlPoint: CGPoint(x: frame.width, y: frame.width))
        aPath.addLine(to: CGPoint(x: 10, y: frame.width))
        aPath.addQuadCurve(to: CGPoint(x: 0, y: frame.width - 10), controlPoint: CGPoint(x: 0 , y: frame.width))
        aPath.addLine(to: CGPoint(x: 0, y: 10))
        aPath.addQuadCurve(to: CGPoint(x: 10, y: 0), controlPoint: CGPoint(x: 0 , y: 0))
        
        

        
        UIColor.black.set()
        aPath.stroke()
        
        
        
        
//        let context =  UIGraphicsGetCurrentContext()
//        context?.setStrokeColor(UIColor.black.cgColor)
//        context?.setLineWidth(2)
//        context?.move(to: CGPoint(x: 10, y: 0))
//        context?.addLine(to: CGPoint(x: frame.width - 10, y: 0))
//        context?.addQuadCurve(to: CGPoint(x: frame.width, y: 10), control: CGPoint(x: frame.width, y: 0))
//        //        context?.addLine(to: CGPoint(x: 160, y: 150))
//
//        context?.strokePath()
    }
 

}
