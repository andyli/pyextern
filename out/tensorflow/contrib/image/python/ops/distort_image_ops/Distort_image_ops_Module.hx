/* This file is generated, do not edit! */
package tensorflow.contrib.image.python.ops.distort_image_ops;
@:pythonImport("tensorflow.contrib.image.python.ops.distort_image_ops") extern class Distort_image_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adjust hue, saturation, value of an RGB image in YIQ color space.
		
		This is a convenience method that converts an RGB image to float
		representation, converts it to YIQ, rotates the color around the Y channel by
		delta_hue in radians, scales the chrominance channels (I, Q) by
		scale_saturation, scales all channels (Y, I, Q) by scale_value,
		converts back to RGB, and then back to the original data type.
		
		`image` is an RGB image.  The image hue is adjusted by converting the
		image to YIQ, rotating around the luminance channel (Y) by
		`delta_hue` in radians, multiplying the chrominance channels (I, Q)  by
		`scale_saturation`, and multiplying all channels (Y, I, Q)  by
		`scale_value`.  The image is then converted back to RGB.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  delta_hue: float, the hue rotation amount, in radians.
		  scale_saturation: float, factor to multiply the saturation by.
		  scale_value: float, factor to multiply the value by.
		  name: A name for this operation (optional).
		
		Returns:
		  Adjusted image(s), same shape and DType as `image`.
	**/
	static public function adjust_hsv_in_yiq(image:Dynamic, ?delta_hue:Dynamic, ?scale_saturation:Dynamic, ?scale_value:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Adjust hue, saturation, value of an RGB image randomly in YIQ color space.
		
		Equivalent to `adjust_yiq_hsv()` but uses a `delta_h` randomly
		picked in the interval `[-max_delta_hue, max_delta_hue]`, a `scale_saturation`
		randomly picked in the interval `[lower_saturation, upper_saturation]`, and
		a `scale_value` randomly picked in the interval
		`[lower_saturation, upper_saturation]`.
		
		Args:
		  image: RGB image or images. Size of the last dimension must be 3.
		  max_delta_hue: float. Maximum value for the random delta_hue. Passing 0
		                 disables adjusting hue.
		  lower_saturation: float.  Lower bound for the random scale_saturation.
		  upper_saturation: float.  Upper bound for the random scale_saturation.
		  lower_value: float.  Lower bound for the random scale_value.
		  upper_value: float.  Upper bound for the random scale_value.
		  seed: An operation-specific seed. It will be used in conjunction
		    with the graph-level seed to determine the real seeds that will be
		    used in this operation. Please see the documentation of
		    set_random_seed for its interaction with the graph-level random seed.
		
		Returns:
		  3-D float tensor of shape `[height, width, channels]`.
		
		Raises:
		  ValueError: if `max_delta`, `lower_saturation`, `upper_saturation`,
		             `lower_value`, or `upper_Value` is invalid.
	**/
	static public function random_hsv_in_yiq(image:Dynamic, ?max_delta_hue:Dynamic, ?lower_saturation:Dynamic, ?upper_saturation:Dynamic, ?lower_value:Dynamic, ?upper_value:Dynamic, ?seed:Dynamic):Dynamic;
}