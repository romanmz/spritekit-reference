//
//  SKTileMapNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTileMapNode: SKTileMapNode {
	// Tile maps allow you to create layers with repeatable sprites in a more efficient way than manually creating and positioning individual sprite nodes
	// they can be arranged in rectangular, hexagonal or isometric grids
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(tileSet:columns:rows:tileSize:tileGroupLayout:)	// Automatically fills the tile map with a given array of tile groups, filled row by row starting at 0,0
	SKTileMapNode.tileMapNodes(tileSet:columns:rows:tileSize:from:tileTypeNoiseMapThresholds:)	// Type method. Generate many map nodes from a given tile set and GKNoiseMap ???
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		// [objects to be used later to test properties and methods]
		guard let isometricSet = SKTileSet(named: "Sample Isometric Tile Set") else { return }
		let mapTileSize = CGSize(width: 128, height: 64)
		let grassGroup = isometricSet.tileGroups[0]
		let waterGroup = isometricSet.tileGroups[3]
		let grassCenter1 = grassGroup.rules[1].tileDefinitions[0]
		
		
		// Tile map properties
		// ------------------------------
		tileSet = isometricSet			// get/set the tile set the map should use
		tileSize = mapTileSize			// get/set the size of each individual tile
		numberOfColumns = 3				// get/set the total amount of columns on the tile map
		numberOfRows = 3				// get/set the total amount of rows on the tile map
		let _ = mapSize					// get the total size of the tile map
		anchorPoint = CGPoint.zero		// get/set the normalized anchor point of the node. Defaults to (0.5, 0.5)
		
		
		// Filling the map
		// ------------------------------
		enableAutomapping = true						// get/set whether or not to update neighbouring tiles automatically after each call to setTileGroup()
		fill(with: waterGroup)							// fills the entire map using a given tile group
		setTileGroup(waterGroup, forColumn: 1, row: 0)	// fills a single tile using a given tile group (if automapping is enabled uses a fitting definition, otherwise use center)
		setTileGroup(grassGroup, andTileDefinition: grassCenter1, forColumn: 1, row: 2)		// fills a single tile with a specific tile definition
		
		
		// Getting tile info
		// ------------------------------
		tileGroup(atColumn: 1, row: 1)					// returns the tile group currently placed at a given index
		tileDefinition(atColumn: 1, row: 1)				// returns the tile definition currently placed at a given index
		centerOfTile(atColumn: 1, row: 1)				// returns the coordinates of the center of a given map index
		tileRowIndex(fromPosition: CGPoint.zero)		// returns the row index that contains a given coordinate
		tileColumnIndex(fromPosition: CGPoint.zero)		// returns the column index that contains a given coordinate
		
		
		/*
		// Colour and lightning
		// ------------------------------
		// Same as in sprite nodes:
		color: UIColor
		colorBlendFactor: CGFloat
		blendMode: SKBlendMode
		lightingBitMask: UInt32
		
		
		// Adding shaders
		// ------------------------------
		// Same as in sprite nodes:
		shader: SKShader?
		attributeValues: [String: SKAttributeValue]
		setValue(_:forAttribute:)
		value(forAttributeNamed:)
		*/
		
		
	}
}
