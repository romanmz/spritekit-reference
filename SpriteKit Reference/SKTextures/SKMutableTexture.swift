//
//  SKMutableTexture.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKMutableTexture: SKMutableTexture {
	// By default, texture objects are immutable to help improve memory management and performance
	// in cases where you are required to have dynamically changing textures you can use this class
	// this is a subclass of SKTexture, so all its initializers and methods are available, plus:
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(size:)					// Initializes an empty texture with a given size. You must make sure to generate the content before using the texture
	init(size:pixelFormat:)		// Same but allows you to specify the Core Video format code to use (32rgba, 64rgbahalf, and 128rgbafloat)
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Updating the texture data
		// ------------------------------
		// modifyPixelData(_:)	// You pass a callback as an argument, which is executed only when it's safe for the graphics hardware to update the texture
								// The callback will receive two arguments:
								// pixelData: An UnsafeMutableRawPointer? object pointing to the start of the current texture data, you need to edit this data directly
								// lengthInBytes: The length of the texture data in bytes
								// once you are done with the changes, return the callback
		
		
	}
}
