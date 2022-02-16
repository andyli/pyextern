/* This file is generated, do not edit! */
package tensorflow.python.ops.image_grad;
@:pythonImport("tensorflow.python.ops.image_grad") extern class Image_grad_Module {
	/**
		The derivatives for crop_and_resize.
		
		We back-propagate to the image only when the input image tensor has floating
		point dtype but we always back-propagate to the input boxes tensor.
		
		Args:
		  op: The CropAndResize op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input image, boxes, as well as the always-None
		  gradients w.r.t. box_ind and crop_size.
	**/
	static public function _CropAndResizeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Wrapper function around `math_ops.div_no_nan()` to perform a "safe" reciprocal incase the input is zero. Avoids divide by zero and NaNs.
		
		Input:
		  x -> input tensor to be reciprocat-ed.
		Returns:
		  x_reciprocal -> reciprocal of x without NaNs.
	**/
	static public function _CustomReciprocal(x:Dynamic):Dynamic;
	/**
		The gradients for `rgb_to_hsv` operation.
		
		This function is a piecewise continuous function as defined here:
		https://en.wikipedia.org/wiki/HSL_and_HSV#From_RGB
		We perform the multivariate derivative and compute all partial derivatives
		separately before adding them in the end. Formulas are given before each
		partial derivative calculation.
		
		Args:
		  op: The `rgb_to_hsv` `Operation` that we are differentiating.
		  grad: Gradient with respect to the output of the `rgb_to_hsv` op.
		
		Returns:
		  Gradients with respect to the input of `rgb_to_hsv`.
	**/
	static public function _RGBToHSVGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for bicubic resizing.
		
		Args:
		  op: The ResizeBicubic op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input.
	**/
	static public function _ResizeBicubicGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for bilinear resizing.
		
		Args:
		  op: The ResizeBilinear op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input.
	**/
	static public function _ResizeBilinearGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for nearest neighbor resizing.
		
		Args:
		  op: The ResizeNearestNeighbor op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input and the output.
	**/
	static public function _ResizeNearestNeighborGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for ScaleAndTranslate transformation op.
		
		Args:
		  op: The ScaleAndTranslate op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input.
	**/
	static public function _ScaleAndTranslateGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}