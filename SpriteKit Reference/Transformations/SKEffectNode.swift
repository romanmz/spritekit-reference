//
//  SKEffectNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKEffectNode: SKEffectNode {
	// This node renders its children into a buffer, which allows 3 things:
	// - to cache the contents for faster rendering
	// - to apply Core Image filters
	// - to apply warp geometries to nodes that don't normally support them
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Adding filter effects
		// ------------------------------
		let blurFilter = CIFilter(name: "CIBoxBlur", parameters: ["inputRadius": 20])
		filter = blurFilter				// get/set the Core Image filter to apply to child nodes (you can only use filters that accept 1 input image and outputs 1 image)
		shouldCenterFilter = true		// get/set whether or not to set the input center of the filter to be the same as the node's origin (only for filters that have input center)
		shouldEnableEffects = true		// get/set whether or not to actually apply the filter. Defaults to true
		
		
		// Caching results
		// ------------------------------
		shouldRasterize = true			// get/set whether or not to cache the rendered node after each frame. Defaults to false
										// enabling caching uses more memory and may take more time to render initially, but can improve performance later
										// any changes on the child nodes will automatically discard the cache and make the node render again on the next frame
										// but the same is not true when updating the properties of the applied filter
		
		
		/*
		// Adding shaders
		// ------------------------------
		// Same as in sprite nodes:
		shader: SKShader?
		attributeValues: [String: SKAttributeValue]
		setValue(_:forAttribute:)
		value(forAttributeNamed:)
		
		
		// Blend mode
		// ------------------------------
		// Same as in sprite nodes:
		blendMode: SKBlendMode
		*/
		
		
	}
}
