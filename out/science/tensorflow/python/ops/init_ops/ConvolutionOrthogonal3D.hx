/* This file is generated, do not edit! */
package tensorflow.python.ops.init_ops;
@:pythonImport("tensorflow.python.ops.init_ops", "ConvolutionOrthogonal3D") extern class ConvolutionOrthogonal3D {
	/**
		Returns a tensor object initialized as specified by the initializer.
		
		Args:
		  shape: Shape of the tensor.
		  dtype: Optional dtype of the tensor. If not provided use the initializer
		    dtype.
		  partition_info: Optional information about the possible partitioning of a
		    tensor.
	**/
	public function __call__(shape:Dynamic, ?dtype:Dynamic, ?partition_info:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(?gain:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?gain:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Construct a 3 x 3 kernel.
		
		Used to construct orthgonal kernel.
		
		Args:
		  p1: A symmetric projection matrix.
		  p2: A symmetric projection matrix.
		  p3: A symmetric projection matrix.
		
		Returns:
		  A 2 x 2 x 2 kernel.
		Raises:
		  ValueError: If the dimensions of p1, p2 and p3 are different.
	**/
	public function _block_orth(p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;
	/**
		Convert a dictionary to a tensor.
		
		Args:
		  x: A k1 * k2 dictionary.
		  k1: First dimension of x.
		  k2: Second dimension of x.
		  k3: Third dimension of x.
		
		Returns:
		  A k1 * k2 * k3 tensor.
	**/
	public function _dict_to_tensor(x:Dynamic, k1:Dynamic, k2:Dynamic, k3:Dynamic):Dynamic;
	/**
		Matrix convolution.
		
		Args:
		  m1: is a k x k x k  dictionary, each element is a n x n matrix.
		  m2: is a l x l x l dictionary, each element is a n x n matrix.
		
		Returns:
		  (k + l - 1) x (k + l - 1) x (k + l - 1) dictionary each
		  element is a n x n matrix.
		Raises:
		  ValueError: if the entries of m1 and m2 are of different dimensions.
	**/
	public function _matrix_conv(m1:Dynamic, m2:Dynamic):Dynamic;
	/**
		Construct orthogonal kernel for convolution.
		
		Args:
		  ksize: Kernel size.
		  cin: Number of input channels.
		  cout: Number of output channels.
		
		Returns:
		  An [ksize, ksize, ksize, cin, cout] orthogonal kernel.
		Raises:
		  ValueError: If cin > cout.
	**/
	public function _orthogonal_kernel(ksize:Dynamic, cin:Dynamic, cout:Dynamic):Dynamic;
	/**
		Construct an n x n orthogonal matrix.
		
		Args:
		  n: Dimension.
		
		Returns:
		  A n x n orthogonal matrix.
	**/
	public function _orthogonal_matrix(n:Dynamic):Dynamic;
	/**
		Compute a n x n symmetric projection matrix.
		
		Args:
		  n: Dimension.
		
		Returns:
		  A n x n symmetric projection matrix, i.e. a matrix P s.t. P=P*P, P=P^T.
	**/
	public function _symmetric_projection(n:Dynamic):Dynamic;
	/**
		Instantiates an initializer from a configuration dictionary.
		
		Example:
		
		```python
		initializer = RandomUniform(-1, 1)
		config = initializer.get_config()
		initializer = RandomUniform.from_config(config)
		```
		
		Args:
		  config: A Python dictionary. It will typically be the output of
		    `get_config`.
		
		Returns:
		  An Initializer instance.
	**/
	static public function from_config(config:Dynamic):Dynamic;
	/**
		Returns the configuration of the initializer as a JSON-serializable dict.
		
		Returns:
		  A JSON-serializable Python dict.
	**/
	public function get_config():Dynamic;
}