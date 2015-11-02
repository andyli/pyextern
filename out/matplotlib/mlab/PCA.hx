/* This file is generated, do not edit! */
package matplotlib.mlab;
@:pythonImport("matplotlib.mlab", "PCA") extern class PCA {
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
		compute the SVD of a and store data for PCA.  Use project to
		project the data onto a reduced set of dimensions
		
		Inputs:
		
		  *a*: a numobservations x numdims array
		  *standardize*: True if input data are to be standardized. If False,
		  only centering will be carried out.
		
		Attrs:
		
		  *a* a centered unit sigma version of input a
		
		  *numrows*, *numcols*: the dimensions of a
		
		  *mu*: a numdims array of means of a. This is the vector that points
		  to the origin of PCA space.
		
		  *sigma*: a numdims array of standard deviation of a
		
		  *fracs*: the proportion of variance of each of the principal
		  components
		
		  *s*: the actual eigenvalues of the decomposition
		
		  *Wt*: the weight vector for projecting a numdims point or array into
		  PCA space
		
		  *Y*: a projected into PCA space
		
		
		The factor loadings are in the Wt factor, i.e., the factor
		loadings for the 1st principal component are given by Wt[0].
		This row is also the 1st eigenvector.
	**/
	@:native("__init__")
	public function ___init__(a:Dynamic, ?standardize:Dynamic):Dynamic;
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
	static public function _get_colinear():Dynamic;
	/**
		center and optionally standardize the data using the mean and sigma
		from training set a
	**/
	public function center(x:Dynamic):Dynamic;
	/**
		project x onto the principle axes, dropping any axes where fraction
		of variance<minfrac
	**/
	public function project(x:Dynamic, ?minfrac:Dynamic):Dynamic;
}