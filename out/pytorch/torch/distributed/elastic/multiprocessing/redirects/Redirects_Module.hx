/* This file is generated, do not edit! */
package torch.distributed.elastic.multiprocessing.redirects;
@:pythonImport("torch.distributed.elastic.multiprocessing.redirects") extern class Redirects_Module {
	static public var IS_MACOS : Dynamic;
	static public var IS_WINDOWS : Dynamic;
	static public var _VALID_STD : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _c_std(stream:Dynamic):Dynamic;
	static public function _python_std(stream:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public function get_libc():Dynamic;
	static public var libc : Dynamic;
	static public var logger : Dynamic;
	/**
		Redirects ``std`` (one of ``"stdout"`` or ``"stderr"``) to a file
		in the path specified by ``to_file``. This method redirects the
		underlying std file descriptor (not just pyton's ``sys.stdout|stderr``).
		See usage for details.
		
		Directory of ``dst_filename`` is assumed to exist and the destination file
		is overwritten if it already exists.
		
		.. note:: Due to buffering cross source writes are not guaranteed to
		          appear in wall-clock order. For instance in the example below
		          it is possible for the C-outputs to appear before the python
		          outputs in the log file.
		
		Usage:
		
		::
		
		 # syntactic-sugar for redirect("stdout", "tmp/stdout.log")
		 with redirect_stdout("/tmp/stdout.log"):
		    print("python stdouts are redirected")
		    libc = ctypes.CDLL("libc.so.6")
		    libc.printf(b"c stdouts are also redirected"
		    os.system("echo system stdouts are also redirected")
		
		 print("stdout restored")
	**/
	static public function redirect(std:Dynamic, to_file:Dynamic):Dynamic;
	static public function redirect_stderr(to_file:Dynamic):Dynamic;
	static public function redirect_stdout(to_file:Dynamic):Dynamic;
}