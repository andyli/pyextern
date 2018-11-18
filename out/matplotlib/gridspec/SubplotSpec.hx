/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:pythonImport("matplotlib.gridspec", "SubplotSpec") extern class SubplotSpec {
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		The subplot will occupy the num1-th cell of the given
		gridspec.  If num2 is provided, the subplot will span between
		num1-th cell and num2-th cell.
		
		The index starts from 0.
	**/
	@:native("__init__")
	public function ___init__(gridspec:Dynamic, num1:Dynamic, ?num2:Dynamic):Dynamic;
	/**
		The subplot will occupy the num1-th cell of the given
		gridspec.  If num2 is provided, the subplot will span between
		num1-th cell and num2-th cell.
		
		The index starts from 0.
	**/
	public function new(gridspec:Dynamic, num1:Dynamic, ?num2:Dynamic):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
		Get the subplot geometry (``n_rows, n_cols, start, stop``).
		
		start and stop are the index of the start and stop of the
		subplot.
	**/
	public function get_geometry():Dynamic;
	public function get_gridspec():Dynamic;
	/**
		Update the subplot position from ``figure.subplotpars``.
		        
	**/
	public function get_position(figure:Dynamic, ?return_all:Dynamic):Dynamic;
	/**
		Get the subplot row and column numbers:
		(``n_rows, n_cols, row_start, row_stop, col_start, col_stop``)
	**/
	public function get_rows_columns():Dynamic;
	/**
		get the topmost SubplotSpec instance associated with the subplot
	**/
	public function get_topmost_subplotspec():Dynamic;
	/**
		Return a `.GridSpecFromSubplotSpec` that has this subplotspec as
		a parent.
		
		Parameters
		----------
		nrows : int
		    Number of rows in grid.
		
		ncols : int
		    Number or columns in grid.
		
		Returns
		-------
		gridspec : `.GridSpec`
		
		Other Parameters
		----------------
		**kwargs
		    All other parameters are passed to `.GridSpec`.
		
		See Also
		--------
		matplotlib.pyplot.subplots
		
		Examples
		--------
		Adding three subplots in the space occupied by a single subplot::
		
		    fig = plt.figure()
		    gs0 = fig.add_gridspec(3, 1)
		    ax1 = fig.add_subplot(gs0[0])
		    ax2 = fig.add_subplot(gs0[1])
		    gssub = gs0[2].subgridspec(1, 3)
		    for i in range(3):
		        fig.add_subplot(gssub[0, i])
	**/
	public function subgridspec(nrows:Dynamic, ncols:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}