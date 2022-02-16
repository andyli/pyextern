/* This file is generated, do not edit! */
package torch.distributions.lowrank_multivariate_normal;
@:pythonImport("torch.distributions.lowrank_multivariate_normal") extern class Lowrank_multivariate_normal_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes Cholesky of :math:`I + W.T @ inv(D) @ W` for a batch of matrices :math:`W`
		and a batch of vectors :math:`D`.
	**/
	static public function _batch_capacitance_tril(W:Dynamic, D:Dynamic):Dynamic;
	/**
		Uses "matrix determinant lemma"::
		    log|W @ W.T + D| = log|C| + log|D|,
		where :math:`C` is the capacitance matrix :math:`I + W.T @ inv(D) @ W`, to compute
		the log determinant.
	**/
	static public function _batch_lowrank_logdet(W:Dynamic, D:Dynamic, capacitance_tril:Dynamic):Dynamic;
	/**
		Uses "Woodbury matrix identity"::
		    inv(W @ W.T + D) = inv(D) - inv(D) @ W @ inv(C) @ W.T @ inv(D),
		where :math:`C` is the capacitance matrix :math:`I + W.T @ inv(D) @ W`, to compute the squared
		Mahalanobis distance :math:`x.T @ inv(W @ W.T + D) @ x`.
	**/
	static public function _batch_lowrank_mahalanobis(W:Dynamic, D:Dynamic, x:Dynamic, capacitance_tril:Dynamic):Dynamic;
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
	static public function _standard_normal(shape:Dynamic, dtype:Dynamic, device:Dynamic):Dynamic;
}