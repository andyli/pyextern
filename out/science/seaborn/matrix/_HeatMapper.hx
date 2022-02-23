/* This file is generated, do not edit! */
package seaborn.matrix;
@:pythonImport("seaborn.matrix", "_HeatMapper") extern class _HeatMapper {
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
		Initialize the plotting object.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, vmin:Dynamic, vmax:Dynamic, cmap:Dynamic, center:Dynamic, robust:Dynamic, annot:Dynamic, fmt:Dynamic, annot_kws:Dynamic, cbar:Dynamic, cbar_kws:Dynamic, ?xticklabels:Dynamic, ?yticklabels:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Initialize the plotting object.
	**/
	public function new(data:Dynamic, vmin:Dynamic, vmax:Dynamic, cmap:Dynamic, center:Dynamic, robust:Dynamic, annot:Dynamic, fmt:Dynamic, annot_kws:Dynamic, cbar:Dynamic, cbar_kws:Dynamic, ?xticklabels:Dynamic, ?yticklabels:Dynamic, ?mask:Dynamic):Void;
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
		Add textual labels with the value in each cell.
	**/
	public function _annotate_heatmap(ax:Dynamic, mesh:Dynamic):Dynamic;
	/**
		Determine ticks and ticklabels that minimize overlap.
	**/
	public function _auto_ticks(ax:Dynamic, labels:Dynamic, axis:Dynamic):Dynamic;
	/**
		Use some heuristics to set good defaults for colorbar and range.
	**/
	public function _determine_cmap_params(plot_data:Dynamic, vmin:Dynamic, vmax:Dynamic, cmap:Dynamic, center:Dynamic, robust:Dynamic):Dynamic;
	/**
		Return ticks and labels at evenly spaced intervals.
	**/
	public function _skip_ticks(labels:Dynamic, tickevery:Dynamic):Dynamic;
	/**
		Draw the heatmap on the provided Axes.
	**/
	public function plot(ax:Dynamic, cax:Dynamic, kws:Dynamic):Dynamic;
}