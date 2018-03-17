//
//  sample-opengl-shader.fsh
//  SpriteKit Reference
//
//  Created by Roman Martinez on 14/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

void main() {
	vec4 color = texture2D(u_texture, v_tex_coord);
	float alpha = color.a;
	float r = (sin(u_time+ 3.14 * u_red_factor)+1.0) * color.r;
	float g = (sin(u_time+ 3.14 * a_green_factor)+1.0) * color.g;
	float b = (sin(u_time+ 3.14 * 0.33)+1.0) * color.b;
	gl_FragColor = vec4(r,g,b, 1.0) * alpha;
}
