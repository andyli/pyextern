/* This file is generated, do not edit! */
package tensorflow.contrib.image.ops.gen_image_ops;
@:pythonImport("tensorflow.contrib.image.ops.gen_image_ops") extern class Gen_image_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bipartite_match_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Find bipartite matching based on a given distance matrix.
		
		A greedy bi-partite matching algorithm is used to obtain the matching with the
		(greedy) minimum distance.
		
		Args:
		  distance_mat: A `Tensor` of type `float32`.
		    A 2-D float tensor of shape `[num_rows, num_columns]`. It is a
		    pair-wise distance matrix between the entities represented by each row and
		    each column. It is an asymmetric matrix. The smaller the distance is, the more
		    similar the pairs are. The bipartite matching is to minimize the distances.
		  num_valid_rows: A `Tensor` of type `float32`.
		    A scalar or a 1-D tensor with one element describing the
		    number of valid rows of distance_mat to consider for the bipartite matching.
		    If set to be negative, then all rows from `distance_mat` are used.
		  top_k: An optional `int`. Defaults to `-1`.
		    A scalar that specifies the number of top-k matches to retrieve.
		    If set to be negative, then is set according to the maximum number of
		    matches from `distance_mat`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (row_to_col_match_indices, col_to_row_match_indices).
		
		  row_to_col_match_indices: A `Tensor` of type `int32`. A vector of length num_rows, which is the number of
		    rows of the input `distance_matrix`.
		    If `row_to_col_match_indices[i]` is not -1, row i is matched to column
		    `row_to_col_match_indices[i]`.
		  col_to_row_match_indices: A `Tensor` of type `int32`. A vector of length num_columns, which is the number
		    of columns of the input distance matrix.
		    If `col_to_row_match_indices[j]` is not -1, column j is matched to row
		    `col_to_row_match_indices[j]`.
	**/
	static public function bipartite_match(distance_mat:Dynamic, num_valid_rows:Dynamic, ?top_k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bipartite_match
	**/
	static public function bipartite_match_eager_fallback(distance_mat:Dynamic, num_valid_rows:Dynamic, ?top_k:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		Find the connected components of image(s).
		
		For each image (along the 0th axis), all connected components of adjacent pixels
		with the same non-zero value are detected and given unique ids.
		
		The returned `components` tensor has 0s for the zero pixels of `images`, and
		arbitrary nonzero ids for the connected components of nonzero values. Ids are
		unique across all of the images, and are in row-major order by the first pixel
		in the component.
		
		Uses union-find with union by rank but not path compression, giving a runtime of
		`O(n log n)`. See:
		    https://en.wikipedia.org/wiki/Disjoint-set_data_structure#Time_Complexity
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `int64`, `int32`, `uint16`, `int16`, `uint8`, `int8`, `half`, `float32`, `float64`, `bool`, `string`.
		    Image(s) with shape (N, H, W).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  Component ids for each pixel in "image". Same shape as "image". Zero
		  pixels all have an output of 0, and all components of adjacent pixels with
		  the same value are given consecutive ids, starting from 1.
	**/
	static public function image_connected_components(image:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function image_connected_components
	**/
	static public function image_connected_components_eager_fallback(image:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		Input `image` is a `Tensor` in NHWC format (where the axes are image in batch,
		rows, columns, and channels. Input `transforms` is a num_images x 8 or 1 x 8
		matrix, where each row corresponds to a 3 x 3 projective transformation matrix,
		with the last entry assumed to be 1. If there is one row, the same
		transformation will be applied to all images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to 0.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4D `Tensor`, input image(s) in NHWC format.
		  transforms: A `Tensor` of type `float32`.
		    2D `Tensor`, projective transform(s) to apply to the image(s).
		  interpolation: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  4D `Tensor`, image(s) in NHWC format, generated by applying
		  the `transforms` to the `images`. Satisfies the description above.
	**/
	static public function image_projective_transform(images:Dynamic, transforms:Dynamic, interpolation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function image_projective_transform
	**/
	static public function image_projective_transform_eager_fallback(images:Dynamic, transforms:Dynamic, interpolation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies the given transform to each of the images.
		
		Input `image` is a `Tensor` in NHWC format (where the axes are image in batch,
		rows, columns, and channels. Input `transforms` is a num_images x 8 or 1 x 8
		matrix, where each row corresponds to a 3 x 3 projective transformation matrix,
		with the last entry assumed to be 1. If there is one row, the same
		transformation will be applied to all images.
		
		If one row of `transforms` is `[a0, a1, a2, b0, b1, b2, c0, c1]`, then it maps
		the *output* point `(x, y)` to a transformed *input* point
		`(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`, where
		`k = c0 x + c1 y + 1`. If the transformed point lays outside of the input
		image, the output pixel is set to 0.
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `half`, `float32`, `float64`.
		    4D `Tensor`, input image(s) in NHWC format.
		  transforms: A `Tensor` of type `float32`.
		    2D `Tensor`, projective transform(s) to apply to the image(s).
		  output_shape: A `Tensor` of type `int32`.
		  interpolation: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `images`.
		  4D `Tensor`, image(s) in NHWC format, generated by applying
		  the `transforms` to the `images`. Satisfies the description above.
	**/
	static public function image_projective_transform_v2(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, interpolation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function image_projective_transform_v2
	**/
	static public function image_projective_transform_v2_eager_fallback(images:Dynamic, transforms:Dynamic, output_shape:Dynamic, interpolation:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}