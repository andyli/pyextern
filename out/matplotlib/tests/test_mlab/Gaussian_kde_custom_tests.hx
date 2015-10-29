/* This file is generated, do not edit! */
package matplotlib.tests.test_mlab;
@:pythonImport("matplotlib.tests.test_mlab", "gaussian_kde_custom_tests") extern class Gaussian_kde_custom_tests {
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
	public function __init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Use a multi-dimensional array as the dataset and test the callable's
		cov factor
	**/
	public function test_callable_covariance_dataset():Dynamic;
	/**
		Use a single-dimensional array as the dataset and test the
		callable's cov factor
	**/
	public function test_callable_singledim_dataset():Dynamic;
	/**
		Pass no data into the GaussianKDE class.
	**/
	public function test_no_data():Dynamic;
	/**
		Use a dataset and test a scalar's cov factor
		        
	**/
	public function test_scalar_covariance_dataset():Dynamic;
	/**
		Use an empty array as the dataset and test the scalar's cov factor
		        
	**/
	public function test_scalar_empty_dataset():Dynamic;
	/**
		Use a multi-dimensional array as the dataset and test scott's output
		        
	**/
	public function test_scott_multidim_dataset():Dynamic;
	/**
		Use a single-dimensional array as the dataset and test scott's
		output
	**/
	public function test_scott_singledim_dataset():Dynamic;
	/**
		Use a multi-dimensional array as the dataset and test silverman's
		output
	**/
	public function test_silverman_multidim_dataset():Dynamic;
	/**
		Use a single dimension list as the dataset and test silverman's
		output.
	**/
	public function test_silverman_singledim_dataset():Dynamic;
	/**
		Pass a single dataset element into the GaussianKDE class.
	**/
	public function test_single_dataset_element():Dynamic;
	/**
		Test the error message that should be called when bw is invalid.
	**/
	public function test_wrong_bw_method():Dynamic;
}