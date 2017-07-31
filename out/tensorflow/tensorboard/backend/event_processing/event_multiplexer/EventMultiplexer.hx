/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.event_multiplexer;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.event_multiplexer", "EventMultiplexer") extern class EventMultiplexer {
	/**
		Add a run to the multiplexer.
		
		If the name is not specified, it is the same as the path.
		
		If a run by that name exists, and we are already watching the right path,
		  do nothing. If we are watching a different path, replace the event
		  accumulator.
		
		If `Reload` has been called, it will `Reload` the newly created
		accumulators.
		
		Args:
		  path: Path to the event files (or event directory) for given run.
		  name: Name of the run to add. If not provided, is set to path.
		
		Returns:
		  The `EventMultiplexer`.
	**/
	public function AddRun(path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load runs from a directory; recursively walks subdirectories.
		
		If path doesn't exist, no-op. This ensures that it is safe to call
		  `AddRunsFromDirectory` multiple times, even before the directory is made.
		
		If path is a directory, load event files in the directory (if any exist) and
		  recursively call AddRunsFromDirectory on any subdirectories. This mean you
		  can call AddRunsFromDirectory at the root of a tree of event logs and
		  TensorBoard will load them all.
		
		If the `EventMultiplexer` is already loaded this will cause
		the newly created accumulators to `Reload()`.
		Args:
		  path: A string path to a directory to load runs from.
		  name: Optionally, what name to apply to the runs. If name is provided
		    and the directory contains run subdirectories, the name of each subrun
		    is the concatenation of the parent name and the subdirectory name. If
		    name is provided and the directory contains event files, then a run
		    is added called "name" and with the events from the path.
		
		Raises:
		  ValueError: If the path exists and isn't a directory.
		
		Returns:
		  The `EventMultiplexer`.
	**/
	public function AddRunsFromDirectory(path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve the audio events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.AudioEvents`.
	**/
	public function Audio(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Retrieve the compressed histogram events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.CompressedHistogramEvents`.
	**/
	public function CompressedHistograms(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Return the timestamp of the first event of the given run.
		
		This may perform I/O if no events have been loaded yet for the run.
		
		Args:
		  run: A string name of the run for which the timestamp is retrieved.
		
		Returns:
		  The wall_time of the first event of the run, which will typically be
		  seconds since the epoch.
		
		Raises:
		  KeyError: If the run is not found.
		  ValueError: If the run has no events loaded and there are no events on
		    disk to load.
	**/
	public function FirstEventTimestamp(run:Dynamic):Dynamic;
	/**
		Determines which ops have at least 1 health pill event for a given run.
		
		Args:
		  run: The name of the run.
		
		Raises:
		  KeyError: If the run is not found, or the node name is not available for
		    the given run.
		
		Returns:
		  The list of names of ops with health pill events.
	**/
	public function GetOpsWithHealthPills(run:Dynamic):Dynamic;
	/**
		Retrieve the graph associated with the provided run.
		
		Args:
		  run: A string name of a run to load the graph for.
		
		Raises:
		  KeyError: If the run is not found.
		  ValueError: If the run does not have an associated graph.
		
		Returns:
		  The `GraphDef` protobuf data structure.
	**/
	public function Graph(run:Dynamic):Dynamic;
	/**
		Retrieve the health pill events associated with a run and node name.
		
		Args:
		  run: A string name of the run for which health pills are retrieved.
		  node_name: A string name of the node for which health pills are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the node name is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.HealthPillEvents`.
	**/
	public function HealthPills(run:Dynamic, node_name:Dynamic):Dynamic;
	/**
		Retrieve the histogram events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.HistogramEvents`.
	**/
	public function Histograms(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Retrieve the image events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.ImageEvents`.
	**/
	public function Images(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Retrieve the metagraph associated with the provided run.
		
		Args:
		  run: A string name of a run to load the graph for.
		
		Raises:
		  KeyError: If the run is not found.
		  ValueError: If the run does not have an associated graph.
		
		Returns:
		  The `MetaGraphDef` protobuf data structure.
	**/
	public function MetaGraph(run:Dynamic):Dynamic;
	/**
		Get index of runs and assets for a given plugin.
		
		Args:
		  plugin_name: Name of the plugin we are checking for.
		
		Returns:
		  A dictionary that maps from run_name to a list of plugin
		    assets for that run.
	**/
	public function PluginAssets(plugin_name:Dynamic):Dynamic;
	/**
		Call `Reload` on every `EventAccumulator`.
	**/
	public function Reload():Dynamic;
	/**
		Return the contents for a specific plugin asset from a run.
		
		Args:
		  run: The string name of the run.
		  plugin_name: The string name of a plugin.
		  asset_name: The string name of an asset.
		
		Returns:
		  The string contents of the plugin asset.
		
		Raises:
		  KeyError: If the asset is not available.
	**/
	public function RetrievePluginAsset(run:Dynamic, plugin_name:Dynamic, asset_name:Dynamic):Dynamic;
	/**
		Get the session.run() metadata associated with a TensorFlow run and tag.
		
		Args:
		  run: A string name of a TensorFlow run.
		  tag: A string name of the tag associated with a particular session.run().
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for the
		    given run.
		
		Returns:
		  The metadata in the form of `RunMetadata` protobuf data structure.
	**/
	public function RunMetadata(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Returns a dict mapping run names to event file paths.
	**/
	public function RunPaths():Dynamic;
	/**
		Return all the run names in the `EventMultiplexer`.
		
		Returns:
		```
		  {runName: { images: [tag1, tag2, tag3],
		              scalarValues: [tagA, tagB, tagC],
		              histograms: [tagX, tagY, tagZ],
		              compressedHistograms: [tagX, tagY, tagZ],
		              graph: true, meta_graph: true}}
		```
	**/
	public function Runs():Dynamic;
	/**
		Retrieve the scalar events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.ScalarEvents`.
	**/
	public function Scalars(run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Retrieve the tensor events associated with a run and tag.
		
		Args:
		  run: A string name of the run for which values are retrieved.
		  tag: A string name of the tag for which values are retrieved.
		
		Raises:
		  KeyError: If the run is not found, or the tag is not available for
		    the given run.
		
		Returns:
		  An array of `event_accumulator.TensorEvent`s.
	**/
	public function Tensors(run:Dynamic, tag:Dynamic):Dynamic;
	public function _GetAccumulator(run:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Constructor for the `EventMultiplexer`.
		
		Args:
		  run_path_map: Dict `{run: path}` which specifies the
		    name of a run, and the path to find the associated events. If it is
		    None, then the EventMultiplexer initializes without any runs.
		  size_guidance: A dictionary mapping from `tagType` to the number of items
		    to store for each tag of that type. See
		    `event_accumulator.EventAccumulator` for details.
		  purge_orphaned_data: Whether to discard any events that were "orphaned" by
		    a TensorFlow restart.
	**/
	@:native("__init__")
	public function ___init__(?run_path_map:Dynamic, ?size_guidance:Dynamic, ?purge_orphaned_data:Dynamic):Dynamic;
	/**
		Constructor for the `EventMultiplexer`.
		
		Args:
		  run_path_map: Dict `{run: path}` which specifies the
		    name of a run, and the path to find the associated events. If it is
		    None, then the EventMultiplexer initializes without any runs.
		  size_guidance: A dictionary mapping from `tagType` to the number of items
		    to store for each tag of that type. See
		    `event_accumulator.EventAccumulator` for details.
		  purge_orphaned_data: Whether to discard any events that were "orphaned" by
		    a TensorFlow restart.
	**/
	public function new(?run_path_map:Dynamic, ?size_guidance:Dynamic, ?purge_orphaned_data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}