//
//  SKPhysicsJointSliding.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsJointSliding: SKPhysicsJointSliding {
	// Connects two bodies keeping them aligned towards a given line
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	joint(withBodyA:bodyB:anchor:axis:)		// Connects two bodies using a point and a vector (relative to the scene) to define axis in which they can move
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Joint properties
		// ------------------------------
		// shouldEnableLimits		// get/set whether or not the lower and upper distance limits are enabled
		// lowerDistanceLimit		// get/set the smallest distance allowed. Defaults to 0
		// upperDistanceLimit		// get/set the largest distance allowed. Defaults to 0
		
		
	}
}
