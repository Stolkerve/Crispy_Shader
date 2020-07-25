shader_type canvas_item;

// Es preferible usar un sampler2D sobre una existente textura
// Por que si el fondo es de baja de resolucion, el scalado lo matara
// Pero si se deja como un sampler2D no se ve afectado por el scalado
// Algo que tengo que hacer es verificar cuanta memoria ocupa en la gpu

// No necesitas crispy para fundirte el cerebro

uniform sampler2D fondo;

void fragment()
{
	vec2 offset = UV + vec2(0.5f, 0.5f) * -1.f;
	vec2 cosaRara = normalize(offset) * (tan(TIME * 0.05f));
	
	vec4 uv = texture(fondo, UV * cosaRara);
	
	COLOR = uv;
}
