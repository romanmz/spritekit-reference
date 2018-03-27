//
//  SKTileSet.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTileSet: SKTileSet {
	// A tile set defines:
	// - what kind of tiles (tile groups) will be possible to add on maps that implement this set
	// - how the tiles will be arranged (grid, hexagonal or isometric)
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(named:)					// Creates the set from an .sks tile set file (you need to pass the actual name of the tile set, not the name of the file)
	init(from:)						// Creates the set from an URL
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile set properties
		// ------------------------------
		name = "standard set"						// get/set the name of the tile set
		type = .grid								// get/set the type of layout this set will create (grid, hexagonal, isometric). Defaults to .grid
		tileGroups = [MySKTileGroup(test: "test")]	// get/set the types of tiles (tile groups) that can be added to the map
		
		
		// Tile map defaults
		// ------------------------------
		defaultTileSize = CGSize(width: 20, height: 20)	// get/set the default size for each tile, in case the map node doesn't specify one
		defaultTileGroup = MySKTileGroup(test: "test")	// get/set the tile group to use whenever a map's automapping feature fails to find an appropiate tile to fill in a spot
		
		
	}
}
