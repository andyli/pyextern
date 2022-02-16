/* This file is generated, do not edit! */
package torch._package.analyze;
@:pythonImport("torch.package.analyze") extern class Analyze_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Trace the execution of a callable in order to determine which modules it uses.
		
		Args:
		    callable: The callable to execute and trace.
		    inputs: The input to use during tracing. The modules used by 'callable' when invoked by each set of inputs
		        are union-ed to determine all modules used by the callable for the purpooses of packaging.
		
		Returns: A list of the names of all modules used during callable execution.
	**/
	static public function trace_dependencies(callable:Dynamic, inputs:Dynamic):Dynamic;
}