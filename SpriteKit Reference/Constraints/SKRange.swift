//
//  SKRange.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 28/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKRange: SKRange {
	// Used to clamp values between a lower and upper limit
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(lowerLimit:)				// Uses the given lower limit, and sets the upper limit to +Inf
	init(upperLimit:)				// Uses the given upper limit, and sets the lower limit to -Inf
	init(constantValue:)			// Set the same value for both the lower and upper limits
	init(value:variance:)			// Calculates the lower and upper limits based the given median and variance values
	withNoLimits()					// Type method. Returns a range with no limits
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Range properties
		// ------------------------------
		lowerLimit = 0.0			// get/set the minimum possible value
		upperLimit = 10.0			// get/set the maximum possible value
		
		
	}
}
