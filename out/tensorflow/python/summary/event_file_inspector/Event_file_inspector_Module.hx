/* This file is generated, do not edit! */
package tensorflow.python.summary.event_file_inspector;
@:pythonImport("tensorflow.python.summary.event_file_inspector") extern class Event_file_inspector_Module {
	static public var FLAGS : Dynamic;
	static public var LONG_FIELDS : Dynamic;
	static public var PRINT_SEPARATOR : Dynamic;
	static public var SHORT_FIELDS : Dynamic;
	static public var SUMMARY_TYPE_TO_FIELD : Dynamic;
	static public var TAG_FIELDS : Dynamic;
	static public var TRACKED_FIELDS : Dynamic;
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
	/**
		Returns a generator that yields events from an event file.
	**/
	static public function generator_from_event_file(event_file:Dynamic):Dynamic;
	/**
		Returns a list of event generators for subdirectories with event files.
		
		The number of generators returned should equal the number of directories
		within logdir that contain event files. If only logdir contains event files,
		returns a list of length one.
		
		Args:
		  logdir: A log directory that contains event files.
		
		Returns:
		  List of event generators for each subdirectory with event files.
	**/
	static public function generators_from_logdir(logdir:Dynamic):Dynamic;
	/**
		Transform the field-to-obs mapping into a printable dictionary.
		
		Args:
		  field_to_obs: Dict that maps string field to `Observation` list.
		
		Returns:
		  A dict with the keys and values to print to console.
	**/
	static public function get_dict_to_print(field_to_obs:Dynamic):Dynamic;
	/**
		Return a field to `Observations` dict for the event generator.
		
		Args:
		  generator: A generator over event protos.
		  query_for_tag: A string that if specified, only create observations for
		    events with this tag name.
		
		Returns:
		  A dict mapping keys in `TRACKED_FIELDS` to an `Observation` list.
	**/
	static public function get_field_to_observations_map(generator:Dynamic, ?query_for_tag:Dynamic):Dynamic;
	/**
		Returns a list of InspectionUnit objects given either logdir or event_file.
		
		If logdir is given, the number of InspectionUnits should equal the
		number of directories or subdirectories that contain event files.
		
		If event_file is given, the number of InspectionUnits should be 1.
		
		Args:
		  logdir: A log directory that contains event files.
		  event_file: Or, a particular event file path.
		  tag: An optional tag name to query for.
		
		Returns:
		  A list of InspectionUnit objects.
	**/
	static public function get_inspection_units(?logdir:Dynamic, ?event_file:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Returns elements that break the monotonically non-decreasing trend.
		
		This is used to find instances of global step values that are "out-of-order",
		which may trigger TensorBoard event discarding logic.
		
		Args:
		  list_of_numbers: A list of numbers.
		
		Returns:
		  A list of tuples in which each tuple are two elements are adjacent, but the
		  second element is lower than the first.
	**/
	static public function get_out_of_order(list_of_numbers:Dynamic):Dynamic;
	/**
		Returns a dictionary of tags that a user could query over.
		
		Args:
		  field_to_obs: Dict that maps string field to `Observation` list.
		
		Returns:
		  A dict that maps keys in `TAG_FIELDS` to a list of string tags present in
		  the event files. If the dict does not have any observations of the type,
		  maps to an empty list so that we can render this to console.
	**/
	static public function get_unique_tags(field_to_obs:Dynamic):Dynamic;
	/**
		Main function for inspector that prints out a digest of event files.
		
		Args:
		  logdir: A log directory that contains event files.
		  event_file: Or, a particular event file path.
		  tag: An optional tag name to query for.
		
		Raises:
		  ValueError: If neither logdir and event_file are given, or both are given.
	**/
	static public function inspect(?logdir:Dynamic, ?event_file:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Prints a shallow dict to console.
		
		Args:
		  d: Dict to print.
		  show_missing: Whether to show keys with empty values.
	**/
	static public function print_dict(d:Dynamic, ?show_missing:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var summary_type : Dynamic;
}