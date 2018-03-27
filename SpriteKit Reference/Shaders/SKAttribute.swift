//
//  SKAttribute.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 14/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKAttribute: SKAttribute {
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init(name: "a_green_factor", type: .float)
		
		
		// Read-only properties
		// ------------------------------
		let _ = name			// The variable name to assign to the attribute (set automatically during initialization)
		let _ = type			// The data type this attribute will hold (set automatically during initialization)
								// Can be a float, halfFloat, vectorFloat2/3/4 or vectorHalfFloat2/3/4
		
		
	}
}
