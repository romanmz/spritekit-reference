//
//  SKTexture.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTexture: SKTexture {
	// Textures are representations of an image to be used in SpriteKit
	// they can be used by sprite, shape, emmiter, and tile map nodes
	// once created, a texture's data can't be updated, to do this you need to create a SKMutableTexture instead
	
	
	/*
	// Init shortcuts (from other images)
	// ------------------------------
	init(imageNamed:)				// Loads the texture from an image file in the app bundle. Looks for individual images first, then within atlases
	init(image:)					// Loads the texture from an existing UIImage object
	init(cgImage:)					// Loads the texture from an existing Quartz 2D image (CGImage)
	init(rect:in)					// Creates a new texture from a cropped region of another texture. Both textures will reference the same data in memory
									// If you create further textures, the rect will still refer back to the coordinates of the original texture
	
	
	// Init shortcuts (from raw pixel data)
	// ------------------------------
	init(data:,size:)						// Creates a new texture from raw pixel data
	init(data:,size:,rowLength:,alignment:)	// Same, but allows you to limit the number of pixels to display per row, and the spacing between them
	init(data:,size:,flipped:)				// Same, but if 'flipped' is true, the image will be flipped vertically
	
	
	// Init shortcuts (from procedural noise textures and maps)
	// ------------------------------
	init(vectorNoiseWithSmoothness:,size:)		// Directional noise data, smoothness can be from 0.0 to 1.0
	init(noiseWithSmoothness:,size:,grayscale:)	// Colored noise data, you can set grayscale to true for grayscale-only textures
	init(noiseMap:)								// Creates the texture from a GKNoiseMap ??? object
	
	
	// Init shortcuts (from existing node trees)
	// ------------------------------
	// The SKView class has methods to generate textures from existing node trees
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		/*
		// Texture properties
		// ------------------------------
		size()					// get the size of the texture
		textureRect()			// get the rectangle used to define the visible area of the texture
		filteringMode			// get/set the scaling mode to use when the size of the sprite is not the same as the texture size
								// options are .nearest (pixelated) and .linear (blurred). Defaults to .linear
		usesMipmaps				// get/set whether or not to generate 'mipmaps' when preparing the texture for rendering. Defaults to false
								// 'mipmaps' are extra generated data (about a third of the original) that improves rendering quality when the texture is scaled down
								// only works if both dimensions of the texture are a power of 2
		
		
		// Convert to other formats
		// ------------------------------
		applying(_:)									// Returns a new texture by applying a 'Core Image' filter to the current one
		cgImage()										// Returns the current texture as a Quartz 2D image (CGImage)
		
		
		// Convert to normal maps
		// ------------------------------
		// Normal map textures are used to simulate 3D lightning on sprite nodes, and to generate velocity values on physics field nodes
		generatingNormalMap()							// Returns the current texture as a normal map texture
		generatingNormalMap(withSmoothness:contrast:)	// Same but allows you to smooth out the image, and define the level of depth of the normal map
		
		
		// Preloading
		// ------------------------------
		preload(completionHandler:)						// Prepares the current texture for rendering, calling the completion handler afterwards
		SKTexture.preload(_:withCompletionHandler:)		// Type method, use this for when you need to preload multiple images at the same time
		*/
	}
	
	
	/*
	// Performance: Data loading
	// ------------------------------
	Creating textures is expensive, especially when loading them from an image file
	because of this, SpriteKit defers the loading of the textures until they actually need to be rendered
	this is a good starting point but you may need to preload and delete the data whenever necessary to improve memory management
	
	A texture is prepared for rendering in 2 steps:
	1. data is loaded (only for textures loaded from an image file, on the other methods the data is already available). This happens when:
		- the size() method is called, including from when a sprite node is being initialized
		- or when one of the preload methods is manually called
	2. data is prepared for rendering. This happens when:
		- A node that uses the texture is about to be rendered
	
	Once a texture is prepared for rendering, it stays in memory until all strong references to it are removed
	
	
	// Performance: Memory management
	// ------------------------------
	Some devices have limited memory, and textures can consume a lot of it, so there's a limit to how many textures you can load at once
	
	Some tips for better memory management:
	- for textures that are essential to a scene that is about to be loaded, preload as many as possible before presenting the scene
	- pre-emptively load the rest of the textures shortly before they are required
	- dispose of textures as soon as you can if you're sure you won't be using it again, this frees up memory
	- if there's a list of images that you generally load at the same time, group them using a SKTextureAtlas ??? to load them in a single pass
	- if multiple nodes use the same texture, make them reference the same texture object instead of creating multiple instances
	
	To remove existing textures from memory, delete all strong references to the texture object, including:
	- all texture references from nodes (sprite, emmiters, etc)
	- all references you have created in your own code
	- all texture atlas objects that includes it
	*/
}
