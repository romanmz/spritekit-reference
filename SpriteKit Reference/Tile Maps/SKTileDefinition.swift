//
//  SKTileDefinition.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import GameplayKit

class MySKTileDefinition: SKTileDefinition {
	// A tile definition is the actual graphic to be used as a fragment of a type of tile
	// To make it an animated graphic, add more than 1 texture and set the animation's time per frame
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile properties
		// ------------------------------
		name = "yellow pill"		// get/set the name of the tile definition
		placementWeight = 1			// get/set how much priority this tile will have over others included on the same group rule
									// a higher weight means this tile will be selected more often than the others. Defaults to 1
		userData = [:]				// get/set a dictionary with custom data for your game. SpriteKit doesn't do anything with it, but it's automatically encoded/decoded for you
		
		
		// Define the graphics
		// ------------------------------
		size = CGSize(width: 20, height: 20)	// get/set the size of the graphic
		textures = [MySKTexture(test: "test")]	// get/set the array of textures that represent the tile fragment (multiple textures are animated)
		normalTextures = []						// get/set the array of normal textures to apply (multiple textures are animated)
		timePerFrame = 0.2						// get/set the time in seconds that a single texture is displayed before showing the next one
		
		
		// Flip/rotate the tile
		// ------------------------------
		flipHorizontally = false				// get/set whether or not to flip the graphic horizontally
		flipVertically = false					// get/set whether or not to flip the graphic vertically
		rotation = .rotation0					// get/set the rotation of the tile
		
		
	}
}
