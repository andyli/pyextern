/* This file is generated, do not edit! */
package scipy.optimize.nonlin;
@:pythonImport("scipy.optimize.nonlin", "LowRankMatrix") extern class LowRankMatrix {
	public function __array__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(alpha:Dynamic, n:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _matvec(v:Dynamic, alpha:Dynamic, cs:Dynamic, ds:Dynamic):Dynamic;
	/**
		Evaluate w = M^-1 v
	**/
	static public function _solve(v:Dynamic, alpha:Dynamic, cs:Dynamic, ds:Dynamic):Dynamic;
	public function append(c:Dynamic, d:Dynamic):Dynamic;
	/**
		Collapse the low-rank matrix to a full-rank one.
	**/
	public function collapse():Dynamic;
	/**
		Evaluate w = M v
	**/
	public function matvec(v:Dynamic):Dynamic;
	/**
		Reduce the rank of the matrix by dropping all vectors.
	**/
	public function restart_reduce(rank:Dynamic):Dynamic;
	/**
		Evaluate w = M^H v
	**/
	public function rmatvec(v:Dynamic):Dynamic;
	/**
		Evaluate w = M^-H v
	**/
	public function rsolve(v:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Reduce the rank of the matrix by dropping oldest vectors.
	**/
	public function simple_reduce(rank:Dynamic):Dynamic;
	/**
		Evaluate w = M^-1 v
	**/
	public function solve(v:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Reduce the rank of the matrix by retaining some SVD components.
		
		This corresponds to the "Broyden Rank Reduction Inverse"
		algorithm described in [1]_.
		
		Note that the SVD decomposition can be done by solving only a
		problem whose size is the effective rank of this matrix, which
		is viable even for large problems.
		
		Parameters
		----------
		max_rank : int
		    Maximum rank of this matrix after reduction.
		to_retain : int, optional
		    Number of SVD components to retain when reduction is done
		    (ie. rank > max_rank). Default is ``max_rank - 2``.
		
		References
		----------
		.. [1] B.A. van der Rotten, PhD thesis,
		   "A limited memory Broyden method to solve high-dimensional
		   systems of nonlinear equations". Mathematisch Instituut,
		   Universiteit Leiden, The Netherlands (2003).
		
		   http://www.math.leidenuniv.nl/scripties/Rotten.pdf
	**/
	public function svd_reduce(max_rank:Dynamic, ?to_retain:Dynamic):Dynamic;
}