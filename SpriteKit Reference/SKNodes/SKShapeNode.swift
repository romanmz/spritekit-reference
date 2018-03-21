//
//  SKShapeNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 14/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKShapeNode: SKShapeNode {
	// Paths are defined using the Core Graphics framework
	// Use shape nodes sparingly, sprite nodes offer higher performance
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(path:centered:)					// If 'centered' is true, the path is translated so that its center matches the node's origin point
	init(rect:)								// Creates a rectangular path based on the given CGRect
	init(rect:cornerRadius:)				// Same but adds rounded corners
	init(rectOf:)							// Creates a rectangular path centered at origin based on the given CGSize
	init(rectOf:cornerRadius:)				// Same but adds rounded corners
	init(circleOfRadius:)					// Creates a circular path centered at origin based on the given radius value
	init(ellipseIn:)						// Creates an elliptical path based on the given CGRect
	init(ellipseOf:)						// Creates an elliptical path centered at origin based on the given CGSize
	init(points:count:)						// Creates the path by joining the given points with straight lines
	init(splinePoints:count:)				// Creates the path by joining the given points with quadratic curves
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Shape properties
		// ------------------------------
		let circlePath = CGMutablePath()
		circlePath.addArc(center: CGPoint.zero, radius: 15, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
		path = circlePath						// get/set the CGPath object that defines the shape of the node
		let _ = lineLength						// get the total length of the line defined by the shape
		
		
		// Fill and stroke properties
		// ------------------------------
		
		// Fill
		fillColor = .blue						// get/set the fill's color. Defaults to .clear
		let _ = fillTexture						// get/set the fill's texture, which is blended against the fill color (set it to .white to display the texture as is)
		
		// Stroke
		lineWidth = 1							// get/set the stroke's width. Defaults to 1. NOTE: values of more than 2 can cause artifacts
		glowWidth = 5							// get/set how much to diffuse the stroke. Defaults to 0
		isAntialiased = true					// get/set whether or not to smooth the stroke
		strokeColor = .black					// get/set the stroke's color. Defaults to .white
		let _ = strokeTexture					// get/set the stroke's texture. If a texture is set, the stroke color will be ignored
		lineCap = .round						// get/set how to render the end points of the stroke. Options are .butt, .round and .square. Defaults to .butt
		lineJoin = .round						// get/set how to render the joints of the stroke. Options are .miter, .round and .bevel. Defaults to .bevel
		miterLimit = 0.0						// get/set the limit of the miter joints, if set
		
		
		/*
		// Shaders and blend modes
		// ------------------------------
		
		// Managing shader attribute values works the same as in sprite nodes:
		attributeValues: [String: SKAttributeValue]
		setValue(_:forAttribute:)
		value(forAttributeNamed:)
		
		// On shape nodes you set separate shaders for fill and stroke
		fillShader: SKShader?
		strokeShader: SKShader?
		
		// Blend modes work the same as in sprite nodes:
		blendMode: SKBlendMode
		*/
		
		
	}
}
