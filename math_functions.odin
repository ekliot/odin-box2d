package box2d

// https://en.wikipedia.org/wiki/Pi
PI :: 3.14159265359

// 2D vector
//
// This can be used to represent a point or free vector
Vec2 :: [2]f32

// 2D rotation
//
// This is similar to using a complex number for rotation
Rot :: struct
{
	// cosine and sine
	c, s: f32,
}

// A 2D rigid transform
Transform :: struct
{
	p: Vec2,
	q: Rot,
}

// A 2-by-2 Matrix
Mat22 :: matrix[2,2]f32

// Axis-aligned bounding box
AABB :: struct
{
	lower_bound,
	upper_bound: Vec2,
}

/* Inline methods from include/box2d/math_functions.h */

//// Make a rotation using an angle in radians
//@(link_name="b2MakeRot")
//make_rot :: proc(angle: f32) -> Rot ---

//// Get the angle in radians in the range [-pi, pi]
//@(link_name="b2Rot_GetAngle")
//rot_get_angle :: proc(q: Rot) -> f32 ---

//// Get the x-axis
//@(link_name="b2Rot_GetXAxis")
//rot_get_x_axis :: proc(q: Rot) -> Vec2 ---

//// Get the y-axis
//@(link_name="b2Rot_GetYAxis")
//rot_get_y_axis :: proc(q: Rot) -> Vec2 ---

//// Multiply two rotations: q * r
//@(link_name="b2MulRot")
//mul_rot :: proc(q: Rot, r: Rot) -> Rot ---

//// Transpose multiply two rotations: qT * r
//@(link_name="b2InvMulRot")
//inv_mul_rot :: proc(q: Rot, r: Rot) -> Rot ---

//// relative angle between b and a (rot_b * inv(rot_a))
//@(link_name="b2RelativeAngle")
//relative_angle :: proc(b: Rot, a: Rot) -> f32 ---

//// Convert an angle in the range [-2*pi, 2*pi] into the range [-pi, pi]
//@(link_name="b2UnwindAngle")
//unwind_angle :: proc(angle: f32) -> f32 ---

//// Rotate a vector
//@(link_name="b2RotateVector")
//rotate_vector :: proc(q: Rot, v: Vec2) -> Vec2 ---

//// Inverse rotate a vector
//@(link_name="b2InvRotateVector")
//inv_rotate_vector :: proc(q: Rot, v: Vec2) -> Vec2 ---
