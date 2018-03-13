//
//  SKUniform.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 13/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKUniform: SKUniform {
	convenience init(test: String) {
		self.init(name: "u_red_factor")
		
		
		// Setting the value
		// ------------------------------
		floatValue = 0.0		// The value to pass to the shader. Can be a float, floatVector2/3/4 or floatMatrix2/3/4
		let _ = textureValue	// The texture data to pass to the shader, if applicable
		
		
		// Read-only properties
		// ------------------------------
		let _ = name			// The variable name to assign to the uniform (set automatically during initialization)
		let _ = uniformType		// The data type this uniform holds (read only, set automatically as soon as you set a value)
		
		
	}
}
