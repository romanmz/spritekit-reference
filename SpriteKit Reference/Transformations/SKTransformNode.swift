//
//  SKTransformNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTransformNode: SKTransformNode {
	// Allows nodes to be rotated on the x and y axis for 3D effects
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Transform node properties
		// ------------------------------
		xRotation = CGFloat.pi / 4
		yRotation = CGFloat.pi / 4
		
		
		// Using alternative rotation units ???
		// ------------------------------
		eulerAngles()					// returns the current rotation as euler angles
		quaternion()					// returns the current rotation as quaternions
		rotationMatrix()				// returns the current rotation as a matrix
		// setEulerAngles(_:)			// sets the rotation by passing an euler angle
		// setQuaternion(_:)			// sets the rotation by passing a quaternion
		// setRotationMatrix(_:)		// sets the rotation by passing a matrix
		
		
	}
}
