/* This file is generated, do not edit! */
package matplotlib._path;
@:pythonImport("matplotlib._path") extern class _Path_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		affine_transform(vertices, transform)
	**/
	static public function affine_transform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cleanup_path(path, trans, remove_nans, clip, snap, simplify, curves, sketch_params)
	**/
	static public function cleanup_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clip_path_to_rect(path, bbox, inside)
	**/
	static public function clip_path_to_rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert_path_to_polygons(path, trans, width, height)
	**/
	static public function convert_path_to_polygons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert_to_svg(path, trans, clip, simplify, precision)
	**/
	static public function convert_to_svg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		count_bboxes_overlapping_bbox(bbox, bboxes)
	**/
	static public function count_bboxes_overlapping_bbox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path_collection_extents(trans, paths, transforms, offsets, offsetTrans)
	**/
	static public function get_path_collection_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path_extents(path, trans)
	**/
	static public function get_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		path_in_path(a, atrans, b, btrans)
	**/
	static public function path_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		path_intersects_path(p1, p2)
	**/
	static public function path_intersects_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_in_path(x, y, path, trans)
	**/
	static public function point_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_in_path_collection(x, y, r, trans, paths, transforms, offsets, offsetTrans, filled)
	**/
	static public function point_in_path_collection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_on_path(x, y, r, path, trans)
	**/
	static public function point_on_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		points_in_path(points, path, trans)
	**/
	static public function points_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update_path_extents(path, trans, bbox, minpos)
	**/
	static public function update_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
}