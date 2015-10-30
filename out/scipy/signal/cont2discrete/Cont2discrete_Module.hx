/* This file is generated, do not edit! */
package scipy.signal.cont2discrete;
@:pythonImport("scipy.signal.cont2discrete") extern class Cont2discrete_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Transform a continuous to a discrete state-space system.
		
		Parameters
		----------
		sys : a tuple describing the system.
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		       * 2: (num, den)
		       * 3: (zeros, poles, gain)
		       * 4: (A, B, C, D)
		
		dt : float
		    The discretization time step.
		method : {"gbt", "bilinear", "euler", "backward_diff", "zoh"}, optional
		    Which method to use:
		
		       * gbt: generalized bilinear transformation
		       * bilinear: Tustin's approximation ("gbt" with alpha=0.5)
		       * euler: Euler (or forward differencing) method ("gbt" with alpha=0)
		       * backward_diff: Backwards differencing ("gbt" with alpha=1.0)
		       * zoh: zero-order hold (default)
		
		alpha : float within [0, 1], optional
		    The generalized bilinear transformation weighting parameter, which
		    should only be specified with method="gbt", and is ignored otherwise
		
		Returns
		-------
		sysd : tuple containing the discrete system
		    Based on the input type, the output will be of the form
		
		    * (num, den, dt)   for transfer function input
		    * (zeros, poles, gain, dt)   for zeros-poles-gain input
		    * (A, B, C, D, dt) for state-space system input
		
		Notes
		-----
		By default, the routine uses a Zero-Order Hold (zoh) method to perform
		the transformation.  Alternatively, a generalized bilinear transformation
		may be used, which includes the common Tustin's bilinear approximation,
		an Euler's method technique, or a backwards differencing technique.
		
		The Zero-Order Hold (zoh) method is based on [1]_, the generalized bilinear
		approximation is based on [2]_ and [3]_.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Discretization#Discretization_of_linear_state_space_models
		
		.. [2] http://techteach.no/publications/discretetime_signals_systems/discrete.pdf
		
		.. [3] G. Zhang, X. Chen, and T. Chen, Digital redesign via the generalized
		    bilinear transformation, Int. J. Control, vol. 82, no. 4, pp. 741-754,
		    2009.
		    (http://www.ece.ualberta.ca/~gfzhang/research/ZCC07_preprint.pdf)
	**/
	static public function cont2discrete(sys:Dynamic, dt:Dynamic, ?method:Dynamic, ?alpha:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		State-space to transfer function.
		
		Parameters
		----------
		A, B, C, D : ndarray
		    State-space representation of linear system.
		input : int, optional
		    For multiple-input systems, the input to use.
		
		Returns
		-------
		num : 2-D ndarray
		    Numerator(s) of the resulting transfer function(s).  `num` has one row
		    for each of the system's outputs. Each row is a sequence representation
		    of the numerator polynomial.
		den : 1-D ndarray
		    Denominator of the resulting transfer function(s).  `den` is a sequence
		    representation of the denominator polynomial.
	**/
	static public function ss2tf(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		State-space representation to zero-pole-gain representation.
		
		Parameters
		----------
		A, B, C, D : ndarray
		    State-space representation of linear system.
		input : int, optional
		    For multiple-input systems, the input to use.
		
		Returns
		-------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
	**/
	static public function ss2zpk(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
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