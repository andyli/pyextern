/* This file is generated, do not edit! */
package scipy.signal.dltisys;
@:pythonImport("scipy.signal.dltisys") extern class Dltisys_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a discrete state-space system from a 3, 4, or 5-tuple input
	**/
	static public function _system_to_statespace(system:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Impulse response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      * 3: (num, den, dt)
		      * 4: (zeros, poles, gain, dt)
		      * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : ndarray
		    Impulse response of system.  Each element of the tuple represents
		    the output of the system based on an impulse in each input.
		
		See Also
		--------
		impulse, dstep, dlsim, cont2discrete
	**/
	static public function dimpulse(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Simulate output of a discrete-time linear system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      - 3: (num, den, dt)
		      - 4: (zeros, poles, gain, dt)
		      - 5: (A, B, C, D, dt)
		
		u : array_like
		    An input array describing the input at each time `t` (interpolation is
		    assumed between given times).  If there are multiple inputs, then each
		    column of the rank-2 array represents an input.
		t : array_like, optional
		    The time steps at which the input is defined.  If `t` is given, it
		    must be the same length as `u`, and the final value in `t` determines
		    the number of steps returned in the output.
		x0 : array_like, optional
		    The initial conditions on the state vector (zero by default).
		
		Returns
		-------
		tout : ndarray
		    Time values for the output, as a 1-D array.
		yout : ndarray
		    System response, as a 1-D array.
		xout : ndarray, optional
		    Time-evolution of the state-vector.  Only generated if the input is a
		    state-space systems.
		
		See Also
		--------
		lsim, dstep, dimpulse, cont2discrete
		
		Examples
		--------
		A simple integrator transfer function with a discrete time step of 1.0
		could be implemented as:
		
		>>> from scipy import signal
		>>> tf = ([1.0,], [1.0, -1.0], 1.0)
		>>> t_in = [0.0, 1.0, 2.0, 3.0]
		>>> u = np.asarray([0.0, 0.0, 1.0, 1.0])
		>>> t_out, y = signal.dlsim(tf, u, t=t_in)
		>>> y
		array([ 0.,  0.,  0.,  1.])
	**/
	static public function dlsim(system:Dynamic, u:Dynamic, ?t:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Step response of discrete-time system.
		
		Parameters
		----------
		system : tuple of array_like
		    A tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		      * 3: (num, den, dt)
		      * 4: (zeros, poles, gain, dt)
		      * 5: (A, B, C, D, dt)
		
		x0 : array_like, optional
		    Initial state-vector.  Defaults to zero.
		t : array_like, optional
		    Time points.  Computed if not given.
		n : int, optional
		    The number of time points to compute (if `t` is not given).
		
		Returns
		-------
		tout : ndarray
		    Output time points, as a 1-D array.
		yout : ndarray
		    Step response of system.  Each element of the tuple represents
		    the output of the system based on a step response to each input.
		
		See Also
		--------
		step, dimpulse, dlsim, cont2discrete
	**/
	static public function dstep(system:Dynamic, ?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Transfer function to state-space representation.
		
		Parameters
		----------
		num, den : array_like
		    Sequences representing the numerator and denominator polynomials.
		    The denominator needs to be at least as long as the numerator.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function tf2ss(num:Dynamic, den:Dynamic):Dynamic;
	/**
		Zero-pole-gain representation to state-space representation
		
		Parameters
		----------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function zpk2ss(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
}