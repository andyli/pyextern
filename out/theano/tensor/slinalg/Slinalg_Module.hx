/* This file is generated, do not edit! */
package theano.tensor.slinalg;
@:pythonImport("theano.tensor.slinalg") extern class Slinalg_Module {
	static public var MATRIX_STRUCTURES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	static public function cholesky(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function eigvalsh(a:Dynamic, b:Dynamic, ?lower:Dynamic):Dynamic;
	static public function expm(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var imported_scipy : Dynamic;
	/**
		Kronecker product.
		
		Same as scipy.linalg.kron(a, b).
		
		Parameters
		----------
		a: array_like
		b: array_like
		
		Returns
		-------
		array_like with a.ndim + b.ndim - 2 dimensions
		
		Notes
		-----
		numpy.kron(a, b) != scipy.linalg.kron(a, b)!
		They don't have the same shape and order when
		a.ndim != b.ndim != 2.
	**/
	static public function kron(a:Dynamic, b:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public var print_function : Dynamic;
	static public function solve(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function solve_lower_triangular(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function solve_symmetric(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function solve_upper_triangular(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}