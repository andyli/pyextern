/* This file is generated, do not edit! */
package numpy.distutils;
@:native("numpy.distutils.misc_util") extern class Misc_util {
	static public function all_strings(lst:Dynamic):Void;
	static public function allpath(name:Dynamic):Void;
	static public function appendpath(prefix:Dynamic, path:Dynamic):Void;
	static public function blue_text(s:Dynamic):Void;
	static public function cyan_text(s:Dynamic):Void;
	static public function cyg2win32(path:Dynamic):Void;
	static public function dict_append(args:haxe.extern.Rest<Dynamic>):Void;
	static public function dot_join(args:haxe.extern.Rest<Dynamic>):Void;
	static public function filter_sources(sources:Dynamic):Void;
	static public function generate_config_py(target:Dynamic):Void;
	static public function get_cmd(cmdname:Dynamic, ?_cache:Dynamic):Void;
	static public function get_dependencies(sources:Dynamic):Void;
	static public function get_ext_source_files(ext:Dynamic):Void;
	static public function get_numpy_include_dirs():Void;
	static public function get_script_files(scripts:Dynamic):Void;
	static public function green_text(s:Dynamic):Void;
	static public function has_cxx_sources(sources:Dynamic):Void;
	static public function has_f_sources(sources:Dynamic):Void;
	static public function is_local_src_dir(directory:Dynamic):Void;
	static public function red_text(s:Dynamic):Void;
	static public function terminal_has_colors():Void;
	static public function yellow_text(s:Dynamic):Void;
}