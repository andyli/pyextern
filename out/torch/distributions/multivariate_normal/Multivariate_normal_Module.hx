/* This file is generated, do not edit! */
package torch.distributions.multivariate_normal;
@:pythonImport("torch.distributions.multivariate_normal") extern class Multivariate_normal_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the diagonals of a batch of square matrices.
	**/
	static public function _batch_diag(bmat:Dynamic):Dynamic;
	/**
		Returns the inverses of a batch of square matrices.
	**/
	static public function _batch_inverse(bmat:Dynamic):Dynamic;
	/**
		Computes the squared Mahalanobis distance :math:`\mathbf{x}^\top\mathbf{M}^{-1}\mathbf{x}`
		for a factored :math:`\mathbf{M} = \mathbf{L}\mathbf{L}^\top`.
		
		Accepts batches for both L and x.
	**/
	static public function _batch_mahalanobis(L:Dynamic, x:Dynamic):Dynamic;
	/**
		Performs a batched matrix-vector product, with compatible but different batch shapes.
		
		This function takes as input `bmat`, containing :math:`n \times n` matrices, and
		`bvec`, containing length :math:`n` vectors.
		
		Both `bmat` and `bvec` may have any number of leading dimensions, which correspond
		to a batch shape. They are not necessarily assumed to have the same batch shape,
		just ones which can be broadcasted.
	**/
	static public function _batch_mv(bmat:Dynamic, bvec:Dynamic):Dynamic;
	/**
		Applies a Cholesky decomposition to all matrices in a batch of arbitrary shape.
	**/
	static public function _batch_potrf_lower(bmat:Dynamic):Dynamic;
	/**
		Given a batch of matrices and a batch of vectors, compute the combined `batch_shape`.
	**/
	static public function _get_batch_shape(bmat:Dynamic, bvec:Dynamic):Dynamic;
}