/* This file is generated, do not edit! */
package matplotlib.offsetbox;
@:pythonImport("matplotlib.offsetbox") extern class Offsetbox_Module {
	static public var DEBUG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Align boxes each specified by their ``(height, descent)`` pair.
		
		For simplicity of the description, the terminology used here assumes a
		horizontal layout (i.e., vertical alignment), but the function works
		equally for a vertical layout.
		
		Parameters
		----------
		hd_list
		    List of (height, xdescent) of boxes to be aligned.
		height : float or None
		    Intended total height. If None, the maximum of the heights in *hd_list*
		    is used.
		align : {'baseline', 'left', 'top', 'right', 'bottom', 'center'}
		    The alignment anchor of the boxes.
		
		Returns
		-------
		height
		    The total height of the packing (if a value was originally passed in,
		    it is returned without checking that it is actually large enough).
		descent
		    The descent of the packing.
		offsets
		    The bottom offsets of the boxes.
	**/
	static public function _get_aligned_offsets(hd_list:Dynamic, height:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Return the (x, y) position of the *bbox* anchored at the *parentbbox* with
		the *loc* code with the *borderpad*.
	**/
	static public function _get_anchored_bbox(loc:Dynamic, bbox:Dynamic, parentbbox:Dynamic, borderpad:Dynamic):Dynamic;
	/**
		Pack boxes specified by their ``(width, xdescent)`` pair.
		
		For simplicity of the description, the terminology used here assumes a
		horizontal layout, but the function works equally for a vertical layout.
		
		*xdescent* is analogous to the usual descent, but along the x-direction; it
		is currently ignored.
		
		There are three packing *mode*\s:
		
		- 'fixed': The elements are packed tight to the left with a spacing of
		  *sep* in between. If *total* is *None* the returned total will be the
		  right edge of the last box. A non-*None* total will be passed unchecked
		  to the output. In particular this means that right edge of the last
		  box may be further to the right than the returned total.
		
		- 'expand': Distribute the boxes with equal spacing so that the left edge
		  of the first box is at 0, and the right edge of the last box is at
		  *total*. The parameter *sep* is ignored in this mode. A total of *None*
		  is accepted and considered equal to 1. The total is returned unchanged
		  (except for the conversion *None* to 1). If the total is smaller than
		  the sum of the widths, the laid out boxes will overlap.
		
		- 'equal': If *total* is given, the total space is divided in N equal
		  ranges and each box is left-aligned within its subspace.
		  Otherwise (*total* is *None*), *sep* must be provided and each box is
		  left-aligned in its subspace of width ``(max(widths) + sep)``. The
		  total width is then calculated to be ``N * (max(widths) + sep)``.
		
		Parameters
		----------
		wd_list : list of (float, float)
		    (width, xdescent) of boxes to be packed.
		total : float or None
		    Intended total length. *None* if not used.
		sep : float
		    Spacing between boxes.
		mode : {'fixed', 'expand', 'equal'}
		    The packing mode.
		
		Returns
		-------
		total : float
		    The total width needed to accommodate the laid out boxes.
		offsets : array of float
		    The left offsets of the boxes.
	**/
	static public function _get_packed_offsets(wd_list:Dynamic, total:Dynamic, sep:Dynamic, ?mode:Dynamic):Float;
	static public function bbox_artist(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A debug function to draw a rectangle around the bounding
		box returned by an artist's `.Artist.get_window_extent`
		to test whether the artist is returning the correct bbox.
		
		*props* is a dict of rectangle props with the additional property
		'pad' that sets the padding around the bbox in points.
	**/
	static public function mbbox_artist(artist:Dynamic, renderer:Dynamic, ?props:Dynamic, ?fill:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}