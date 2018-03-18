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
	// Describes the actual visuals of a single type of tile to be used within a tile map
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile properties
		// ------------------------------
		name = "yellow pill"		// get/set the name of the tile
		placementWeight = 1			// get/set how much priority this tile will have over others when a tile group rule is deciding what tile to display
									// a higher weight means the tile is used more often instead of others. Defaults to 1
		userData = [:]				// get/set a dictionary with custom data for your game. SpriteKit doesn't do anything with it, but it's automatically encoded/decoded for you
		
		
		// Define the graphics
		// ------------------------------
		size = CGSize(width: 10, height: 10)	// get/set the size of the tile
		textures = [MySKTexture(test: "test")]	// get/set the array of textures used to display the tile (multiple textures are animated)
		normalTextures = []						// get/set the array of normal textures to apply to the tile (multiple textures are animated)
		timePerFrame = 0.2						// get/set the time in seconds that a single texture is displayed before showing the next one
		
		
		// Flip/rotate the tile
		// ------------------------------
		flipHorizontally = false				// get/set whether or not to flip the tile horizontally
		flipVertically = false					// get/set whether or not to flip the tile vertically
		rotation = .rotation0					// get/set the rotation of the tile
		
		
	}
}
