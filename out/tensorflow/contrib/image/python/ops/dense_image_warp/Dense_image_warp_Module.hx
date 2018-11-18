/* This file is generated, do not edit! */
package tensorflow.contrib.image.python.ops.dense_image_warp;
@:pythonImport("tensorflow.contrib.image.python.ops.dense_image_warp") extern class Dense_image_warp_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Similar to Matlab's interp2 function.
		
		Finds values for query points on a grid using bilinear interpolation.
		
		Args:
		  grid: a 4-D float `Tensor` of shape `[batch, height, width, channels]`.
		  query_points: a 3-D float `Tensor` of N points with shape `[batch, N, 2]`.
		  name: a name for the operation (optional).
		  indexing: whether the query points are specified as row and column (ij),
		    or Cartesian coordinates (xy).
		
		Returns:
		  values: a 3-D `Tensor` with shape `[batch, N, channels]`
		
		Raises:
		  ValueError: if the indexing mode is invalid, or if the shape of the inputs
		    invalid.
	**/
	static public function _interpolate_bilinear(grid:Dynamic, query_points:Dynamic, ?name:Dynamic, ?indexing:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Image warping using per-pixel flow vectors.
		
		Apply a non-linear warp to the image, where the warp is specified by a dense
		flow field of offset vectors that define the correspondences of pixel values
		in the output image back to locations in the  source image. Specifically, the
		pixel value at output[b, j, i, c] is
		images[b, j - flow[b, j, i, 0], i - flow[b, j, i, 1], c].
		
		The locations specified by this formula do not necessarily map to an int
		index. Therefore, the pixel value is obtained by bilinear
		interpolation of the 4 nearest pixels around
		(b, j - flow[b, j, i, 0], i - flow[b, j, i, 1]). For locations outside
		of the image, we use the nearest pixel values at the image boundary.
		
		
		Args:
		  image: 4-D float `Tensor` with shape `[batch, height, width, channels]`.
		  flow: A 4-D float `Tensor` with shape `[batch, height, width, 2]`.
		  name: A name for the operation (optional).
		
		  Note that image and flow can be of type tf.half, tf.float32, or tf.float64,
		  and do not necessarily have to be the same type.
		
		Returns:
		  A 4-D float `Tensor` with shape`[batch, height, width, channels]`
		    and same type as input image.
		
		Raises:
		  ValueError: if height < 2 or width < 2 or the inputs have the wrong number
		              of dimensions.
	**/
	static public function dense_image_warp(image:Dynamic, flow:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}