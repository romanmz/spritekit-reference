//
//  SKUniform.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 13/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKUniform: SKUniform {
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init(name: "u_red_factor")
		
		
		// Setting the value
		// ------------------------------
		floatValue = 0.0			// The value to pass to the shader as a float value, or floatMatrix2/3/4
		// vectorFloat2Value		// The value to pass to the shader as a vector_float2 value
		// vectorFloat3Value		// The value to pass to the shader as a vector_float3 value
		// vectorFloat4Value		// The value to pass to the shader as a vector_float4 value
		// matrixFloat2x2Value		// The value to pass to the shader as a matrix_float2x2 value
		// matrixFloat3x3Value		// The value to pass to the shader as a matrix_float3x3 value
		// matrixFloat4x4Value		// The value to pass to the shader as a matrix_float4x4 value
		// textureValue				// The texture data to pass to the shader, if applicable
		
		
		// Read-only properties
		// ------------------------------
		let _ = name			// The variable name to assign to the uniform (set automatically during initialization)
		let _ = uniformType		// The data type this uniform holds (set automatically as soon as you set a value)
		
		
	}
}
