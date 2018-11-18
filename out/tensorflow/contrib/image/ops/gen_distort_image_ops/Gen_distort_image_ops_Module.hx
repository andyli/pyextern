/* This file is generated, do not edit! */
package tensorflow.contrib.image.ops.gen_distort_image_ops;
@:pythonImport("tensorflow.contrib.image.ops.gen_distort_image_ops") extern class Gen_distort_image_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Adjust the YIQ hue of one or more images.
		
		`images` is a tensor of at least 3 dimensions.  The last dimension is
		interpreted as channels, and must be three.
		
		We used linear transformation described in:
		 beesbuzz.biz/code/hsv_color_transforms.php
		The input image is considered in the RGB colorspace. Conceptually, the RGB
		colors are first mapped into YIQ space, rotated around the Y channel by
		delta_h in radians, multiplying the chrominance channels (I, Q)  by scale_s,
		multiplying all channels (Y, I, Q)  by scale_v, and then remapped back to RGB
		colorspace. Each operation described above is a linear transformation.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int8`, `int16`, `int32`, `int64`, `half`, `float32`, `float64`.
		    Images to adjust.  At least 3-D.
		  delta_h: A `Tensor` of type `float32`.
		    A float scale that represents the hue rotation amount, in radians.
		    Although delta_h can be any float value.
		  scale_s: A `Tensor` of type `float32`.
		    A float scale that represents the factor to multiply the saturation by.
		    scale_s needs to be non-negative.
		  scale_v: A `Tensor` of type `float32`.
		    A float scale that represents the factor to multiply the value by.
		    scale_v needs to be non-negative.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  The hsv-adjusted image or images. No clipping will be done in this op.
		  The client can clip them using additional ops in their graph.
	**/
	static public function adjust_hsv_in_yiq(images:Dynamic, delta_h:Dynamic, scale_s:Dynamic, scale_v:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function adjust_hsv_in_yiq
	**/
	static public function adjust_hsv_in_yiq_eager_fallback(images:Dynamic, delta_h:Dynamic, scale_s:Dynamic, scale_v:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}