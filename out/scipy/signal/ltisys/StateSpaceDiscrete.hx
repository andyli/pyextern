/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys", "StateSpaceDiscrete") extern class StateSpaceDiscrete {
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
	/**
		Adds two systems in the sense of frequency domain addition.
	**/
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	static public var __array_ufunc__ : Dynamic;
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
		Initialize the state space lti/dlti system.
	**/
	@:native("__init__")
	public function ___init__(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize the state space lti/dlti system.
	**/
	public function new(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Post-multiply another system or a scalar
		
		Handles multiplication of systems in the sense of a frequency domain
		multiplication. That means, given two systems E1(s) and E2(s), their
		multiplication, H(s) = E1(s) * E2(s), means that applying H(s) to U(s)
		is equivalent to first applying E2(s), and then E1(s).
		
		Notes
		-----
		For SISO systems the order of system application does not matter.
		However, for MIMO systems, where the two systems are matrices, the
		order above ensures standard Matrix multiplication rules apply.
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Negate the system (equivalent to pre-multiplying by -1).
	**/
	public function __neg__():Dynamic;
	/**
		Create new StateSpace object and settle inheritance.
	**/
	static public function __new__(cls:Dynamic, ?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
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
		Pre-multiply a scalar or matrix (but not StateSpace)
	**/
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
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
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Divide by a scalar
	**/
	public function __truediv__(other:Dynamic):Dynamic;
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
	public function _check_binop_other(other:Dynamic):Dynamic;
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
		Calculate Bode magnitude and phase data of a discrete-time system.
		
		Returns a 3-tuple containing arrays of frequencies [rad/s], magnitude
		[dB] and phase [deg]. See `dbode` for details.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Transfer function: H(z) = 1 / (z^2 + 2z + 3) with sampling time 0.5s
		
		>>> sys = signal.TransferFunction([1], [1, 2, 3], dt=0.5)
		
		Equivalent: signal.dbode(sys)
		
		>>> w, mag, phase = sys.bode()
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	public function bode(?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the sampling time of the system.
	**/
	public var dt : Dynamic;
	/**
		Calculate the frequency response of a discrete-time system.
		
		Returns a 2-tuple containing arrays of frequencies [rad/s] and
		complex magnitude.
		See `dfreqresp` for details.
	**/
	public function freqresp(?w:Dynamic, ?n:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Return the impulse response of the discrete-time `dlti` system.
		See `dimpulse` for details.
	**/
	public function impulse(?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the response of the discrete-time system to input `u`.
		See `dlsim` for details.
	**/
	public function output(u:Dynamic, t:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Poles of the system.
	**/
	public var poles : Dynamic;
	/**
		Return the step response of the discrete-time `dlti` system.
		See `dstep` for details.
	**/
	public function step(?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
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