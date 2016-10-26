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
		Shape function for CropAndResizeGradBoxes.
	**/
	static public function _CropAndResizeGradBoxesShape(op:Dynamic):Dynamic;
	/**
		Shape function for CropAndResizeGradImage.
	**/
	static public function _CropAndResizeGradImageShape(op:Dynamic):Dynamic;
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
		Shape function for ResizeBilinearGrad.
	**/
	static public function _ResizeBilinearGradShape(op:Dynamic):Dynamic;
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
		Shape function for the resize grad ops.
	**/
	static public function _ResizeShape(op:Dynamic):Dynamic;
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