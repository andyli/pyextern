/* This file is generated, do not edit! */
package matplotlib.bezier;
@:pythonImport("matplotlib.bezier", "BezierSegment") extern class BezierSegment {
	/**
		Evaluate the Bezier curve at point(s) t in [0, 1].
		
		Parameters
		----------
		t : (k,) array-like
		    Points at which to evaluate the curve.
		
		Returns
		-------
		(k, d) array
		    Value of the curve for each point in *t*.
	**/
	public function __call__(t:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	public function ___init__(control_points:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(control_points:Dynamic):Void;
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
		Return the dimension and location of the curve's interior extrema.
		
		The extrema are the points along the curve where one of its partial
		derivatives is zero.
		
		Returns
		-------
		dims : array of int
		    Index :math:`i` of the partial derivative which is zero at each
		    interior extrema.
		dzeros : array of float
		    Of same size as dims. The :math:`t` such that :math:`d/dx_i B(t) =
		    0`
	**/
	public function axis_aligned_extrema():Dynamic;
	/**
		The control points of the curve.
	**/
	public var control_points : Dynamic;
	/**
		Degree of the polynomial. One less the number of control points.
	**/
	public var degree : Dynamic;
	/**
		The dimension of the curve.
	**/
	public var dimension : Dynamic;
	/**
		Evaluate the curve at a single point, returning a tuple of *d* floats.
	**/
	public function point_at_t(t:Dynamic):Dynamic;
	/**
		The polynomial coefficients of the Bezier curve.
		
		.. warning:: Follows opposite convention from `numpy.polyval`.
		
		Returns
		-------
		(n+1, d) array
		    Coefficients after expanding in polynomial basis, where :math:`n`
		    is the degree of the bezier curve and :math:`d` its dimension.
		    These are the numbers (:math:`C_j`) such that the curve can be
		    written :math:`\sum_{j=0}^n C_j t^j`.
		
		Notes
		-----
		The coefficients are calculated as
		
		.. math::
		
		    {n \choose j} \sum_{i=0}^j (-1)^{i+j} {j \choose i} P_i
		
		where :math:`P_i` are the control points of the curve.
	**/
	public var polynomial_coefficients : Dynamic;
}