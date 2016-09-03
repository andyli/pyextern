/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys", "StateSpace") extern class StateSpace {
	/**
		State matrix of the `StateSpace` system.
	**/
	public var A : Dynamic;
	/**
		Input matrix of the `StateSpace` system.
	**/
	public var B : Dynamic;
	/**
		Output matrix of the `StateSpace` system.
	**/
	public var C : Dynamic;
	/**
		Feedthrough matrix of the `StateSpace` system.
	**/
	public var D : Dynamic;
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
		Initialize the state space lti/dlti system.
	**/
	@:native("__init__")
	public function ___init__(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize the state space lti/dlti system.
	**/
	public function new(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Create new StateSpace object and settle inheritance.
	**/
	static public function __new__(cls:Dynamic, ?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return representation of the `StateSpace` system.
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
	/**
		Convert to `StateSpace` system, without copying.
		
		Returns
		-------
		sys: StateSpace
		    The `StateSpace` system. If the class is already an instance of
		    `StateSpace` then this instance is returned.
	**/
	public function _as_ss():Dynamic;
	/**
		Convert to `TransferFunction` system, without copying.
		
		Returns
		-------
		sys: ZerosPolesGain
		    The `TransferFunction` system. If the class is already an instance of
		    `TransferFunction` then this instance is returned.
	**/
	public function _as_tf():Dynamic;
	/**
		Convert to `ZerosPolesGain` system, without copying.
		
		Returns
		-------
		sys: ZerosPolesGain
		    The `ZerosPolesGain` system. If the class is already an instance of
		    `ZerosPolesGain` then this instance is returned.
	**/
	public function _as_zpk():Dynamic;
	/**
		Copy the parameters of another `StateSpace` system.
		
		Parameters
		----------
		system : instance of `StateSpace`
		    The state-space system that is to be copied
	**/
	public function _copy(system:Dynamic):Dynamic;
	public var _dt_dict : Dynamic;
	/**
		Denominator of the `TransferFunction` system.
	**/
	public var den : Dynamic;
	/**
		Return the sampling time of the system, `None` for `lti` systems.
	**/
	public var dt : Dynamic;
	/**
		Gain of the `ZerosPolesGain` system.
	**/
	public var gain : Dynamic;
	/**
		Numerator of the `TransferFunction` system.
	**/
	public var num : Dynamic;
	/**
		Poles of the system.
	**/
	public var poles : Dynamic;
	/**
		Return a copy of the current `StateSpace` system.
		
		Returns
		-------
		sys : instance of `StateSpace`
		    The current system (copy)
	**/
	public function to_ss():Dynamic;
	/**
		Convert system representation to `TransferFunction`.
		
		Parameters
		----------
		kwargs : dict, optional
		    Additional keywords passed to `ss2zpk`
		
		Returns
		-------
		sys : instance of `TransferFunction`
		    Transfer function of the current system
	**/
	public function to_tf(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert system representation to `ZerosPolesGain`.
		
		Parameters
		----------
		kwargs : dict, optional
		    Additional keywords passed to `ss2zpk`
		
		Returns
		-------
		sys : instance of `ZerosPolesGain`
		    Zeros, poles, gain representation of the current system
	**/
	public function to_zpk(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Zeros of the system.
	**/
	public var zeros : Dynamic;
}