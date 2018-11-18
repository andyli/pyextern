/* This file is generated, do not edit! */
package tensorflow.contrib.cloud;
@:pythonImport("tensorflow.contrib.cloud") extern class Cloud_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		ConfigureColabSession configures the GCS file system in Colab.
		
		Args:
		  session: A `tf.Session` session.
	**/
	static public function configure_colab_session(session:Dynamic):Dynamic;
	/**
		Configures the GCS file system for a given a session.
		
		Warning: GCS `credentials` may be transmitted over the network unencrypted.
		Please ensure that the network is trusted before using this function. For
		users running code entirely within Google Cloud, your data is protected by
		encryption in between data centers. For more information, please take a look
		at https://cloud.google.com/security/encryption-in-transit/.
		
		Args:
		  session: A `tf.Session` session that should be used to configure the GCS
		    file system.
		  credentials: [Optional.] A JSON string
		  block_cache: [Optional.] A BlockCacheParams to configure the block cache .
		  device: [Optional.] The device to place the configure ops.
	**/
	static public function configure_gcs(session:Dynamic, ?credentials:Dynamic, ?block_cache:Dynamic, ?device:Dynamic):Dynamic;
}