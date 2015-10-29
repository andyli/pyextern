/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.path") extern class Path {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _define_deprecated_functions(ns:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		.. deprecated:: 1.3
		    The cleanup_path function was deprecated in version 1.3. Use path.Path.cleaned instead.
		
		cleanup_path(path, trans, remove_nans, clip, snap, simplify, curves, sketch_params)
	**/
	static public function cleanup_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The clip_path_to_rect function was deprecated in version 1.3. Use path.Path.clip_to_bbox instead.
		
		clip_path_to_rect(path, bbox, inside)
	**/
	static public function clip_path_to_rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The convert_path_to_polygons function was deprecated in version 1.3. Use path.Path.to_polygons instead.
		
		convert_path_to_polygons(path, trans, width, height)
	**/
	static public function convert_path_to_polygons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Given a sequence of :class:`Path` objects,
		:class:`~matplotlib.transforms.Transform` objects and offsets, as
		found in a :class:`~matplotlib.collections.PathCollection`,
		returns the bounding box that encapsulates all of them.
		
		*master_transform* is a global transformation to apply to all paths
		
		*paths* is a sequence of :class:`Path` instances.
		
		*transforms* is a sequence of
		:class:`~matplotlib.transforms.Affine2D` instances.
		
		*offsets* is a sequence of (x, y) offsets (or an Nx2 array)
		
		*offset_transform* is a :class:`~matplotlib.transforms.Affine2D`
		to apply to the offsets before applying the offset to the path.
		
		The way that *paths*, *transforms* and *offsets* are combined
		follows the same method as for collections.  Each is iterated over
		independently, so if you have 3 paths, 2 transforms and 1 offset,
		their combinations are as follows:
		
		    (A, A, A), (B, B, A), (C, A, A)
	**/
	static public function get_path_collection_extents(master_transform:Dynamic, paths:Dynamic, transforms:Dynamic, offsets:Dynamic, offset_transform:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The get_path_extents function was deprecated in version 1.3. Use path.Path.get_extents instead.
		
		get_path_extents(path, trans)
	**/
	static public function get_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a sequence of :class:`Path` objects and optional
		:class:`~matplotlib.transforms.Transform` objects, returns the
		bounding box that encapsulates all of them.
		
		*paths* is a sequence of :class:`Path` instances.
		
		*transforms* is an optional sequence of
		:class:`~matplotlib.transforms.Affine2D` instances to apply to
		each path.
	**/
	static public function get_paths_extents(paths:Dynamic, ?transforms:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The path_in_path function was deprecated in version 1.3. Use path.Path.contains_path instead.
		
		path_in_path(a, atrans, b, btrans)
	**/
	static public function path_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The path_intersects_path function was deprecated in version 1.3. Use path.Path.intersects_path instead.
		
		path_intersects_path(p1, p2)
	**/
	static public function path_intersects_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The point_in_path function was deprecated in version 1.3. Use path.Path.contains_point instead.
		
		point_in_path(x, y, path, trans)
	**/
	static public function point_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The point_in_path_collection function was deprecated in version 1.3. Use collection.Collection.contains instead.
		
		point_in_path_collection(x, y, r, trans, paths, transforms, offsets, offsetTrans, filled)
	**/
	static public function point_in_path_collection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. deprecated:: 1.3
		    The points_in_path function was deprecated in version 1.3. Use path.Path.contains_points instead.
		
		points_in_path(points, path, trans)
	**/
	static public function points_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public function simple_linear_interpolation(a:Dynamic, steps:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}