/* This file is generated, do not edit! */
package tensorflow.python.summary.event_accumulator;
@:pythonImport("tensorflow.python.summary.event_accumulator", "EventAccumulator") extern class EventAccumulator {
	/**
		Given a summary tag, return all associated audio.
		
		Args:
		  tag: A string tag associated with the events.
		
		Raises:
		  KeyError: If the tag is not found.
		
		Returns:
		  An array of `AudioEvent`s.
	**/
	public function Audio(tag:Dynamic):Dynamic;
	/**
		Given a summary tag, return all associated compressed histograms.
		
		Args:
		  tag: A string tag associated with the events.
		
		Raises:
		  KeyError: If the tag is not found.
		
		Returns:
		  An array of `CompressedHistogramEvent`s.
	**/
	public function CompressedHistograms(tag:Dynamic):Dynamic;
	/**
		Returns the timestamp in seconds of the first event.
		
		If the first event has been loaded (either by this method or by `Reload`,
		this returns immediately. Otherwise, it will load in the first event. Note
		that this means that calling `Reload` will cause this to block until
		`Reload` has finished.
		
		Returns:
		  The timestamp in seconds of the first event that was loaded.
		
		Raises:
		  ValueError: If no events have been loaded and there were no events found
		  on disk.
	**/
	public function FirstEventTimestamp():Dynamic;
	/**
		Return the graph definition, if there is one.
		
		Raises:
		  ValueError: If there is no graph for this run.
		
		Returns:
		  The `graph_def` proto.
	**/
	public function Graph():Dynamic;
	/**
		Given a summary tag, return all associated histograms.
		
		Args:
		  tag: A string tag associated with the events.
		
		Raises:
		  KeyError: If the tag is not found.
		
		Returns:
		  An array of `HistogramEvent`s.
	**/
	public function Histograms(tag:Dynamic):Dynamic;
	/**
		Given a summary tag, return all associated images.
		
		Args:
		  tag: A string tag associated with the events.
		
		Raises:
		  KeyError: If the tag is not found.
		
		Returns:
		  An array of `ImageEvent`s.
	**/
	public function Images(tag:Dynamic):Dynamic;
	/**
		Loads all events added since the last call to `Reload`.
		
		If `Reload` was never called, loads all events in the file.
		
		Returns:
		  The `EventAccumulator`.
	**/
	public function Reload():Dynamic;
	/**
		Given a tag, return the associated session.run() metadata.
		
		Args:
		  tag: A string tag associated with the event.
		
		Raises:
		  ValueError: If the tag is not found.
		
		Returns:
		  The metadata in form of `RunMetadata` proto.
	**/
	public function RunMetadata(tag:Dynamic):Dynamic;
	/**
		Given a summary tag, return all associated `ScalarEvent`s.
		
		Args:
		  tag: A string tag associated with the events.
		
		Raises:
		  KeyError: If the tag is not found.
		
		Returns:
		  An array of `ScalarEvent`s.
	**/
	public function Scalars(tag:Dynamic):Dynamic;
	/**
		Return all tags found in the value stream.
		
		Returns:
		  A `{tagType: ['list', 'of', 'tags']}` dictionary.
	**/
	public function Tags():Dynamic;
	/**
		Check for out-of-order event.step and discard expired events for tags.
		
		Check if the event is out of order relative to the global most recent step.
		If it is, purge outdated summaries for tags that the event contains.
		
		Args:
		  event: The event to use as reference. If the event is out-of-order, all
		    events with the same tags, but with a greater event.step will be purged.
	**/
	public function _CheckForOutOfOrderStepAndMaybePurge(event:Dynamic):Dynamic;
	/**
		Check and discard expired events using SessionLog.START.
		
		Check for a SessionLog.START event and purge all previously seen events
		with larger steps, because they are out of date. Because of supervisor
		threading, it is possible that this logic will cause the first few event
		messages to be discarded since supervisor threading does not guarantee
		that the START message is deterministically written first.
		
		This method is preferred over _CheckForOutOfOrderStepAndMaybePurge which
		can inadvertently discard events due to supervisor threading.
		
		Args:
		  event: The event to use as reference. If the event is a START event, all
		    previously seen events with a greater event.step will be purged.
	**/
	public function _CheckForRestartAndMaybePurge(event:Dynamic):Dynamic;
	/**
		Maybe purge orphaned data due to a TensorFlow crash.
		
		When TensorFlow crashes at step T+O and restarts at step T, any events
		written after step T are now "orphaned" and will be at best misleading if
		they are included in TensorBoard.
		
		This logic attempts to determine if there is orphaned data, and purge it
		if it is found.
		
		Args:
		  event: The event to use as a reference, to determine if a purge is needed.
	**/
	public function _MaybePurgeOrphanedData(event:Dynamic):Dynamic;
	/**
		Linearly interpolates a histogram weight for a particular basis point.
		
		Uses clamping methods on `histo_min` and `histo_max` to produce tight
		linear estimates of the histogram weight at a particular basis point.
		
		Args:
		  compression_bps: The desired basis point at which to estimate the weight
		  bucket_limit: An array of the RHS histogram bucket limits
		  cumsum_weights: A cumulative sum of the fraction of weights in each
		    histogram bucket, represented in basis points.
		  histo_min: The minimum weight observed in the weight histogram
		  histo_max: The maximum weight observed in the weight histogram
		  histo_num: The number of items in the weight histogram
		
		Returns:
		  A linearly interpolated value of the histogram weight estimate.
	**/
	public function _Percentile(compression_bps:Dynamic, bucket_limit:Dynamic, cumsum_weights:Dynamic, histo_min:Dynamic, histo_max:Dynamic, histo_num:Dynamic):Dynamic;
	/**
		Processes a audio by adding it to accumulated state.
	**/
	public function _ProcessAudio(tag:Dynamic, wall_time:Dynamic, step:Dynamic, audio:Dynamic):Dynamic;
	/**
		Processes a histogram by adding a compression to accumulated state.
		
		Adds a compressed histogram by linearly interpolating histogram buckets to
		represent the histogram weight at multiple compression points. Uses
		self._compression_bps (passed to EventAccumulator constructor) as the
		compression points (represented in basis points, 1/100ths of a precent).
		
		Args:
		  tag: A string name of the tag for which histograms are retrieved.
		  wall_time: Time in seconds since epoch
		  step: Number of steps that have passed
		  histo: proto2 histogram Object
	**/
	public function _ProcessCompressedHistogram(tag:Dynamic, wall_time:Dynamic, step:Dynamic, histo:Dynamic):Dynamic;
	/**
		Called whenever an event is loaded.
	**/
	public function _ProcessEvent(event:Dynamic):Dynamic;
	/**
		Processes a histogram by adding it to accumulated state.
	**/
	public function _ProcessHistogram(tag:Dynamic, wall_time:Dynamic, step:Dynamic, histo:Dynamic):Dynamic;
	/**
		Processes an image by adding it to accumulated state.
	**/
	public function _ProcessImage(tag:Dynamic, wall_time:Dynamic, step:Dynamic, image:Dynamic):Dynamic;
	/**
		Processes a simple value by adding it to accumulated state.
	**/
	public function _ProcessScalar(tag:Dynamic, wall_time:Dynamic, step:Dynamic, scalar:Dynamic):Dynamic;
	/**
		Purge all events that have occurred after the given event.step.
		
		If by_tags is True, purge all events that occurred after the given
		event.step, but only for the tags that the event has. Non-sequential
		event.steps suggest that a TensorFlow restart occurred, and we discard
		the out-of-order events to display a consistent view in TensorBoard.
		
		Discarding by tags is the safer method, when we are unsure whether a restart
		has occurred, given that threading in supervisor can cause events of
		different tags to arrive with unsynchronized step values.
		
		If by_tags is False, then purge all events with event.step greater than the
		given event.step. This can be used when we are certain that a TensorFlow
		restart has occurred and these events can be discarded.
		
		Args:
		  event: The event to use as reference for the purge. All events with
		    the same tags, but with a greater event.step will be purged.
		  by_tags: Bool to dictate whether to discard all out-of-order events or
		    only those that are associated with the given reference event.
	**/
	public function _Purge(event:Dynamic, by_tags:Dynamic):Dynamic;
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
		Construct the `EventAccumulator`.
		
		Args:
		  path: A file path to a directory containing tf events files, or a single
		    tf events file. The accumulator will load events from this path.
		  size_guidance: Information on how much data the EventAccumulator should
		    store in memory. The DEFAULT_SIZE_GUIDANCE tries not to store too much
		    so as to avoid OOMing the client. The size_guidance should be a map
		    from a `tagType` string to an integer representing the number of
		    items to keep per tag for items of that `tagType`. If the size is 0,
		    all events are stored.
		  compression_bps: Information on how the `EventAccumulator` should compress
		    histogram data for the `CompressedHistograms` tag (for details see
		    `ProcessCompressedHistogram`).
		  purge_orphaned_data: Whether to discard any events that were "orphaned" by
		    a TensorFlow restart.
	**/
	@:native("__init__")
	public function ___init__(path:Dynamic, ?size_guidance:Dynamic, ?compression_bps:Dynamic, ?purge_orphaned_data:Dynamic):Dynamic;
	/**
		Construct the `EventAccumulator`.
		
		Args:
		  path: A file path to a directory containing tf events files, or a single
		    tf events file. The accumulator will load events from this path.
		  size_guidance: Information on how much data the EventAccumulator should
		    store in memory. The DEFAULT_SIZE_GUIDANCE tries not to store too much
		    so as to avoid OOMing the client. The size_guidance should be a map
		    from a `tagType` string to an integer representing the number of
		    items to keep per tag for items of that `tagType`. If the size is 0,
		    all events are stored.
		  compression_bps: Information on how the `EventAccumulator` should compress
		    histogram data for the `CompressedHistograms` tag (for details see
		    `ProcessCompressedHistogram`).
		  purge_orphaned_data: Whether to discard any events that were "orphaned" by
		    a TensorFlow restart.
	**/
	public function new(path:Dynamic, ?size_guidance:Dynamic, ?compression_bps:Dynamic, ?purge_orphaned_data:Dynamic):Void;
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