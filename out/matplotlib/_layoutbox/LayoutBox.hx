/* This file is generated, do not edit! */
package matplotlib._layoutbox;
@:pythonImport("matplotlib._layoutbox", "LayoutBox") extern class LayoutBox {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?parent:Dynamic, ?name:Dynamic, ?tightwidth:Dynamic, ?tightheight:Dynamic, ?artist:Dynamic, ?lower_left:Dynamic, ?upper_right:Dynamic, ?pos:Dynamic, ?subplot:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?parent:Dynamic, ?name:Dynamic, ?tightwidth:Dynamic, ?tightheight:Dynamic, ?artist:Dynamic, ?lower_left:Dynamic, ?upper_right:Dynamic, ?pos:Dynamic, ?subplot:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic):Void;
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
		Helper to check if this layoutbox is the layoutbox of a
		gridspec
	**/
	public function _is_gridspec_layoutbox():Dynamic;
	/**
		Helper to check if this layoutbox is the layoutbox of a
		subplotspec
	**/
	public function _is_subplotspec_layoutbox():Dynamic;
	public function add_child(child:Dynamic):Dynamic;
	public function add_constraints():Dynamic;
	public function constrain_bottom(bottom:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_bottom_margin(margin:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_geometry(left:Dynamic, bottom:Dynamic, right:Dynamic, top:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Constrain the height of the layout box.  height is
		either a float or a layoutbox.height.
	**/
	public function constrain_height(height:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_height_min(height:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_left(left:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_left_margin(margin:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Only do this for pos.  This sets a variable distance
		margin between the position of the axes and the outer edge of
		the axes.
		
		Margins are variable because they change with the figure size.
		
		Margin minimums are set to make room for axes decorations.  However,
		the margins can be larger if we are mathicng the position size to
		other axes.
	**/
	public function constrain_margins():Dynamic;
	public function constrain_right(right:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_right_margin(margin:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Make the layoutbox have same position as other layoutbox
	**/
	public function constrain_same(other:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_top(top:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_top_margin(margin:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Constrain the width of the layout box.  `width` is
		either a float or a layoutbox.width.
	**/
	public function constrain_width(width:Dynamic, ?strength:Dynamic):Dynamic;
	public function constrain_width_min(width:Dynamic, ?strength:Dynamic):Dynamic;
	public function edit_bottom_margin_min(margin:Dynamic):Dynamic;
	/**
		Set the height of the layout box.
		
		This is done as an editable variable so that the value can change
		due to resizing.
	**/
	public function edit_height(height:Dynamic, ?strength:Dynamic):Dynamic;
	public function edit_left_margin_min(margin:Dynamic):Dynamic;
	public function edit_right_margin_min(margin:Dynamic):Dynamic;
	public function edit_top_margin_min(margin:Dynamic):Dynamic;
	public function edit_width(width:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Find children of this layout box that are subplots.  We want to line
		poss up, and this is an easy way to find them all.
	**/
	public function find_child_subplots():Dynamic;
	public function get_rect():Dynamic;
	public function hard_constraints():Dynamic;
	/**
		Make a layout box from a subplotspec. The layout box is
		constrained to be a fraction of the width/height of the parent,
		and be a fraction of the parent width/height from the left/bottom
		of the parent.  Therefore the parent can move around and the
		layout for the subplot spec should move with it.
		
		The parent is *usually* the gridspec that made the subplotspec.??
	**/
	public function layout_from_subplotspec(subspec:Dynamic, ?name:Dynamic, ?artist:Dynamic, ?pos:Dynamic):Dynamic;
	public function parent_constrain():Dynamic;
	public function remove_child(child:Dynamic):Dynamic;
	/**
		replace the parent of this with the new parent
		        
	**/
	public function set_parent(parent:Dynamic):Dynamic;
	public function soft_constraints():Dynamic;
	/**
		Update *all* the variables that are part of the solver this LayoutBox
		is created with
	**/
	public function update_variables():Dynamic;
}