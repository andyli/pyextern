/* This file is generated, do not edit! */
package torch.cuda.nvtx;
@:pythonImport("torch.cuda.nvtx") extern class Nvtx_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _libnvToolsExt():Dynamic;
	static public var lib : Dynamic;
	/**
		Describe an instantaneous event that occurred at some point.
		
		Arguments:
		    msg (string): ASCII message to associate with the event.
	**/
	static public function mark(msg:Dynamic):Dynamic;
	/**
		Pops a range off of a stack of nested range spans.  Returns the
		zero-based depth of the range that is ended.
	**/
	static public function range_pop():Dynamic;
	/**
		Pushes a range onto a stack of nested range span.  Returns zero-based
		depth of the range that is started.
		
		Arguments:
		    msg (string): ASCII message to associate with range
	**/
	static public function range_push(msg:Dynamic):Dynamic;
	static public function windows_nvToolsExt_lib():Dynamic;
	static public function windows_nvToolsExt_path():Dynamic;
}