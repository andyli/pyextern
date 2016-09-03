/* This file is generated, do not edit! */
package scipy.special._spherical_bessel;
@:pythonImport("scipy.special._spherical_bessel") extern class _Spherical_bessel_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_spherical_in(x1, x2[, out])
		
		Internal function, use `spherical_in` instead.
	**/
	static public function _spherical_in(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_in_d(x1, x2[, out])
		
		Internal function, use `spherical_in` instead.
	**/
	static public function _spherical_in_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_jn(x1, x2[, out])
		
		Internal function, use `spherical_jn` instead.
	**/
	static public function _spherical_jn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_jn_d(x1, x2[, out])
		
		Internal function, use `spherical_jn` instead.
	**/
	static public function _spherical_jn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_kn(x1, x2[, out])
		
		Internal function, use `spherical_kn` instead.
	**/
	static public function _spherical_kn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_kn_d(x1, x2[, out])
		
		Internal function, use `spherical_kn` instead.
	**/
	static public function _spherical_kn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_yn(x1, x2[, out])
		
		Internal function, use `spherical_yn` instead.
	**/
	static public function _spherical_yn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_spherical_yn_d(x1, x2[, out])
		
		Internal function, use `spherical_yn` instead.
	**/
	static public function _spherical_yn_d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Modified spherical Bessel function of the first kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: i_n(z) = \sqrt{\frac{\pi}{2z}} I_{n + 1/2}(z),
		
		where :math:`I_n` is the modified Bessel function of the first kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		in : ndarray
		
		Notes
		-----
		The function is computed using its definitional relation to the
		modified cylindrical Bessel function of the first kind.
		
		The derivative is computed using the relations [2]_,
		
		.. math::
		    i_n' = i_{n-1} - \frac{n + 1}{2} i_n.
		
		    i_1' = i_0
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E7
		.. [2] http://dlmf.nist.gov/10.51.E5
	**/
	static public function spherical_in(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Spherical Bessel function of the first kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: j_n(z) = \sqrt{\frac{\pi}{2z}} J_{n + 1/2}(z),
		
		where :math:`J_n` is the Bessel function of the first kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		jn : ndarray
		
		Notes
		-----
		For real arguments greater than the order, the function is computed
		using the ascending recurrence [2]_.  For small real or complex
		arguments, the definitional relation to the cylindrical Bessel function
		of the first kind is used.
		
		The derivative is computed using the relations [3]_,
		
		.. math::
		    j_n' = j_{n-1} - \frac{n + 1}{2} j_n.
		
		    j_0' = -j_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E3
		.. [2] http://dlmf.nist.gov/10.51.E1
		.. [3] http://dlmf.nist.gov/10.51.E2
	**/
	static public function spherical_jn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Modified spherical Bessel function of the second kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: k_n(z) = \sqrt{\frac{\pi}{2z}} K_{n + 1/2}(z),
		
		where :math:`K_n` is the modified Bessel function of the second kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		kn : ndarray
		
		Notes
		-----
		The function is computed using its definitional relation to the
		modified cylindrical Bessel function of the second kind.
		
		The derivative is computed using the relations [2]_,
		
		.. math::
		    k_n' = -k_{n-1} - \frac{n + 1}{2} k_n.
		
		    k_0' = -k_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E9
		.. [2] http://dlmf.nist.gov/10.51.E5
	**/
	static public function spherical_kn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
	/**
		Spherical Bessel function of the second kind or its derivative.
		
		Defined as [1]_,
		
		.. math:: y_n(z) = \sqrt{\frac{\pi}{2z}} Y_{n + 1/2}(z),
		
		where :math:`Y_n` is the Bessel function of the second kind.
		
		Parameters
		----------
		n : int, array_like
		    Order of the Bessel function (n >= 0).
		z : complex or float, array_like
		    Argument of the Bessel function.
		derivative : bool, optional
		    If True, the value of the derivative (rather than the function
		    itself) is returned.
		
		Returns
		-------
		yn : ndarray
		
		Notes
		-----
		For real arguments, the function is computed using the ascending
		recurrence [2]_.  For complex arguments, the definitional relation to
		the cylindrical Bessel function of the second kind is used.
		
		The derivative is computed using the relations [3]_,
		
		.. math::
		    y_n' = y_{n-1} - \frac{n + 1}{2} y_n.
		
		    y_0' = -y_1
		
		
		.. versionadded:: 0.18.0
		
		References
		----------
		.. [1] http://dlmf.nist.gov/10.47.E4
		.. [2] http://dlmf.nist.gov/10.51.E1
		.. [3] http://dlmf.nist.gov/10.51.E2
	**/
	static public function spherical_yn(n:Dynamic, z:Dynamic, ?derivative:Dynamic):Dynamic;
}