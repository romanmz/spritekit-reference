//
//  SKTextureAtlas.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTextureAtlas: SKTextureAtlas {
	// Atlases help you improve memory usage and rendering performance by grouping multiple images that are generally used together, and loading them in a single pass
	// you'll need to find the balance between grouping too few images (which still requires many passes) and grouping too many (which requires more memory at once)
	
	// To load individual images contained within an atlas you can still use a regular SKTexture instance, which will automatically load the atlas first and then the texture
	// but you can also use this class to access information about the atlas itself and its contained images
	
	
	/*
	// Creating a texture atlas within the assets catalogue
	// ------------------------------
	- create a folder within the assets catalogue, and give it a name ending with a .atlas extension
	- place the relevant artwork inside the folder
	- you may need to run the Product > Clean command
	
	
	// Init shortcuts
	// ------------------------------
	init(named:)				// Loads an atlas generated at compile time from an .atlas folder
	init(dictionary:)			// Creates an atlas at runtime from the given array of images. you can pass strings and URLs (for file paths), UIImage and NSImage objects
								// you should prefer atlases created at compile time, but if you need to include textures generated at runtime then the 2nd option is best
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		/*
		// Loading textures
		// ------------------------------
		textureNamed(_:)				// returns the texture from the atlas with the given name, if it doesn't exist then a placeholder texture is returned
		textureNames: [String]			// get the full list of names of textures contained in the atlas. If the atlas hasn't been loaded into memory, this will trigger it
		
		
		// Preloading atlas data
		// ------------------------------
		// Atlases follow the same loading rules as textures, so you may also need to manually preload the data at appropiate times
		preload(completionHandler:)											// Preloads the current atlas, calling the callback block on completion
		SKTextureAtlas.preloadTextureAtlases(_:withCompletionHandler:)		// Type method. Preloads the given list of atlases at once, callback runs after all have been loaded
		SKTextureAtlas.preloadTextureAtlasesNamed(_:withCompletionHandler:)	// Type method. Same but uses a list of names that should match the folders in the assets catalogue
		*/
		
		
	}
}
