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
		affine_transform(points, trans)
	**/
	static public function affine_transform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cleanup_path(path, trans, remove_nans, clip_rect, snap_mode, stroke_width, simplify, return_curves, sketch)
	**/
	static public function cleanup_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clip_path_to_rect(path, rect, inside)
	**/
	static public function clip_path_to_rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert_path_to_polygons(path, trans, width=0, height=0)
	**/
	static public function convert_path_to_polygons(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert_to_string(path, trans, clip_rect, simplify, sketch, precision, codes, postfix)
	**/
	static public function convert_to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		count_bboxes_overlapping_bbox(bbox, bboxes)
	**/
	static public function count_bboxes_overlapping_bbox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path_collection_extents(
	**/
	static public function get_path_collection_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_path_extents(path, trans)
	**/
	static public function get_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		path_in_path(path_a, trans_a, path_b, trans_b)
	**/
	static public function path_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		path_intersects_path(path1, path2, filled=False)
	**/
	static public function path_intersects_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_in_path(x, y, radius, path, trans)
	**/
	static public function point_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_in_path_collection(x, y, radius, master_transform, paths, transforms, offsets, offset_trans, filled, offset_position)
	**/
	static public function point_in_path_collection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		point_on_path(x, y, radius, path, trans)
	**/
	static public function point_on_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		points_in_path(points, radius, path, trans)
	**/
	static public function points_in_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		points_on_path(points, radius, path, trans)
	**/
	static public function points_on_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		update_path_extents(path, trans, rect, minpos, ignore)
	**/
	static public function update_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
}