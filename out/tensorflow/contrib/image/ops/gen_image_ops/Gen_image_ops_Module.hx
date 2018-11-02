/* This file is generated, do not edit! */
package tensorflow.contrib.image.ops.gen_image_ops;
@:pythonImport("tensorflow.contrib.image.ops.gen_image_ops") extern class Gen_image_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
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
		
		A greedy bi-partite matching alogrithm is used to obtain the matching with the
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
		    of columns of the input ditance matrix.
		    If `col_to_row_match_indices[j]` is not -1, column j is matched to row
		    `col_to_row_match_indices[j]`.
	**/
	static public function bipartite_match(distance_mat:Dynamic, num_valid_rows:Dynamic, ?top_k:Dynamic, ?name:Dynamic):Dynamic;
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
		image, the output pixel is set to 0. The output is the same size as the input,
		
		Args:
		  images: A `Tensor`. Must be one of the following types: `uint8`, `int32`, `int64`, `float32`, `float64`.
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
}