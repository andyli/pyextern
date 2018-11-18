/* This file is generated, do not edit! */
package numpy.polynomial.polyutils;
@:pythonImport("numpy.polynomial.polyutils") extern class Polyutils_Module {
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
		Return argument as a list of 1-d arrays.
		
		The returned list contains array(s) of dtype double, complex double, or
		object.  A 1-d argument of shape ``(N,)`` is parsed into ``N`` arrays of
		size one; a 2-d argument of shape ``(M,N)`` is parsed into ``M`` arrays
		of size ``N`` (i.e., is "parsed by row"); and a higher dimensional array
		raises a Value Error if it is not first reshaped into either a 1-d or 2-d
		array.
		
		Parameters
		----------
		alist : array_like
		    A 1- or 2-d array_like
		trim : boolean, optional
		    When True, trailing zeros are removed from the inputs.
		    When False, the inputs are passed through intact.
		
		Returns
		-------
		[a1, a2,...] : list of 1-D arrays
		    A copy of the input data as a list of 1-d arrays.
		
		Raises
		------
		ValueError
		    Raised when `as_series` cannot convert its input to 1-d arrays, or at
		    least one of the resulting arrays is empty.
		
		Examples
		--------
		>>> from numpy.polynomial import polyutils as pu
		>>> a = np.arange(4)
		>>> pu.as_series(a)
		[array([ 0.]), array([ 1.]), array([ 2.]), array([ 3.])]
		>>> b = np.arange(6).reshape((2,3))
		>>> pu.as_series(b)
		[array([ 0.,  1.,  2.]), array([ 3.,  4.,  5.])]
		
		>>> pu.as_series((1, np.arange(3), np.arange(2, dtype=np.float16)))
		[array([ 1.]), array([ 0.,  1.,  2.]), array([ 0.,  1.])]
		
		>>> pu.as_series([2, [1.1, 0.]])
		[array([ 2.]), array([ 1.1])]
		
		>>> pu.as_series([2, [1.1, 0.]], trim=False)
		[array([ 2.]), array([ 1.1,  0. ])]
	**/
	static public function as_series(alist:Dynamic, ?trim:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return a domain suitable for given abscissae.
		
		Find a domain suitable for a polynomial or Chebyshev series
		defined at the values supplied.
		
		Parameters
		----------
		x : array_like
		    1-d array of abscissae whose domain will be determined.
		
		Returns
		-------
		domain : ndarray
		    1-d array containing two values.  If the inputs are complex, then
		    the two returned points are the lower left and upper right corners
		    of the smallest rectangle (aligned with the axes) in the complex
		    plane containing the points `x`. If the inputs are real, then the
		    two points are the ends of the smallest interval containing the
		    points `x`.
		
		See Also
		--------
		mapparms, mapdomain
		
		Examples
		--------
		>>> from numpy.polynomial import polyutils as pu
		>>> points = np.arange(4)**2 - 5; points
		array([-5, -4, -1,  4])
		>>> pu.getdomain(points)
		array([-5.,  4.])
		>>> c = np.exp(complex(0,1)*np.pi*np.arange(12)/6) # unit circle
		>>> pu.getdomain(c)
		array([-1.-1.j,  1.+1.j])
	**/
	static public function getdomain(x:Dynamic):numpy.Ndarray;
	/**
		Apply linear map to input points.
		
		The linear map ``offset + scale*x`` that maps the domain `old` to
		the domain `new` is applied to the points `x`.
		
		Parameters
		----------
		x : array_like
		    Points to be mapped. If `x` is a subtype of ndarray the subtype
		    will be preserved.
		old, new : array_like
		    The two domains that determine the map.  Each must (successfully)
		    convert to 1-d arrays containing precisely two values.
		
		Returns
		-------
		x_out : ndarray
		    Array of points of the same shape as `x`, after application of the
		    linear map between the two domains.
		
		See Also
		--------
		getdomain, mapparms
		
		Notes
		-----
		Effectively, this implements:
		
		.. math ::
		    x\_out = new[0] + m(x - old[0])
		
		where
		
		.. math ::
		    m = \frac{new[1]-new[0]}{old[1]-old[0]}
		
		Examples
		--------
		>>> from numpy.polynomial import polyutils as pu
		>>> old_domain = (-1,1)
		>>> new_domain = (0,2*np.pi)
		>>> x = np.linspace(-1,1,6); x
		array([-1. , -0.6, -0.2,  0.2,  0.6,  1. ])
		>>> x_out = pu.mapdomain(x, old_domain, new_domain); x_out
		array([ 0.        ,  1.25663706,  2.51327412,  3.76991118,  5.02654825,
		        6.28318531])
		>>> x - pu.mapdomain(x_out, new_domain, old_domain)
		array([ 0.,  0.,  0.,  0.,  0.,  0.])
		
		Also works for complex numbers (and thus can be used to map any line in
		the complex plane to any other line therein).
		
		>>> i = complex(0,1)
		>>> old = (-1 - i, 1 + i)
		>>> new = (-1 + i, 1 - i)
		>>> z = np.linspace(old[0], old[1], 6); z
		array([-1.0-1.j , -0.6-0.6j, -0.2-0.2j,  0.2+0.2j,  0.6+0.6j,  1.0+1.j ])
		>>> new_z = P.mapdomain(z, old, new); new_z
		array([-1.0+1.j , -0.6+0.6j, -0.2+0.2j,  0.2-0.2j,  0.6-0.6j,  1.0-1.j ])
	**/
	static public function mapdomain(x:Dynamic, old:Dynamic, _new:Dynamic):numpy.Ndarray;
	/**
		Linear map parameters between domains.
		
		Return the parameters of the linear map ``offset + scale*x`` that maps
		`old` to `new` such that ``old[i] -> new[i]``, ``i = 0, 1``.
		
		Parameters
		----------
		old, new : array_like
		    Domains. Each domain must (successfully) convert to a 1-d array
		    containing precisely two values.
		
		Returns
		-------
		offset, scale : scalars
		    The map ``L(x) = offset + scale*x`` maps the first domain to the
		    second.
		
		See Also
		--------
		getdomain, mapdomain
		
		Notes
		-----
		Also works for complex numbers, and thus can be used to calculate the
		parameters required to map any line in the complex plane to any other
		line therein.
		
		Examples
		--------
		>>> from numpy.polynomial import polyutils as pu
		>>> pu.mapparms((-1,1),(-1,1))
		(0.0, 1.0)
		>>> pu.mapparms((1,-1),(-1,1))
		(0.0, -1.0)
		>>> i = complex(0,1)
		>>> pu.mapparms((-i,-1),(1,i))
		((1+1j), (1+0j))
	**/
	static public function mapparms(old:Dynamic, _new:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Remove "small" "trailing" coefficients from a polynomial.
		
		"Small" means "small in absolute value" and is controlled by the
		parameter `tol`; "trailing" means highest order coefficient(s), e.g., in
		``[0, 1, 1, 0, 0]`` (which represents ``0 + x + x**2 + 0*x**3 + 0*x**4``)
		both the 3-rd and 4-th order coefficients would be "trimmed."
		
		Parameters
		----------
		c : array_like
		    1-d array of coefficients, ordered from lowest order to highest.
		tol : number, optional
		    Trailing (i.e., highest order) elements with absolute value less
		    than or equal to `tol` (default value is zero) are removed.
		
		Returns
		-------
		trimmed : ndarray
		    1-d array with trailing zeros removed.  If the resulting series
		    would be empty, a series containing a single zero is returned.
		
		Raises
		------
		ValueError
		    If `tol` < 0
		
		See Also
		--------
		trimseq
		
		Examples
		--------
		>>> from numpy.polynomial import polyutils as pu
		>>> pu.trimcoef((0,0,3,0,5,0,0))
		array([ 0.,  0.,  3.,  0.,  5.])
		>>> pu.trimcoef((0,0,1e-3,0,1e-5,0,0),1e-3) # item == tol is trimmed
		array([ 0.])
		>>> i = complex(0,1) # works for complex
		>>> pu.trimcoef((3e-4,1e-3*(1-i),5e-4,2e-5*(1+i)), 1e-3)
		array([ 0.0003+0.j   ,  0.0010-0.001j])
	**/
	static public function trimcoef(c:Dynamic, ?tol:Dynamic):numpy.Ndarray;
	/**
		Remove small Poly series coefficients.
		
		Parameters
		----------
		seq : sequence
		    Sequence of Poly series coefficients. This routine fails for
		    empty sequences.
		
		Returns
		-------
		series : sequence
		    Subsequence with trailing zeros removed. If the resulting sequence
		    would be empty, return the first element. The returned sequence may
		    or may not be a view.
		
		Notes
		-----
		Do not lose the type info if the sequence contains unknown objects.
	**/
	static public function trimseq(seq:Dynamic):Dynamic;
}