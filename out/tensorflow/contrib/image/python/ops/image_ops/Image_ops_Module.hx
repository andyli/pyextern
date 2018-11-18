/* This file is generated, do not edit! */
package tensorflow.contrib.image.python.ops.image_ops;
@:pythonImport("tensorflow.contrib.image.python.ops.image_ops") extern class Image_ops_Module {
	static public var _IMAGE_DTYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the gradient for ImageProjectiveTransform.
	**/
	static public function _image_projective_transform_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns projective transform(s) for the given angle(s).
		
		Args:
		  angles: A scalar angle to rotate all images by, or (for batches of images)
		      a vector with an angle to rotate each image in the batch. The rank must
		      be statically known (the shape is not `TensorShape(None)`.
		  image_height: Height of the image(s) to be transformed.
		  image_width: Width of the image(s) to be transformed.
		
		Returns:
		  A tensor of shape (num_images, 8). Projective transforms which can be given
		    to `tf.contrib.image.transform`.
	**/
	static public function angles_to_projective_transforms(angles:Dynamic, image_height:Dynamic, image_width:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Find bipartite matching based on a given distance matrix.
		
		A greedy bi-partite matching algorithm is used to obtain the matching with
		the (greedy) minimum distance.
		
		Args:
		  distance_mat: A 2-D float tensor of shape `[num_rows, num_columns]`. It is a
		    pair-wise distance matrix between the entities represented by each row and
		    each column. It is an asymmetric matrix. The smaller the distance is, the
		    more similar the pairs are. The bipartite matching is to minimize the
		    distances.
		  num_valid_rows: A scalar or a 1-D tensor with one element describing the
		    number of valid rows of distance_mat to consider for the bipartite
		    matching. If set to be negative, then all rows from `distance_mat` are
		    used.
		  top_k: A scalar that specifies the number of top-k matches to retrieve.
		    If set to be negative, then is set according to the maximum number of
		    matches from `distance_mat`.
		  name: The name of the op.
		
		Returns:
		  row_to_col_match_indices: A vector of length num_rows, which is the number
		    of rows of the input `distance_matrix`. If `row_to_col_match_indices[i]`
		    is not -1, row i is matched to column `row_to_col_match_indices[i]`.
		  col_to_row_match_indices: A vector of length num_columns, which is the
		    number of columns of the input distance matrix.
		    If `col_to_row_match_indices[j]` is not -1, column j is matched to row
		    `col_to_row_match_indices[j]`.
	**/
	static public function bipartite_match(distance_mat:Dynamic, num_valid_rows:Dynamic, ?top_k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Composes the transforms tensors.
		
		Args:
		  *transforms: List of image projective transforms to be composed. Each
		      transform is length 8 (single transform) or shape (N, 8) (batched
		      transforms). The shapes of all inputs must be equal, and at least one
		      input must be given.
		
		Returns:
		  A composed transform tensor. When passed to `tf.contrib.image.transform`,
		      equivalent to applying each of the given transforms to the image in
		      order.
	**/
	static public function compose_transforms(?transforms:python.VarArgs<Dynamic>):Dynamic;
	/**
		Labels the connected components in a batch of images.
		
		A component is a set of pixels in a single input image, which are all adjacent
		and all have the same non-zero value. The components using a squared
		connectivity of one (all True entries are joined with their neighbors above,
		below, left, and right). Components across all images have consecutive ids 1
		through n. Components are labeled according to the first pixel of the
		component appearing in row-major order (lexicographic order by
		image_index_in_batch, row, col). Zero entries all have an output id of 0.
		
		This op is equivalent with `scipy.ndimage.measurements.label` on a 2D array
		with the default structuring element (which is the connectivity used here).
		
		Args:
		  images: A 2D (H, W) or 3D (N, H, W) Tensor of boolean image(s).
		
		Returns:
		  Components with the same shape as `images`. False entries in `images` have
		  value 0, and all True entries map to a component id > 0.
		
		Raises:
		  TypeError: if `images` is not 2D or 3D.
	**/
	static public function connected_components(images:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts `tf.contrib.image` projective transforms to affine matrices.
		
		Note that the output matrices map output coordinates to input coordinates. For
		the forward transformation matrix, call `tf.linalg.inv` on the result.
		
		Args:
		  transforms: Vector of length 8, or batches of transforms with shape
		    `(N, 8)`.
		
		Returns:
		  3D tensor of matrices with shape `(N, 3, 3)`. The output matrices map the
		    *output coordinates* (in homogeneous coordinates) of each transform to the
		    corresponding *input coordinates*.
		
		Raises:
		  ValueError: If `transforms` have an invalid shape.
	**/
	static public function flat_transforms_to_matrices(transforms:Dynamic):Dynamic;
	/**
		Converts affine matrices to `tf.contrib.image` projective transforms.
		
		Note that we expect matrices that map output coordinates to input coordinates.
		To convert forward transformation matrices, call `tf.linalg.inv` on the
		matrices and use the result here.
		
		Args:
		  transform_matrices: One or more affine transformation matrices, for the
		    reverse transformation in homogeneous coordinates. Shape `(3, 3)` or
		    `(N, 3, 3)`.
		
		Returns:
		  2D tensor of flat transforms with shape `(N, 8)`, which may be passed into
		    `tf.contrib.image.transform`.
		
		Raises:
		  ValueError: If `transform_matrices` have an invalid shape.
	**/
	static public function matrices_to_flat_transforms(transform_matrices:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Rotate image(s) counterclockwise by the passed angle(s) in radians.
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		     (NHWC), (num_rows, num_columns, num_channels) (HWC), or
		     (num_rows, num_columns) (HW). The rank must be statically known (the
		     shape is not `TensorShape(None)`.
		  angles: A scalar angle to rotate all images by, or (if images has rank 4)
		     a vector of length num_images, with an angle for each image in the batch.
		  interpolation: Interpolation mode. Supported values: "NEAREST", "BILINEAR".
		  name: The name of the op.
		
		Returns:
		  Image(s) with the same type and shape as `images`, rotated by the given
		  angle(s). Empty space due to the rotation will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
	**/
	static public function rotate(images:Dynamic, angles:Dynamic, ?interpolation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies the given transform(s) to the image(s).
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		     (NHWC), (num_rows, num_columns, num_channels) (HWC), or
		     (num_rows, num_columns) (HW). The rank must be statically known (the
		     shape is not `TensorShape(None)`.
		  transforms: Projective transform matrix/matrices. A vector of length 8 or
		     tensor of size N x 8. If one row of transforms is
		     [a0, a1, a2, b0, b1, b2, c0, c1], then it maps the *output* point
		     `(x, y)` to a transformed *input* point
		     `(x', y') = ((a0 x + a1 y + a2) / k, (b0 x + b1 y + b2) / k)`,
		     where `k = c0 x + c1 y + 1`. The transforms are *inverted* compared to
		     the transform mapping input points to output points. Note that gradients
		     are not backpropagated into transformation parameters.
		  interpolation: Interpolation mode. Supported values: "NEAREST", "BILINEAR".
		  output_shape: Output dimesion after the transform, [height, width].
		     If None, output is the same size as input image.
		
		  name: The name of the op.
		
		Returns:
		  Image(s) with the same type and shape as `images`, with the given
		  transform(s) applied. Transformed coordinates outside of the input image
		  will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
		  ValueError: If output shape is not 1-D int32 Tensor.
	**/
	static public function transform(images:Dynamic, transforms:Dynamic, ?interpolation:Dynamic, ?output_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Translate image(s) by the passed vectors(s).
		
		Args:
		  images: A tensor of shape (num_images, num_rows, num_columns, num_channels)
		      (NHWC), (num_rows, num_columns, num_channels) (HWC), or
		      (num_rows, num_columns) (HW). The rank must be statically known (the
		      shape is not `TensorShape(None)`.
		  translations: A vector representing [dx, dy] or (if images has rank 4)
		      a matrix of length num_images, with a [dx, dy] vector for each image in
		      the batch.
		  interpolation: Interpolation mode. Supported values: "NEAREST", "BILINEAR".
		  name: The name of the op.
		
		Returns:
		  Image(s) with the same type and shape as `images`, translated by the given
		      vector(s). Empty space due to the translation will be filled with zeros.
		
		Raises:
		  TypeError: If `image` is an invalid type.
	**/
	static public function translate(images:Dynamic, translations:Dynamic, ?interpolation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns projective transform(s) for the given translation(s).
		
		Args:
		    translations: A 2-element list representing [dx, dy] or a matrix of
		        2-element lists representing [dx, dy] to translate for each image
		        (for a batch of images). The rank must be statically known (the shape
		        is not `TensorShape(None)`.
		    name: The name of the op.
		
		Returns:
		    A tensor of shape (num_images, 8) projective transforms which can be given
		        to `tf.contrib.image.transform`.
	**/
	static public function translations_to_projective_transforms(translations:Dynamic, ?name:Dynamic):Dynamic;
}