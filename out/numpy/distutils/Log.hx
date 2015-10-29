/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.log") extern class Log {
	static public var DEBUG : Dynamic;
	static public var ERROR : Dynamic;
	static public var FATAL : Dynamic;
	static public var INFO : Dynamic;
	static public var WARN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _fix_args(args:Dynamic, ?flag:Dynamic):Dynamic;
	static public var _global_color_map : Dynamic;
	static public var _global_log : Dynamic;
	static public var absolute_import : Dynamic;
	static public function cyan_text(s:Dynamic):Dynamic;
	static public function debug(msg:Dynamic, args:Dynamic):Dynamic;
	static public function default_text(s:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function error(msg:Dynamic, args:Dynamic):Dynamic;
	static public function fatal(msg:Dynamic, args:Dynamic):Dynamic;
	/**
		If we log WARN messages, log this message as a 'nice' anti-warn
		message.
	**/
	static public function good(msg:Dynamic, args:Dynamic):Dynamic;
	static public function green_text(s:Dynamic):Dynamic;
	static public function info(msg:Dynamic, args:Dynamic):Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	static public function log(level:Dynamic, msg:Dynamic, args:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function red_text(s:Dynamic):Dynamic;
	static public function set_threshold(level:Dynamic, ?force:Dynamic):Dynamic;
	static public function set_verbosity(v:Dynamic, ?force:Dynamic):Dynamic;
	static public function warn(msg:Dynamic, args:Dynamic):Dynamic;
}