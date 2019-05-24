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
		Given a list of (height, descent) of each boxes, align the boxes
		with *align* and calculate the y-offsets of each boxes.
		total width and the offset positions of each items according to
		*mode*. xdescent is analogous to the usual descent, but along the
		x-direction. xdescent values are currently ignored.
		
		*hd_list* : list of (width, xdescent) of boxes to be aligned.
		*sep* : spacing between boxes
		*height* : Intended total length. None if not used.
		*align* : align mode. 'baseline', 'top', 'bottom', or 'center'.
	**/
	static public function _get_aligned_offsets(hd_list:Dynamic, height:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Given a list of (width, xdescent) of each boxes, calculate the
		total width and the x-offset positions of each items according to
		*mode*. xdescent is analogous to the usual descent, but along the
		x-direction. xdescent values are currently ignored.
		
		*wd_list* : list of (width, xdescent) of boxes to be packed.
		*sep* : spacing between boxes
		*total* : Intended total length. None if not used.
		*mode* : packing mode. 'fixed', 'expand', or 'equal'.
	**/
	static public function _get_packed_offsets(wd_list:Dynamic, total:Dynamic, sep:Dynamic, ?mode:Dynamic):Dynamic;
	static public function bbox_artist(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This is a debug function to draw a rectangle around the bounding
		box returned by
		:meth:`~matplotlib.artist.Artist.get_window_extent` of an artist,
		to test whether the artist is returning the correct bbox.
		
		*props* is a dict of rectangle props with the additional property
		'pad' that sets the padding around the bbox in points.
	**/
	static public function mbbox_artist(artist:Dynamic, renderer:Dynamic, ?props:Dynamic, ?fill:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}