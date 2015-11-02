/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys", "TransferFunction") extern class TransferFunction {
	/**
		A matrix of the `StateSpace` system.
	**/
	public var A : Dynamic;
	/**
		B matrix of the `StateSpace` system.
	**/
	public var B : Dynamic;
	/**
		C matrix of the `StateSpace` system.
	**/
	public var C : Dynamic;
	/**
		D matrix of the `StateSpace` system.
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
		Initialize the state space LTI system.
	**/
	@:native("__init__")
	public function ___init__(?system:python.VarArgs<Dynamic>):Dynamic;
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
		Handle object conversion if input is an instance of lti.
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
		Return representation of the system's transfer function
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
		Copy the parameters of another `TransferFunction` object
		
		Parameters
		----------
		system : `TransferFunction`
		    The `StateSpace` system that is to be copied
	**/
	public function _copy(system:Dynamic):Dynamic;
	/**
		Calculate Bode magnitude and phase data of a continuous-time system.
		
		Returns a 3-tuple containing arrays of frequencies [rad/s], magnitude
		[dB] and phase [deg]. See `scipy.signal.bode` for details.
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> s1 = signal.lti([1], [1, 1])
		>>> w, mag, phase = s1.bode()
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	public function bode(?w:Dynamic, ?n:Dynamic):Dynamic;
	public var den : Dynamic;
	/**
		Calculate the frequency response of a continuous-time system.
		
		Returns a 2-tuple containing arrays of frequencies [rad/s] and
		complex magnitude.
		See `scipy.signal.freqresp` for details.
	**/
	public function freqresp(?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Gain of the `ZerosPolesGain` system.
	**/
	public var gain : Dynamic;
	/**
		Return the impulse response of a continuous-time system.
		See `scipy.signal.impulse` for details.
	**/
	public function impulse(?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	public var num : Dynamic;
	/**
		Return the response of a continuous-time system to input `U`.
		See `scipy.signal.lsim` for details.
	**/
	public function output(U:Dynamic, T:Dynamic, ?X0:Dynamic):Dynamic;
	/**
		Poles of the `ZerosPolesGain` system.
	**/
	public var poles : Dynamic;
	/**
		Return the step response of a continuous-time system.
		See `scipy.signal.step` for details.
	**/
	public function step(?X0:Dynamic, ?T:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Convert system representation to `StateSpace`.
		
		Returns
		-------
		sys : instance of `StateSpace`
		    State space model of the current system
	**/
	public function to_ss():Dynamic;
	/**
		Return a copy of the current `TransferFunction` system.
		
		Returns
		-------
		sys : instance of `TransferFunction`
		    The current system (copy)
	**/
	public function to_tf():Dynamic;
	/**
		Convert system representation to `ZerosPolesGain`.
		
		Returns
		-------
		sys : instance of `ZerosPolesGain`
		    Zeros, poles, gain representation of the current system
	**/
	public function to_zpk():Dynamic;
	/**
		Zeros of the `ZerosPolesGain` system.
	**/
	public var zeros : Dynamic;
}