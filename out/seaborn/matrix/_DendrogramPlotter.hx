/* This file is generated, do not edit! */
package seaborn.matrix;
@:pythonImport("seaborn.matrix", "_DendrogramPlotter") extern class _DendrogramPlotter {
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
		Plot a dendrogram of the relationships between the columns of data
		
		Parameters
		----------
		data : pandas.DataFrame
		    Rectangular data
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, linkage:Dynamic, metric:Dynamic, method:Dynamic, axis:Dynamic, label:Dynamic, rotate:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _calculate_linkage_fastcluster():Dynamic;
	public function _calculate_linkage_scipy():Dynamic;
	/**
		Calculates a dendrogram based on the linkage matrix
		
		Made a separate function, not a property because don't want to
		recalculate the dendrogram every time it is accessed.
		
		Returns
		-------
		dendrogram : dict
		    Dendrogram dictionary as returned by scipy.cluster.hierarchy
		    .dendrogram. The important key-value pairing is
		    "reordered_ind" which indicates the re-ordering of the matrix
	**/
	public function calculate_dendrogram():Dynamic;
	public var calculated_linkage : Dynamic;
	/**
		Plots a dendrogram of the similarities between data on the axes
		
		Parameters
		----------
		ax : matplotlib.axes.Axes
		    Axes object upon which the dendrogram is plotted
	**/
	public function plot(ax:Dynamic):Dynamic;
	/**
		Indices of the matrix, reordered by the dendrogram
	**/
	public var reordered_ind : Dynamic;
}