//
//  SKShader.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 13/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKShader: SKShader {
	// This class allows nodes to be rendered using OpenGL fragment shaders
	// The shaders need to be written using OpenGL ES 2.0 (extensions are not supported)
	// To apply the shader to a node, create an instance of this class and assign it to the node's 'shader' property
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)					// Assigns the 'source' property based on the given .fsh file
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		
		
		// Source code
		// ------------------------------
		// To add the source code you can refer to a .fsh file during initialization,
		// or manually add the code to the 'source' attribute
		self.init(fileNamed: "OpenGLShader.fsh")
		// source: String
		
		
		// Uniforms
		// ------------------------------
		// Uniforms are global values that are the same regardless of where the shader is being applied to
		// To provide an 'uniform' state to the OpenGL shader, create one or more SKUniform objects and associate them with this class
		addUniform( SKUniform(name: "u_test") )				// Adds a new uniform to the list
		uniformNamed("u_test")								// Retrieves a uniform from the list based on its name (if it exists)
		removeUniformNamed("u_test")						// Removes a uniform from the list
		uniforms = [ MySKUniform(test: "test") ]			// Directly manipulate the list of uniforms
		
		
		// Attributes
		// ------------------------------
		// To provide per-node state to the OpenGL shader you need to use attributes:
		// 1. Declare the list and type of supported attributes on the shader. To do this create one or more SKAttribute objects and associate them with the shader
		// 2. Pass on your custom values from within each of the relevant nodes. To do this create SKAttributeValue objects and associate them with the nodes
		attributes = [ MySKAttribute(test: "test") ]		// Directly manipulate the list of supported attributes
		
		
		/*
		// SpriteKit defaults
		// ------------------------------
		SpriteKit passes the following defaut variables and functions:
		- u_texture
		- u_time
		- u_path_length				// only when applied to a shape stroke
		- v_tex_coord
		- v_color_mix
		- v_path_distance			// only when applied to a shape stroke
		- SKDefaultShading()
		
		
		// Performance optimisation
		// ------------------------------
		Compiling shaders is expensive, here's some performance tips:
		- initialize the shaders when the game launches, not when it's already running
		- avoid changing shaders, uniforms and attributes on the fly
		- if multiple nodes require the same shader, create only one instance and share it with all the relevant nodes
		
		
		// Metal and OpenGL
		// ------------------------------
		Shaders are implemented by Metal in devices that support it, all others use OpenGL
		because of this, some issues may arise in some devices and not others so you'll need to do some testing
		to make a Metal enabled device use OpenGL instead, edit the Info.plist file to add a 'PrefersOpenGL' key with a value of 'true'
		and use the following code to display which of the two the device is currently using:
		*/
		var skDefaultsDictionary = [String: Any]()
		skDefaultsDictionary["debugDrawStats_SKContextType"] = true
		UserDefaults.standard.set(skDefaultsDictionary, forKey: "SKDefaults")
		
		
	}
}
