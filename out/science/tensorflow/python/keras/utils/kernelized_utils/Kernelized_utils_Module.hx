/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.kernelized_utils;
@:pythonImport("tensorflow.python.keras.utils.kernelized_utils") extern class Kernelized_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Aligns x and y tensors to allow computations over pairs of their rows.
	**/
	static public function _align_matrices(x:Dynamic, y:Dynamic):Dynamic;
	/**
		If input tensor is a vector (i.e., has rank 1), converts it to matrix.
	**/
	static public function _to_matrix(u:Dynamic):Dynamic;
	/**
		Computes exact Gaussian kernel value(s) for tensors x and y and stddev.
		
		The Gaussian kernel for vectors u, v is defined as follows:
		     K(u, v) = exp(-||u-v||^2 / (2* stddev^2))
		where the norm is the l2-norm. x, y can be either vectors or matrices. If they
		are vectors, they must have the same dimension. If they are matrices, they
		must have the same number of columns. In the latter case, the method returns
		(as a matrix) K(u, v) values for all pairs (u, v) where u is a row from x and
		v is a row from y.
		
		Args:
		  x: a tensor of rank 1 or 2. It's shape should be either [dim] or [m, dim].
		  y: a tensor of rank 1 or 2. It's shape should be either [dim] or [n, dim].
		  stddev: The width of the Gaussian kernel.
		
		Returns:
		  A single value (scalar) with shape (1, 1) (if x, y are vectors) or a matrix
		    of shape (m, n) with entries K(u, v) (where K is the Gaussian kernel) for
		    all (u,v) pairs where u, v are rows from x and y respectively.
		
		Raises:
		  ValueError: if the shapes of x, y are not compatible.
	**/
	static public function exact_gaussian_kernel(x:Dynamic, y:Dynamic, stddev:Dynamic):Dynamic;
	/**
		Computes exact Laplacian kernel value(s) for tensors x and y using stddev.
		
		The Laplacian kernel for vectors u, v is defined as follows:
		     K(u, v) = exp(-||u-v|| / stddev)
		where the norm is the l1-norm. x, y can be either vectors or matrices. If they
		are vectors, they must have the same dimension. If they are matrices, they
		must have the same number of columns. In the latter case, the method returns
		(as a matrix) K(u, v) values for all pairs (u, v) where u is a row from x and
		v is a row from y.
		
		Args:
		  x: a tensor of rank 1 or 2. It's shape should be either [dim] or [m, dim].
		  y: a tensor of rank 1 or 2. It's shape should be either [dim] or [n, dim].
		  stddev: The width of the Gaussian kernel.
		
		Returns:
		  A single value (scalar) with shape (1, 1)  if x, y are vectors or a matrix
		  of shape (m, n) with entries K(u, v) (where K is the Laplacian kernel) for
		  all (u,v) pairs where u, v are rows from x and y respectively.
		
		Raises:
		  ValueError: if the shapes of x, y are not compatible.
	**/
	static public function exact_laplacian_kernel(x:Dynamic, y:Dynamic, stddev:Dynamic):Dynamic;
	static public function inner_product(u:Dynamic, v:Dynamic):Dynamic;
}