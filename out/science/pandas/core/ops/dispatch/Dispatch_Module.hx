/* This file is generated, do not edit! */
package pandas.core.ops.dispatch;
@:pythonImport("pandas.core.ops.dispatch") extern class Dispatch_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Identify cases where Series operation should dispatch to ExtensionArray method.
		
		Parameters
		----------
		left : np.ndarray or ExtensionArray
		right : object
		
		Returns
		-------
		bool
	**/
	static public function should_extension_dispatch(left:Dynamic, right:Dynamic):Dynamic;
}