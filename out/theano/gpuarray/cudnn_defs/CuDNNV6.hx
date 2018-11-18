/* This file is generated, do not edit! */
package theano.gpuarray.cudnn_defs;
@:pythonImport("theano.gpuarray.cudnn_defs", "CuDNNV6") extern class CuDNNV6 {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function bwd_data_algo_supports_dtype_config(algo:Dynamic, dtype:Dynamic, precision:Dynamic, ndim:Dynamic):Dynamic;
	public function bwd_filter_algo_supports_dtype_config(algo:Dynamic, dtype:Dynamic, precision:Dynamic, ndim:Dynamic):Dynamic;
	static public var conv3d_bwd_data_algorithms : Dynamic;
	static public var conv3d_bwd_filter_algorithms : Dynamic;
	static public var conv3d_fwd_algorithms : Dynamic;
	static public function cudnnBatchNormMode_t(?name:Dynamic):Dynamic;
	static public function cudnnConvolutionBwdDataAlgo_t(?name:Dynamic):Dynamic;
	static public function cudnnConvolutionBwdFilterAlgo_t(?name:Dynamic):Dynamic;
	static public function cudnnConvolutionFwdAlgo_t(?name:Dynamic):Dynamic;
	static public function cudnnConvolutionMode_t(?name:Dynamic):Dynamic;
	static public function cudnnDataType_t(?name:Dynamic):Dynamic;
	static public function cudnnPoolingMode_t(?name:Dynamic):Dynamic;
	static public function cudnnReduceTensorOp_t(?name:Dynamic):Dynamic;
	static public function cudnnSoftmaxAlgorithm_t(?name:Dynamic):Dynamic;
	static public function cudnnSoftmaxMode_t(?name:Dynamic):Dynamic;
	static public var deterministic_bwd_data_algorithms : Dynamic;
	static public var deterministic_bwd_filter_algorithms : Dynamic;
	static public var deterministic_fwd_algorithms : Dynamic;
	public function fwd_algo_supports_dtype_config(algo:Dynamic, dtype:Dynamic, precision:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Return the tuple of data type configurations supported by this version of cuDNN.
		This is currently convenient for all supported cuDNN versions, as Theano does not
		yet support new data types (like INT8, INT8x4, etc.).
		
		``check_runtime`` may be a function that tests if a data type configuration is supported.::
		
		    is_supported = check_runtime(dtype, precision)
		
		.. warning::
		
		    From documentation for cudnnConvolutionForward (for both v5.1 and v6):
		
		    .. code-block::
		
		        TRUE_HALF_CONFIG is only supported on architectures with true fp16 support
		        (compute capability 5.3 and 6.0)
		
		    This seems to be a general remark about f16 support (not only for FWD).
		    It can be checked at runtime only.
	**/
	public function get_supported_dtype_configs(?check_runtime:Dynamic):Dynamic;
	static public var version : Dynamic;
}