shader_type canvas_item;

uniform sampler2D doodle_tex: repeat_enable;

void fragment() {
	/* If you get high contrast in your shadows by using a good materials on your objects,
	then you can easily filter out dark areas and assign them with a texture. 
	If the ambient color of the environment is black, then shadows will always be black. */
	vec3 screen = texture(TEXTURE, UV).rgb;
	float brightness = (screen.r + screen.g + screen.b) / 3.0;
	
	if (brightness < 0.05) {
		vec4 doodle = texture(doodle_tex, UV * 2.0).rgba;
		screen += doodle.rgb;
	}
	
	COLOR.rgb = screen;
}
