//
//  SKPhysicsJointPin.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsJointPin: SKPhysicsJointPin {
	// Pins two bodies together while still allowing them to rotate independently
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	joint(withBodyA:bodyB:anchor:)		// Pins two bodies together at a given point (relative to the scene)
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Joint properties
		// ------------------------------
		// frictionTorque		// get/set the rate of rotation resistance applied to the pin. Values from 0 to 1. Defaults to 0 (no resistance)
		// rotationSpeed		// get/set the current rotation speed of the pin (in radians per second)
		// shouldEnableLimits	// get/set whether or not the lower and upper angle limits are enabled. Defaults to false
		// lowerAngleLimit		// get/set the smallest angle allowed for the pin joint (in radians). Defaults to 0
		// upperAngleLimit		// get/set the largest angle allowed for the pin joint (in radians). Defaults to 0
		
		
	}
}
