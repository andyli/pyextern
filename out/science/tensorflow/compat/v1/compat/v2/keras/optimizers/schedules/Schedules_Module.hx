/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2.keras.optimizers.schedules;
@:pythonImport("tensorflow.compat.v1.compat.v2.keras.optimizers.schedules") extern class Schedules_Module {
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
		Instantiates a `LearningRateSchedule` object from a serialized form.
		
		Args:
		  config: The serialized form of the `LearningRateSchedule`.
		    Dictionary of the form {'class_name': str, 'config': dict}.
		  custom_objects: A dictionary mapping class names (or function names) of
		    custom (non-Keras) objects to class/functions.
		
		Returns:
		  A `LearningRateSchedule` object.
		
		Example:
		
		```python
		# Configuration for PolynomialDecay
		config = {
		  'class_name': 'PolynomialDecay',
		  'config': {'cycle': False,
		    'decay_steps': 10000,
		    'end_learning_rate': 0.01,
		    'initial_learning_rate': 0.1,
		    'name': None,
		    'power': 0.5}}
		lr_schedule = tf.keras.optimizers.schedules.deserialize(config)
		```
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Serializes a `LearningRateSchedule` into a JSON-compatible representation.
		
		Args:
		  learning_rate_schedule: The `LearningRateSchedule` object to serialize.
		
		Returns:
		  A JSON-serializable dict representing the object's config.
		
		Example:
		
		>>> lr_schedule = tf.keras.optimizers.schedules.ExponentialDecay(
		...   0.1, decay_steps=100000, decay_rate=0.96, staircase=True)
		>>> tf.keras.optimizers.schedules.serialize(lr_schedule)
		{'class_name': 'ExponentialDecay',
		 'config': {'decay_rate': 0.96,
		    'decay_steps': 100000,
		    'initial_learning_rate': 0.1,
		    'name': None,
		    'staircase': True}}
	**/
	static public function serialize(learning_rate_schedule:Dynamic):Dynamic;
}