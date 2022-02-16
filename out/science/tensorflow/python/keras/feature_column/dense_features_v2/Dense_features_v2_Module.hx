/* This file is generated, do not edit! */
package tensorflow.python.keras.feature_column.dense_features_v2;
@:pythonImport("tensorflow.python.keras.feature_column.dense_features_v2") extern class Dense_features_v2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A context that disables manual dependency tracking for the given `obj`.
		
		Sometimes library methods might track objects on their own and we might want
		to disable that and do the tracking on our own. One can then use this context
		manager to disable the tracking the library method does and do your own
		tracking.
		
		For example:
		
		class TestLayer(tf.keras.Layer):
		  def build():
		    with no_manual_dependency_tracking_scope(self):
		      var = self.add_variable("name1")  # Creates a var and doesn't track it
		    self._track_trackable("name2", var)  # We track variable with name `name2`
		
		Args:
		  obj: A trackable object.
		
		Yields:
		  a scope in which the object doesn't track dependencies manually.
	**/
	static public function no_manual_dependency_tracking_scope(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}