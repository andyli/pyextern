/* This file is generated, do not edit! */
package tensorflow.contrib.tensorboard.plugins.projector;
@:pythonImport("tensorflow.contrib.tensorboard.plugins.projector") extern class Projector_Module {
	static public var DESCRIPTOR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Stores a config file used by the embedding projector.
		
		Args:
		  summary_writer: The summary writer used for writing events.
		  config: `tf.contrib.tensorboard.plugins.projector.ProjectorConfig`
		    proto that holds the configuration for the projector such as paths to
		    checkpoint files and metadata files for the embeddings. If
		    `config.model_checkpoint_path` is none, it defaults to the
		    `logdir` used by the summary_writer.
		
		Raises:
		  ValueError: If the summary writer does not have a `logdir`.
	**/
	static public function visualize_embeddings(summary_writer:Dynamic, config:Dynamic):Dynamic;
}