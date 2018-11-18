/* This file is generated, do not edit! */
package tensorflow.python.pywrap_tensorflow_internal;
@:pythonImport("tensorflow.python.pywrap_tensorflow_internal") extern class Pywrap_tensorflow_internal_Module {
	static public function AddControlInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function AddStep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function AppendToFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function AssertSameStructure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function AssertSameStructureForData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Basename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function BufferedInputStream_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CheckpointReader_GetTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CheckpointReader_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CleanPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CopyFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CreateBufferedInputStream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CreateDir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CreateURI(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CreateWritableFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function CudaSupportsHalfMatMulAndConv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function DeleteFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function DeleteProfiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function DeleteRecursively(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function DeleteStatSummarizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Dirname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function DoQuantizeTrainingOnGraphDefHelper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function EqualAttrValueWrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function EqualGraphDefWrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function EventsWriter_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ExtendSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function FileExists(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function FileStatistics_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a flat list from a given nested structure.
		
		If `nest` is not a sequence, tuple, or dict, then returns a single-element
		list: `[nest]`.
		
		In the case of dict instances, the sequence consists of the values, sorted by
		key to ensure deterministic behavior. This is true also for `OrderedDict`
		instances: their sequence order is ignored, the sorting order of keys is
		used instead. The same convention is followed in `pack_sequence_as`. This
		correctly repacks dicts and `OrderedDict`s after they have been flattened,
		and also allows flattening an `OrderedDict` and then repacking it back using
		a corresponding plain dict, or vice-versa.
		Dictionaries with non-sortable keys cannot be flattened.
		
		Users must not modify any collections used in `nest` while this function is
		running.
		
		Args:
		  nest: an arbitrarily nested structure or a scalar object. Note, numpy
		      arrays are considered scalars.
		
		Returns:
		  A Python list, the flattened version of the input.
		
		Raises:
		  TypeError: The nest is or contains a dict with non-sortable keys.
	**/
	static public function Flatten(nested:Dynamic):Dynamic;
	/**
		Returns a flat sequence from a given nested structure.
		
		If `nest` is not a sequence, this returns a single-element list: `[nest]`.
		
		Args:
		  nest: an arbitrarily nested structure or a scalar object.
		    Note, numpy arrays are considered scalars.
		
		Returns:
		  A Python list, the flattened version of the input.
	**/
	static public function FlattenForData(nested:Dynamic):Dynamic;
	static public function GCluster_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GItem_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GRAPH_DEF_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_CONSUMER : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_PRODUCER : Dynamic;
	static public function GenerateCostReport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GenerateModelReport(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetHandleShapeAndType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetMatchingFiles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetOperationInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetPythonWrappers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GetTempFilename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function GraphAnalyzer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function InitializePyTrampoline(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function InstallStacktraceHandler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function IsAbsolutePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True iff `instance` is an instance of an `attr.s` decorated class.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is an instance of an `attr.s` decorated class.
	**/
	static public function IsAttrs(o:Dynamic):Dynamic;
	static public function IsDirectory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function IsGoogleCudaEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True iff `instance` is a `collections.Mapping`.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is a `collections.Mapping`.
	**/
	static public function IsMapping(o:Dynamic):Dynamic;
	static public function IsMklEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function IsNamedtuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a true if its input is a collections.Sequence (except strings).
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.Sequence or a
		  dict.
	**/
	static public function IsSequence(o:Dynamic):Dynamic;
	/**
		Returns a true if `seq` is a Sequence or dict (except strings/lists).
		
		NOTE(mrry): This differs from `tensorflow.python.util.nest.is_sequence()`,
		which *does* treat a Python list as a sequence. For ergonomic
		reasons, `tf.data` users would prefer to treat lists as
		implicit `tf.Tensor` objects, and dicts as (nested) sequences.
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string or list and is a
		  collections.Sequence.
	**/
	static public function IsSequenceForData(o:Dynamic):Dynamic;
	static public function ListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ListDevicesWithSessionConfig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function NewCheckpointReader(filepattern:Dynamic):Dynamic;
	static public function NewProfiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function NewStatSummarizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ParseURI(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PrintModelAnalysis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Profile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ProfilerFromFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyExceptionRegistry_Init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyExceptionRegistry_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyRecordReader_New(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyRecordReader_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyRecordWriter_New(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyRecordWriter_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyServer_Join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyServer_New(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyServer_Start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function PyServer_Stop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ReadFileToString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ReadFromStream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RecordWriterOptions_CreateRecordWriterOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RecordWriterOptions_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RecursivelyCreateDir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RegisterType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RemoveAllControlInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RenameFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function RunCppShapeInference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SHARED_PTR_DISOWN : Dynamic;
	/**
		Returns True if the two namedtuples have the same name and fields.
	**/
	static public function SameNamedtuples(o1:Dynamic, o2:Dynamic):Dynamic;
	static public function SerializeToString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ServerInterface_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function SetAttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function SetHandleShapeAndType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function SetRequestedDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function SetRequireShapeInferenceFns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Set_TF_Status_from_Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Stat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function StatSummarizer_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function StatusFromTF_Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Status_OK(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function Status_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TENSOR_HANDLE_KEY : Dynamic;
	static public function TFE_ContextAddFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextAddFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextAsyncClearError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextAsyncWait(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextClearCaches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextDisableRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextEnableRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextEndStep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextExportRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextGetDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextOptionsSetAsync(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextOptionsSetConfig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextOptionsSetDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextSetAsyncForThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextSetServerDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextSetThreadLocalDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_ContextStartStep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TFE_DEVICE_PLACEMENT_EXPLICIT : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_SILENT : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_SILENT_FOR_INT32 : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_WARN : Dynamic;
	static public function TFE_DeleteContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_DeleteContextOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_NewContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_NewContextOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_OpNameGetAttrType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_EncodeArg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_Execute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_FastPathExecute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_InitEagerTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RecordGradient(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RegisterExceptionClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RegisterFallbackExceptionClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RegisterGradientFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RegisterResourceVariableType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_RegisterVSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_SetEagerTensorProfiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeGradient(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetAdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetDeleteTrace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetIsEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetNew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetRecordOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetRestartOnThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetShouldRecord(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeSetStopOnThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeVariableAccessed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeWatchVariable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TapeWatchedVariables(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TensorShapeOnDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_TensorShapeSlice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TFE_Py_UID(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_ABORTED : Dynamic;
	static public var TF_ALREADY_EXISTS : Dynamic;
	static public var TF_ATTR_BOOL : Dynamic;
	static public var TF_ATTR_FLOAT : Dynamic;
	static public var TF_ATTR_FUNC : Dynamic;
	static public var TF_ATTR_INT : Dynamic;
	static public var TF_ATTR_PLACEHOLDER : Dynamic;
	static public var TF_ATTR_SHAPE : Dynamic;
	static public var TF_ATTR_STRING : Dynamic;
	static public var TF_ATTR_TENSOR : Dynamic;
	static public var TF_ATTR_TYPE : Dynamic;
	static public function TF_AddControlInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AddGradients(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AddGradientsWithPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AddInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AddInputList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AllocateTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ApiDefMapGet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ApiDefMapPut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_AttrMetadata_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_BFLOAT16 : Dynamic;
	static public var TF_BOOL : Dynamic;
	static public function TF_Buffer_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_CANCELLED : Dynamic;
	static public var TF_COMPLEX : Dynamic;
	static public var TF_COMPLEX128 : Dynamic;
	static public var TF_COMPLEX64 : Dynamic;
	static public function TF_CloseDeprecatedSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_CloseSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ColocateWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_DATA_LOSS : Dynamic;
	static public var TF_DEADLINE_EXCEEDED : Dynamic;
	static public var TF_DOUBLE : Dynamic;
	static public function TF_DataTypeSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteApiDefMap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteDeprecatedSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteDeviceList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteImportGraphDefOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteImportGraphDefResults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteLibraryHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeletePRunHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteSessionOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeleteTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeprecatedSessionListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeprecatedSessionMakeCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeprecatedSessionReleaseCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeprecatedSessionRunCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeterminePeakMemoryUsage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeviceListCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeviceListIncarnation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeviceListMemoryBytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeviceListName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_DeviceListType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_EstimatePerformance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ExtendGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_FAILED_PRECONDITION : Dynamic;
	static public var TF_FLOAT : Dynamic;
	static public function TF_FinishOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_FunctionGetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_FunctionImportFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_FunctionName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_FunctionSetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_FunctionToFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetAllOpList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetAllRegisteredKernels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetColocationGroups(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetOpList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetOpProperties(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetRegisteredKernelsForOp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GetSupportedDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphCopyFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphGetFunctions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphGetOpDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphGetTensorNumDims(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphGetTensorShape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphGetTensorShapeHelper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphImportGraphDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphImportGraphDefWithResults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphImportGraphDefWithReturnOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphNextOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphNumFunctions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphOperationByName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphSetOutputHandleShapesAndTypes_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphSetTensorShape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphSetTensorShape_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphToFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphToFunction_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphToGraphDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_GraphVersions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_HALF : Dynamic;
	static public var TF_INT16 : Dynamic;
	static public var TF_INT32 : Dynamic;
	static public var TF_INT64 : Dynamic;
	static public var TF_INT8 : Dynamic;
	static public var TF_INTERNAL : Dynamic;
	static public var TF_INVALID_ARGUMENT : Dynamic;
	static public function TF_IdentifyImportantOps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsAddControlDependency(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsAddInputMapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsAddReturnOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsAddReturnOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsNumReturnOperations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsNumReturnOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsRemapControlDependency(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsSetPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsSetUniquifyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefOptionsSetUniquifyPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefResultsMissingUnusedInputMappings_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefResultsReturnOperations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ImportGraphDefResultsReturnOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Input_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ListAvailableOps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_LoadLibrary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_LoadSessionFromSavedModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_MeasureCosts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Message(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_NOT_FOUND : Dynamic;
	static public function TF_NewApiDefMap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewBufferFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewCluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewDeprecatedSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewImportGraphDefOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewSessionOptions(?target:Dynamic, ?config:Dynamic):Dynamic;
	static public function TF_NewSessionRef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewVirtualCluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NumDims(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_OK : Dynamic;
	static public var TF_OUT_OF_RANGE : Dynamic;
	static public function TF_OperationDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrBoolList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrFloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrFloatList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrIntList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrShape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrShapeList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrTensorList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrTensorShapeProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrTensorShapeProtoList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrTypeList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetControlInputs_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationGetControlOutputs_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationInputListLength(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationInputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationNumControlInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationNumControlOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationNumInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationNumOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationOpType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationOutputConsumers_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationOutputListLength(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationOutputNumConsumers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationOutputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OperationToNodeDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_OptimizeGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Output_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_PERMISSION_DENIED : Dynamic;
	static public function TF_PRun(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_PRunSetup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_QINT16 : Dynamic;
	static public var TF_QINT32 : Dynamic;
	static public var TF_QINT8 : Dynamic;
	static public var TF_QUINT16 : Dynamic;
	static public var TF_QUINT8 : Dynamic;
	static public var TF_RESOURCE : Dynamic;
	static public var TF_RESOURCE_EXHAUSTED : Dynamic;
	static public function TF_Reset(target:Dynamic, ?containers:Dynamic, ?config:Dynamic):Dynamic;
	static public function TF_Reset_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Run(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_STRING : Dynamic;
	static public function TF_SessionListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionMakeCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionPRunSetup_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionPRun_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionReleaseCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionRunCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SessionRun_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrBoolList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrFloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrFloatList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrFuncName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrIntList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrShape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrShapeList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrStringList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrTensorList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrTensorShapeProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrTensorShapeProtoList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrTypeList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_SetStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_ShutdownCluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_StringDecode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_StringEncode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_StringEncodedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TensorByteSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TensorData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TensorMaybeMove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TensorType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TryEvaluateConstant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_TryEvaluateConstant_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_UINT16 : Dynamic;
	static public var TF_UINT32 : Dynamic;
	static public var TF_UINT64 : Dynamic;
	static public var TF_UINT8 : Dynamic;
	static public var TF_UNAUTHENTICATED : Dynamic;
	static public var TF_UNAVAILABLE : Dynamic;
	static public var TF_UNIMPLEMENTED : Dynamic;
	static public var TF_UNKNOWN : Dynamic;
	static public var TF_VARIANT : Dynamic;
	static public function TF_Version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_bfloat16_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TfCheckOpHelper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TfCheckOpHelperOutOfLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TransformGraphWithStringInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TryFindKernelClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function UpdateEdge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function WritableFile_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function WriteProfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function WriteStringToFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ZlibCompressionOptions_swigregister(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _TF_NewSessionOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _TF_SetConfig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _TF_SetTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __compiler_version__ : Dynamic;
	static public var __cxx11_abi_flag__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __git_version__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public function __lshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __monolithic_build__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var _newclass : Dynamic;
	static public function _swig_getattr(self:Dynamic, class_type:Dynamic, name:Dynamic):Dynamic;
	static public function _swig_getattr_nondynamic(self:Dynamic, class_type:Dynamic, name:Dynamic, ?_static:Dynamic):Dynamic;
	static public function _swig_repr(self:Dynamic):Dynamic;
	static public function _swig_setattr(self:Dynamic, class_type:Dynamic, name:Dynamic, value:Dynamic):Dynamic;
	static public function _swig_setattr_nondynamic(self:Dynamic, class_type:Dynamic, name:Dynamic, value:Dynamic, ?_static:Dynamic):Dynamic;
	/**
		A general quantization scheme is being developed in `tf.contrib.quantize`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		GraphDef quantized training rewriter is deprecated in the long term
		
		Consider using that instead, though since it is in the tf.contrib namespace,
		it is not subject to backward compatibility guarantees.
	**/
	static public function do_quantize_training_on_graphdef(input_graph:Dynamic, num_bits:Dynamic):Dynamic;
	static public function list_devices(?session_config:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}