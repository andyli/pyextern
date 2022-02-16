/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.powerSGD_hook;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.powerSGD_hook", "PowerSGDState") extern class PowerSGDState {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	public function ___init__(process_group:Dynamic, ?matrix_approximation_rank:Dynamic, ?start_powerSGD_iter:Dynamic, ?min_compression_rate:Dynamic, ?use_error_feedback:Dynamic, ?warm_start:Dynamic, ?orthogonalization_epsilon:Dynamic, ?random_seed:Dynamic, ?compression_stats_logging_frequency:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(process_group:Dynamic, ?matrix_approximation_rank:Dynamic, ?start_powerSGD_iter:Dynamic, ?min_compression_rate:Dynamic, ?use_error_feedback:Dynamic, ?warm_start:Dynamic, ?orthogonalization_epsilon:Dynamic, ?random_seed:Dynamic, ?compression_stats_logging_frequency:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
		Returns the latest compression statistics as a tuple of the form (compress_rate, numel_before_compression, numel_after_compression), where:
		
		compress_rate is the effective compression rate i.e. (number of elements before compression) / (number of elements after compression);
		
		numel_before_compression is the total number of elements before compression was applied; and,
		
		numel_after_compression is the total number of elements after compression was applied.
	**/
	public function compression_stats():Dynamic;
	public var compression_stats_logging_frequency : Dynamic;
	public var error_dict : Dynamic;
	public var iter : Dynamic;
	public var matrix_approximation_rank : Dynamic;
	public function maybe_increase_iter(bucket:Dynamic):Dynamic;
	public var min_compression_rate : Dynamic;
	public var next_stats_report : Dynamic;
	public var orthogonalization_epsilon : Dynamic;
	public var p_memory_dict : Dynamic;
	public var process_group : Dynamic;
	public var q_memory_dict : Dynamic;
	public var rng : Dynamic;
	public var start_powerSGD_iter : Dynamic;
	public var total_numel_after_compression : Dynamic;
	public var total_numel_before_compression : Dynamic;
	public var use_error_feedback : Dynamic;
	public var warm_start : Dynamic;
}