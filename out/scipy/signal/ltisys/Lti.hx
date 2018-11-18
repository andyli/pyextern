/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys", "lti") extern class Lti {
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
		Initialize the `lti` baseclass.
		
		The heavy lifting is done by the subclasses.
	**/
	@:native("__init__")
	public function ___init__(?system:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initialize the `lti` baseclass.
		
		The heavy lifting is done by the subclasses.
	**/
	public function new(?system:python.VarArgs<Dynamic>):Void;
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
		Create an instance of the appropriate subclass.
	**/
	static public function __new__(cls:Dynamic, ?system:python.VarArgs<Dynamic>):Dynamic;
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
	public var _dt_dict : Dynamic;
	/**
		Calculate Bode magnitude and phase data of a continuous-time system.
		
		Returns a 3-tuple containing arrays of frequencies [rad/s], magnitude
		[dB] and phase [deg]. See `bode` for details.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> sys = signal.TransferFunction([1], [1, 1])
		>>> w, mag, phase = sys.bode()
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	public function bode(?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the sampling time of the system, `None` for `lti` systems.
	**/
	public var dt : Dynamic;
	/**
		Calculate the frequency response of a continuous-time system.
		
		Returns a 2-tuple containing arrays of frequencies [rad/s] and
		complex magnitude.
		See `freqresp` for details.
	**/
	public function freqresp(?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the impulse response of a continuous-time system.
		See `impulse` for details.
	**/
	public function impulse(?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Return the response of a continuous-time system to input `U`.
		See `lsim` for details.
	**/
	public function output(U:Dynamic, T:Dynamic, ?X0:Dynamic):Dynamic;
	/**
		Poles of the system.
	**/
	public var poles : Dynamic;
	/**
		Return the step response of a continuous-time system.
		See `step` for details.
	**/
	public function step(?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Return a discretized version of the current system.
		
		Parameters: See `cont2discrete` for details.
		
		Returns
		-------
		sys: instance of `dlti`
	**/
	public function to_discrete(dt:Dynamic, ?method:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Zeros of the system.
	**/
	public var zeros : Dynamic;
}