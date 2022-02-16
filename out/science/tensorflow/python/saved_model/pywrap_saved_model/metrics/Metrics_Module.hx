/* This file is generated, do not edit! */
package tensorflow.python.saved_model.pywrap_saved_model.metrics;
@:pythonImport("tensorflow.python.saved_model.pywrap_saved_model.metrics") extern class Metrics_Module {
	/**
		AddCheckpointReadDuration(*, api_label: str, microseconds: float) -> None
		
		Add `microseconds` to the cell `api_label`for '/tensorflow/core/checkpoint/read/read_durations'.
	**/
	static public function AddCheckpointReadDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		AddCheckpointWriteDuration(*, api_label: str, microseconds: float) -> None
		
		Add `microseconds` to the cell `api_label` for '/tensorflow/core/checkpoint/write/write_durations'.
	**/
	static public function AddCheckpointWriteDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		AddTrainingTimeSaved(*, api_label: str, microseconds: float) -> None
		
		Add `microseconds` to the cell `api_label` for '/tensorflow/core/checkpoint/write/training_time_saved'.
	**/
	static public function AddTrainingTimeSaved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetCheckpointReadDurations(*, api_label: str) -> bytes
		
		Get serialized HistogramProto of `api_label` cell for '/tensorflow/core/checkpoint/read/read_durations'.
	**/
	static public function GetCheckpointReadDurations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetCheckpointWriteDurations(*, api_label: str) -> bytes
		
		Get serialized HistogramProto of `api_label` cell for '/tensorflow/core/checkpoint/write/write_durations'.
	**/
	static public function GetCheckpointWriteDurations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetRead(*, write_version: str) -> int
		
		Get value of '/tensorflow/core/saved_model/read/count' counter for SavedModels with the specified `write_version`.
	**/
	static public function GetRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetReadApi(arg0: str) -> int
		
		Get value of '/tensorflow/core/saved_model/read/api' counter for `api_label` cell.
	**/
	static public function GetReadApi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetTrainingTimeSaved(*, api_label: str) -> int
		
		Get cell `api_label` for '/tensorflow/core/checkpoint/write/training_time_saved'.
	**/
	static public function GetTrainingTimeSaved(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetWrite(*, write_version: str) -> int
		
		Get value of '/tensorflow/core/saved_model/write/count' counter.
	**/
	static public function GetWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetWriteApi(arg0: str) -> int
		
		Get value of '/tensorflow/core/saved_model/write/api' counter for `api_label` cell.
	**/
	static public function GetWriteApi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IncrementRead(*, write_version: str) -> None
		
		Increment the '/tensorflow/core/saved_model/read/count' counter after reading a SavedModel with the specifed `write_version`.
	**/
	static public function IncrementRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IncrementReadApi(arg0: str) -> None
		
		Increment the '/tensorflow/core/saved_model/read/api' counter for API with `api_label`.
	**/
	static public function IncrementReadApi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IncrementWrite(*, write_version: str) -> None
		
		Increment the '/tensorflow/core/saved_model/write/count' counter.
	**/
	static public function IncrementWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		IncrementWriteApi(arg0: str) -> None
		
		Increment the '/tensorflow/core/saved_model/write/api' counter for API with `api_label`
	**/
	static public function IncrementWriteApi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
}