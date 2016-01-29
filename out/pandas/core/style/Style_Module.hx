/* This file is generated, do not edit! */
package pandas.core.style;
@:pythonImport("pandas.core.style") extern class Style_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		want nice defaults for background_gradient that don't break
		with non-numeric data. But if slice_ is passed go with that.
	**/
	static public function _maybe_numeric_slice(df:Dynamic, slice_:Dynamic, ?include_bool:Dynamic):Dynamic;
	static public function _mpl(func:Dynamic):Dynamic;
	/**
		Ensurse that a slice doesn't reduce to a Series or Scalar.
		
		Any user-paseed `subset` should have this called on it
		to make sure we're always working with DataFrames.
	**/
	static public function _non_reducing_slice(slice_:Dynamic):Dynamic;
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
	static public var has_mpl : Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generate a UUID from a host ID, sequence number, and the current time.
		If 'node' is not given, getnode() is used to obtain the hardware
		address.  If 'clock_seq' is given, it is used as the sequence number;
		otherwise a random 14-bit sequence number is chosen.
	**/
	static public function uuid1(?node:Dynamic, ?clock_seq:Dynamic):Dynamic;
}