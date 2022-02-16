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
		Computes the squared Mahalanobis distance :math:`\mathbf{x}^\top\mathbf{M}^{-1}\mathbf{x}`
		for a factored :math:`\mathbf{M} = \mathbf{L}\mathbf{L}^\top`.
		
		Accepts batches for both bL and bx. They are not necessarily assumed to have the same batch
		shape, but `bL` one should be able to broadcasted to `bx` one.
	**/
	static public function _batch_mahalanobis(bL:Dynamic, bx:Dynamic):Dynamic;
	/**
		Performs a batched matrix-vector product, with compatible but different batch shapes.
		
		This function takes as input `bmat`, containing :math:`n \times n` matrices, and
		`bvec`, containing length :math:`n` vectors.
		
		Both `bmat` and `bvec` may have any number of leading dimensions, which correspond
		to a batch shape. They are not necessarily assumed to have the same batch shape,
		just ones which can be broadcasted.
	**/
	static public function _batch_mv(bmat:Dynamic, bvec:Dynamic):Dynamic;
	static public function _precision_to_scale_tril(P:Dynamic):Dynamic;
	static public function _standard_normal(shape:Dynamic, dtype:Dynamic, device:Dynamic):Dynamic;
}