/* This file is generated, do not edit! */
package tensorflow.contrib.image.python.ops.sparse_image_warp;
@:pythonImport("tensorflow.contrib.image.python.ops.sparse_image_warp") extern class Sparse_image_warp_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add control points for zero-flow boundary conditions.
		
		 Augment the set of control points with extra points on the
		 boundary of the image that have zero flow.
		
		Args:
		  control_point_locations: input control points
		  control_point_flows: their flows
		  image_height: image height
		  image_width: image width
		  boundary_points_per_edge: number of points to add in the middle of each
		                         edge (not including the corners).
		                         The total number of points added is
		                         4 + 4*(boundary_points_per_edge).
		
		Returns:
		  merged_control_point_locations: augmented set of control point locations
		  merged_control_point_flows: augmented set of control point flows
	**/
	static public function _add_zero_flow_controls_at_boundary(control_point_locations:Dynamic, control_point_flows:Dynamic, image_height:Dynamic, image_width:Dynamic, boundary_points_per_edge:Dynamic):Dynamic;
	/**
		Tile arbitrarily-sized np_array to include new batch dimension.
	**/
	static public function _expand_to_minibatch(np_array:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Compute evenly-spaced indices along edge of image.
	**/
	static public function _get_boundary_locations(image_height:Dynamic, image_width:Dynamic, num_points_per_edge:Dynamic):Dynamic;
	/**
		Wrapper for np.meshgrid.
	**/
	static public function _get_grid_locations(image_height:Dynamic, image_width:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Image warping using correspondences between sparse control points.
		
		Apply a non-linear warp to the image, where the warp is specified by
		the source and destination locations of a (potentially small) number of
		control points. First, we use a polyharmonic spline
		(`tf.contrib.image.interpolate_spline`) to interpolate the displacements
		between the corresponding control points to a dense flow field.
		Then, we warp the image using this dense flow field
		(`tf.contrib.image.dense_image_warp`).
		
		Let t index our control points. For regularization_weight=0, we have:
		warped_image[b, dest_control_point_locations[b, t, 0],
		                dest_control_point_locations[b, t, 1], :] =
		image[b, source_control_point_locations[b, t, 0],
		         source_control_point_locations[b, t, 1], :].
		
		For regularization_weight > 0, this condition is met approximately, since
		regularized interpolation trades off smoothness of the interpolant vs.
		reconstruction of the interpolant at the control points.
		See `tf.contrib.image.interpolate_spline` for further documentation of the
		interpolation_order and regularization_weight arguments.
		
		
		Args:
		  image: `[batch, height, width, channels]` float `Tensor`
		  source_control_point_locations: `[batch, num_control_points, 2]` float
		    `Tensor`
		  dest_control_point_locations: `[batch, num_control_points, 2]` float
		    `Tensor`
		  interpolation_order: polynomial order used by the spline interpolation
		  regularization_weight: weight on smoothness regularizer in interpolation
		  num_boundary_points: How many zero-flow boundary points to include at
		    each image edge.Usage:
		      num_boundary_points=0: don't add zero-flow points
		      num_boundary_points=1: 4 corners of the image
		      num_boundary_points=2: 4 corners and one in the middle of each edge
		        (8 points total)
		      num_boundary_points=n: 4 corners and n-1 along each edge
		  name: A name for the operation (optional).
		
		  Note that image and offsets can be of type tf.half, tf.float32, or
		  tf.float64, and do not necessarily have to be the same type.
		
		Returns:
		  warped_image: `[batch, height, width, channels]` float `Tensor` with same
		    type as input image.
		  flow_field: `[batch, height, width, 2]` float `Tensor` containing the dense
		    flow field produced by the interpolation.
	**/
	static public function sparse_image_warp(image:Dynamic, source_control_point_locations:Dynamic, dest_control_point_locations:Dynamic, ?interpolation_order:Dynamic, ?regularization_weight:Dynamic, ?num_boundary_points:Dynamic, ?name:Dynamic):Dynamic;
}