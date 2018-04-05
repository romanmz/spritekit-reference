//
//  SKPhysicsJointLimit.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 5/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsJointLimit: SKPhysicsJointLimit {
	// Connects two bodies, setting a maximum distance they are allowed to have from each other
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	joint(withBodyA:bodyB:anchorA:anchorB:)		// Connects two bodies using two points (relative to the scene) to define the maximum possible distance between them
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Joint properties
		// ------------------------------
		// maxLength		// get/set the maximum distance allowed between the two physics bodies
		
		
	}
}
