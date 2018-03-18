//
//  SKTileGroup.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTileGroup: SKTileGroup {
	// With a tile group you put together all the necessary individual rules so that you can actually start filling individual spots on a map
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile group properties
		// ------------------------------
		name = "standard group"							// get/set the name of the tile group
		rules = [MySKTileGroupRule(test: "test")]		// get/set the list of group rules to use. It must include enough rules to cover all possible placement scenarios
														// (up, upper left, left, lower left, etc…)
		
		
		// Empty groups
		// ------------------------------
		SKTileGroup.empty()			// Type method. This will return an empty tile group, which can be used to erase tiles from a given spot
		
		
	}
}
