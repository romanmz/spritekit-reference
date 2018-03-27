//
//  SKLightNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 12/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKLightNode: SKLightNode {
	// Creates a light source on the scene
	// Only applies to sprite nodes that have been specifically setup to be affected by light sources
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Activating the light
		// ------------------------------
		isEnabled = true			// Whether or not the node is actually casting light
		categoryBitMask = 0b1		// The category number of the light (used on sprite nodes to determine whether they will be affected by this light)
		
		
		// Lightning properties
		// ------------------------------
		lightColor = .yellow		// The colour of the main projected light (diffuse and specular). Defaults to white
		falloff = 1.5				// The rate at which the main light will decay with distance. Defaults to 1.0
		ambientColor = .purple		// The ambient colour (not affected by falloff value, and doesn't affect 'normal' textures on a sprite). Defaults to black
		shadowColor = .cyan			// The colour of the shadows casted by nodes hit by this light (uses physics bodies if available, otherwise texture). Default is 50% black
		
		
	}
}
