//
//  SKSpriteNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 12/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKSpriteNode: SKSpriteNode {
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(imageNamed:)					// Assigns the texture based on the given file, and sets the 'size' property to match the size of the texture
	init(imageNamed:normalMapped:)		// Same, but if 'normalMapped' is true, creates and sets the 'normalTexture' property based on the main texture
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Sprite properties
		// ------------------------------
		
		// Load SKTexture objects
		texture = MySKTexture(test: "test")								// get/set the texture used to draw the sprite
		centerRect = CGRect(x: 1.0/3, y: 1/3, width: 1/3, height: 1/3)	// get/set a rect to define a 3x3 slicing grid to handle uneven scaling of the sprite (values from 0 to 1)
		guard let texture = self.texture else { return }
		
		// Sprite sizing
		size = texture.size()						// get/set the base size of the sprite (generally the same as the texture image)
		scale(to: CGSize(width: 16, height: 30))	// sets the value of the xScale and yScale properties to make the sprite match exactly the given size
		anchorPoint = CGPoint(x: 0.5, y: 0.5)		// get/set the anchor point for the node. Defaults to the middle of the node (values from 0 to 1)
		
		
		// Colour and lightning
		// ------------------------------
		
		// Color and blending
		color = .yellow					// if a texture exists, this colour is used to tint the texture, otherwise it creates a solid rectangle. Defaults to .clear
		colorBlendFactor = 0.5			// if a texture exists, this factor indicates the strength of the color tint (value from 0 to 1). Defaults to 0
		blendMode = .alpha				// Defines the blending mode to use to render the node on top of other nodes. Defaults to .alpha
		
		// Lightning effects
		lightingBitMask = 0b0001		// Mask number that defines what light sources will illuminate this node
		shadowCastBitMask = 0b0001		// Mask number that defines what light sources will make this node cast shadows.
										// all nodes with lower z position than the light source will be covered by the shadow, including the current node itself
		shadowedBitMask = 0b0001		// Mask number that defines what light sources' shadows will be cast unto this node
										// at least in theory cos this seems to be now redundant/deprecated and it's not doing anything for me ???
										// seems like the only way to control this setting is by making the node have a higher/lower z position than the light source
		let normalMap = texture.generatingNormalMap(withSmoothness: 0, contrast: 20)
		normalTexture = normalMap		// A texture to apply as 'normal mapping' when the node is being lit by a light source
	}
	
	
	// Adding Shaders
	// ------------------------------
	func applyShader() {
		shader = MySKShader(test: "test")					// get/set the SKShader object to apply to the node, if any
		setValue(											// set a new value for a shader attribute
			MySKAttributeValue(test: "test"),
			forAttribute: "a_green_factor"
		)
		let _ = value(forAttributeNamed: "a_green_factor")	// get the current value of a shader attribute
		attributeValues = [									// Directly manipulate the list of shader attribute values
			"a_green_factor": MySKAttributeValue(test: "test"),
		]
	}
	
	
}
