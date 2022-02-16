/* This file is generated, do not edit! */
package tensorflow.python.client.pywrap_tf_session;
@:pythonImport("tensorflow.python.client.pywrap_tf_session") extern class Pywrap_tf_session_Module {
	/**
		AddControlInput(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg2: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> None
	**/
	static public function AddControlInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		AddWhileInputHack(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> None
	**/
	static public function AddWhileInputHack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ClearAttr(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg2: str) -> None
	**/
	static public function ClearAttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		EqualAttrValueWrapper(*args, **kwargs)
		Overloaded function.
		
		1. EqualAttrValueWrapper(arg0: str, arg1: str) -> str
		
		2. EqualAttrValueWrapper(arg0: str, arg1: str) -> str
	**/
	static public function EqualAttrValueWrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		EqualGraphDefWrapper(arg0: str, arg1: str) -> str
	**/
	static public function EqualGraphDefWrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExtendSession(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session) -> None
	**/
	static public function ExtendSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GRAPH_DEF_VERSION : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_CONSUMER : Dynamic;
	static public var GRAPH_DEF_VERSION_MIN_PRODUCER : Dynamic;
	/**
		GetHandleShapeAndType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output) -> bytes
	**/
	static public function GetHandleShapeAndType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		GetOperationInputs(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> List[tensorflow.python.client._pywrap_tf_session.TF_Output]
	**/
	static public function GetOperationInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RemoveAllControlInputs(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> None
	**/
	static public function RemoveAllControlInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SetAttr(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg2: str, arg3: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function SetAttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SetHandleShapeAndType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: bytes) -> None
	**/
	static public function SetHandleShapeAndType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SetRequestedDevice(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg2: str) -> None
	**/
	static public function SetRequestedDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SetRequireShapeInferenceFns(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: bool) -> None
	**/
	static public function SetRequireShapeInferenceFns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TENSOR_HANDLE_KEY : Dynamic;
	static public var TF_ABORTED : Dynamic;
	/**
		TF_AddControlInput(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription, arg1: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> None
	**/
	static public function TF_AddControlInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_AddInput(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output) -> None
	**/
	static public function TF_AddInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_AddInputList(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription, arg1: handle) -> None
	**/
	static public function TF_AddInputList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ApiDefMapGet(arg0: tensorflow.python.client._pywrap_tf_session.TF_ApiDefMap, arg1: str, arg2: int) -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_ApiDefMapGet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ApiDefMapPut(arg0: tensorflow.python.client._pywrap_tf_session.TF_ApiDefMap, arg1: str, arg2: int) -> None
	**/
	static public function TF_ApiDefMapPut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_BFLOAT16 : Dynamic;
	static public var TF_BOOL : Dynamic;
	static public var TF_CANCELLED : Dynamic;
	static public var TF_COMPLEX : Dynamic;
	static public var TF_COMPLEX128 : Dynamic;
	static public var TF_COMPLEX64 : Dynamic;
	/**
		TF_CloseSession(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session) -> None
	**/
	static public function TF_CloseSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_CreatePlaceholders(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: handle, arg2: str) -> List[tensorflow.python.client._pywrap_tf_session.TF_Output]
	**/
	static public function TF_CreatePlaceholders(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_DATA_LOSS : Dynamic;
	static public var TF_DEADLINE_EXCEEDED : Dynamic;
	static public var TF_DOUBLE : Dynamic;
	/**
		TF_DeleteApiDefMap(arg0: tensorflow.python.client._pywrap_tf_session.TF_ApiDefMap) -> None
	**/
	static public function TF_DeleteApiDefMap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteBuffer(arg0: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_DeleteBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteDeviceList(*args, **kwargs)
		Overloaded function.
		
		1. TF_DeleteDeviceList(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList) -> None
		
		2. TF_DeleteDeviceList(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList) -> None
	**/
	static public function TF_DeleteDeviceList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteFunction(arg0: tensorflow.python._pywrap_tfe.TF_Function) -> None
	**/
	static public function TF_DeleteFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteGraph(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph) -> None
	**/
	static public function TF_DeleteGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteImportGraphDefOptions(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions) -> None
	**/
	static public function TF_DeleteImportGraphDefOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteImportGraphDefResults(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefResults) -> None
	**/
	static public function TF_DeleteImportGraphDefResults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteLibraryHandle(arg0: tensorflow.python.client._pywrap_tf_session.TF_Library) -> None
	**/
	static public function TF_DeleteLibraryHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteSession(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session) -> None
	**/
	static public function TF_DeleteSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteSessionOptions(arg0: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions) -> None
	**/
	static public function TF_DeleteSessionOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeleteStatus(arg0: tensorflow.python.client._pywrap_tf_session.TF_Status) -> None
	**/
	static public function TF_DeleteStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListCount(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList) -> int
	**/
	static public function TF_DeviceListCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListIncarnation(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> int
	**/
	static public function TF_DeviceListIncarnation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListMemoryBytes(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> int
	**/
	static public function TF_DeviceListMemoryBytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListName(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> str
	**/
	static public function TF_DeviceListName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListType(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> str
	**/
	static public function TF_DeviceListType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_FAILED_PRECONDITION : Dynamic;
	static public var TF_FLOAT : Dynamic;
	/**
		TF_FinishOperation(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription) -> tensorflow.python.client._pywrap_tf_session.TF_Operation
	**/
	static public function TF_FinishOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_FunctionImportFunctionDef(arg0: bytes) -> tensorflow.python._pywrap_tfe.TF_Function
	**/
	static public function TF_FunctionImportFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_FunctionSetAttrValueProto(arg0: tensorflow.python._pywrap_tfe.TF_Function, arg1: str, arg2: bytes) -> None
	**/
	static public function TF_FunctionSetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_FunctionToFunctionDef(arg0: tensorflow.python._pywrap_tfe.TF_Function, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_FunctionToFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetAllOpList() -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_GetAllOpList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetAllRegisteredKernels() -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_GetAllRegisteredKernels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetBuffer(arg0: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> object
	**/
	static public function TF_GetBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetCode(arg0: tensorflow.python.client._pywrap_tf_session.TF_Status) -> TF_Code
	**/
	static public function TF_GetCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetOpList(arg0: tensorflow.python.client._pywrap_tf_session.TF_Library) -> object
	**/
	static public function TF_GetOpList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetRegisteredKernelsForOp(arg0: str) -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_GetRegisteredKernelsForOp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetXlaConstantFoldingDisabled() -> int
	**/
	static public function TF_GetXlaConstantFoldingDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphCopyFunction(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python._pywrap_tfe.TF_Function, arg2: tensorflow.python._pywrap_tfe.TF_Function) -> None
	**/
	static public function TF_GraphCopyFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphGetOpDef(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: str, arg2: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_GraphGetOpDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphGetTensorShapeHelper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output) -> tuple
	**/
	static public function TF_GraphGetTensorShapeHelper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphGetTensorShape_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: List[int], arg3: bool) -> None
	**/
	static public function TF_GraphGetTensorShape_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphImportGraphDefWithResults(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer, arg2: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions) -> tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefResults
	**/
	static public function TF_GraphImportGraphDefWithResults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphNextOperation(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: int) -> tuple
	**/
	static public function TF_GraphNextOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphSetOutputHandleShapesAndTypes_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: List[Optional[List[int]]], arg3: List[int], arg4: handle) -> None
	**/
	static public function TF_GraphSetOutputHandleShapesAndTypes_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphSetTensorShape_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: List[int], arg3: bool) -> None
	**/
	static public function TF_GraphSetTensorShape_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphToFunction_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: str, arg2: bool, arg3: Optional[List[tensorflow.python.client._pywrap_tf_session.TF_Operation]], arg4: List[tensorflow.python.client._pywrap_tf_session.TF_Output], arg5: List[tensorflow.python.client._pywrap_tf_session.TF_Output], arg6: List[bytes], arg7: List[tensorflow.python.client._pywrap_tf_session.TF_Operation], arg8: List[bytes], arg9: None, arg10: str) -> tensorflow.python._pywrap_tfe.TF_Function
	**/
	static public function TF_GraphToFunction_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphToGraphDef(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_GraphToGraphDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GraphVersions(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_GraphVersions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_HALF : Dynamic;
	static public var TF_INT16 : Dynamic;
	static public var TF_INT32 : Dynamic;
	static public var TF_INT64 : Dynamic;
	static public var TF_INT8 : Dynamic;
	static public var TF_INTERNAL : Dynamic;
	static public var TF_INVALID_ARGUMENT : Dynamic;
	/**
		TF_ImportGraphDefOptionsAddInputMapping(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: str, arg2: int, arg3: tensorflow.python.client._pywrap_tf_session.TF_Output) -> None
	**/
	static public function TF_ImportGraphDefOptionsAddInputMapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsAddReturnOperation(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: str) -> None
	**/
	static public function TF_ImportGraphDefOptionsAddReturnOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsAddReturnOutput(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: str, arg2: int) -> None
	**/
	static public function TF_ImportGraphDefOptionsAddReturnOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsRemapControlDependency(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: str, arg2: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> None
	**/
	static public function TF_ImportGraphDefOptionsRemapControlDependency(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsSetPrefix(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: str) -> None
	**/
	static public function TF_ImportGraphDefOptionsSetPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsSetUniquifyNames(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: int) -> None
	**/
	static public function TF_ImportGraphDefOptionsSetUniquifyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefOptionsSetValidateColocationConstraints(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions, arg1: int) -> None
	**/
	static public function TF_ImportGraphDefOptionsSetValidateColocationConstraints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefResultsMissingUnusedInputMappings_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefResults) -> List[str]
	**/
	static public function TF_ImportGraphDefResultsMissingUnusedInputMappings_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefResultsReturnOperations(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefResults) -> list
	**/
	static public function TF_ImportGraphDefResultsReturnOperations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ImportGraphDefResultsReturnOutputs(arg0: tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefResults) -> list
	**/
	static public function TF_ImportGraphDefResultsReturnOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_LoadLibrary(arg0: str) -> tensorflow.python.client._pywrap_tf_session.TF_Library
	**/
	static public function TF_LoadLibrary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_LoadPluggableDeviceLibrary(arg0: str) -> tensorflow.python.client._pywrap_tf_session.TF_Library
	**/
	static public function TF_LoadPluggableDeviceLibrary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewApiDefMap(arg0: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> tensorflow.python.client._pywrap_tf_session.TF_ApiDefMap
	**/
	static public function TF_NewApiDefMap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewBuffer() -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_NewBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewBufferFromString(arg0: bytes) -> tensorflow.python.client._pywrap_tf_session.TF_Buffer
	**/
	static public function TF_NewBufferFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewGraph() -> tensorflow.python.client._pywrap_tf_session.TF_Graph
	**/
	static public function TF_NewGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewImportGraphDefOptions() -> tensorflow.python.client._pywrap_tf_session.TF_ImportGraphDefOptions
	**/
	static public function TF_NewImportGraphDefOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewOperation(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: str, arg2: str) -> tensorflow.python.client._pywrap_tf_session.TF_OperationDescription
	**/
	static public function TF_NewOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewServer(arg0: bytes) -> tensorflow.python.client._pywrap_tf_session.TF_Server
	**/
	static public function TF_NewServer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewSession(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions) -> tensorflow.python.client._pywrap_tf_session.TF_Session
	**/
	static public function TF_NewSession(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_NewSessionOptions(?target:Dynamic, ?config:Dynamic):Dynamic;
	/**
		TF_NewSessionRef(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions) -> tensorflow.python.client._pywrap_tf_session.TF_Session
	**/
	static public function TF_NewSessionRef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewStatus() -> tensorflow.python.client._pywrap_tf_session.TF_Status
	**/
	static public function TF_NewStatus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_OK : Dynamic;
	static public var TF_OUT_OF_RANGE : Dynamic;
	/**
		TF_OperationDevice(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> str
	**/
	static public function TF_OperationDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetAttrBool(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg1: str) -> object
	**/
	static public function TF_OperationGetAttrBool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetAttrInt(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg1: str) -> object
	**/
	static public function TF_OperationGetAttrInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetAttrType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg1: str) -> TF_DataType
	**/
	static public function TF_OperationGetAttrType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetAttrValueProto(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg1: str, arg2: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_OperationGetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetControlInputs_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> List[tensorflow.python.client._pywrap_tf_session.TF_Operation]
	**/
	static public function TF_OperationGetControlInputs_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationGetControlOutputs_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> List[tensorflow.python.client._pywrap_tf_session.TF_Operation]
	**/
	static public function TF_OperationGetControlOutputs_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationInputType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Input) -> TF_DataType
	**/
	static public function TF_OperationInputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationName(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> str
	**/
	static public function TF_OperationName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationNumInputs(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> int
	**/
	static public function TF_OperationNumInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationNumOutputs(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> int
	**/
	static public function TF_OperationNumOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationOpType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation) -> str
	**/
	static public function TF_OperationOpType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationOutputConsumers_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Output) -> List[str]
	**/
	static public function TF_OperationOutputConsumers_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationOutputType(arg0: tensorflow.python.client._pywrap_tf_session.TF_Output) -> TF_DataType
	**/
	static public function TF_OperationOutputType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_OperationToNodeDef(arg0: tensorflow.python.client._pywrap_tf_session.TF_Operation, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> None
	**/
	static public function TF_OperationToNodeDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_PERMISSION_DENIED : Dynamic;
	/**
		TF_PluggableDeviceLibraryHandle(arg0: tensorflow.python.client._pywrap_tf_session.TF_Library) -> None
	**/
	static public function TF_PluggableDeviceLibraryHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_QINT16 : Dynamic;
	static public var TF_QINT32 : Dynamic;
	static public var TF_QINT8 : Dynamic;
	static public var TF_QUINT16 : Dynamic;
	static public var TF_QUINT8 : Dynamic;
	static public var TF_RESOURCE : Dynamic;
	static public var TF_RESOURCE_EXHAUSTED : Dynamic;
	/**
		TF_RegisterFilesystemPlugin(arg0: str) -> None
	**/
	static public function TF_RegisterFilesystemPlugin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function TF_Reset(target:Dynamic, ?containers:Dynamic, ?config:Dynamic):Dynamic;
	/**
		TF_Reset_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions, arg1: List[bytes]) -> None
	**/
	static public function TF_Reset_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_STRING : Dynamic;
	/**
		TF_ServerJoin(arg0: tensorflow.python.client._pywrap_tf_session.TF_Server) -> None
	**/
	static public function TF_ServerJoin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ServerStart(arg0: tensorflow.python.client._pywrap_tf_session.TF_Server) -> None
	**/
	static public function TF_ServerStart(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ServerStop(arg0: tensorflow.python.client._pywrap_tf_session.TF_Server) -> None
	**/
	static public function TF_ServerStop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ServerTarget(arg0: tensorflow.python.client._pywrap_tf_session.TF_Server) -> str
	**/
	static public function TF_ServerTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionListDevices(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session) -> tensorflow.python._pywrap_tfe.TF_DeviceList
	**/
	static public function TF_SessionListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionMakeCallable(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> int
	**/
	static public function TF_SessionMakeCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionPRunSetup_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: List[tensorflow.python.client._pywrap_tf_session.TF_Output], arg2: List[tensorflow.python.client._pywrap_tf_session.TF_Output], arg3: List[tensorflow.python.client._pywrap_tf_session.TF_Operation]) -> str
	**/
	static public function TF_SessionPRunSetup_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionPRun_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: str, arg2: handle, arg3: List[tensorflow.python.client._pywrap_tf_session.TF_Output]) -> object
	**/
	static public function TF_SessionPRun_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionReleaseCallable(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: int) -> None
	**/
	static public function TF_SessionReleaseCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionRunCallable(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: int, arg2: object, arg3: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> list
	**/
	static public function TF_SessionRunCallable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SessionRun_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Session, arg1: tensorflow.python.client._pywrap_tf_session.TF_Buffer, arg2: handle, arg3: List[tensorflow.python.client._pywrap_tf_session.TF_Output], arg4: List[tensorflow.python.client._pywrap_tf_session.TF_Operation], arg5: tensorflow.python.client._pywrap_tf_session.TF_Buffer) -> object
	**/
	static public function TF_SessionRun_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetAttrValueProto(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription, arg1: str, arg2: bytes) -> None
	**/
	static public function TF_SetAttrValueProto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetDevice(arg0: tensorflow.python.client._pywrap_tf_session.TF_OperationDescription, arg1: str) -> None
	**/
	static public function TF_SetDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetTfXlaCpuGlobalJit(arg0: int) -> int
	**/
	static public function TF_SetTfXlaCpuGlobalJit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetXlaAutoJitMode(*args, **kwargs)
		Overloaded function.
		
		1. TF_SetXlaAutoJitMode(arg0: str) -> None
		
		2. TF_SetXlaAutoJitMode(arg0: str) -> None
	**/
	static public function TF_SetXlaAutoJitMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetXlaConstantFoldingDisabled(arg0: int) -> None
	**/
	static public function TF_SetXlaConstantFoldingDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetXlaEnableLazyCompilation(arg0: int) -> int
	**/
	static public function TF_SetXlaEnableLazyCompilation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetXlaMinClusterSize(arg0: int) -> None
	**/
	static public function TF_SetXlaMinClusterSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_TryEvaluateConstant_wrapper(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output) -> object
	**/
	static public function TF_TryEvaluateConstant_wrapper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_UINT16 : Dynamic;
	static public var TF_UINT32 : Dynamic;
	static public var TF_UINT64 : Dynamic;
	static public var TF_UINT8 : Dynamic;
	static public var TF_UNAUTHENTICATED : Dynamic;
	static public var TF_UNIMPLEMENTED : Dynamic;
	static public var TF_UNKNOWN : Dynamic;
	static public var TF_VARIANT : Dynamic;
	/**
		UpdateEdge(arg0: tensorflow.python.client._pywrap_tf_session.TF_Graph, arg1: tensorflow.python.client._pywrap_tf_session.TF_Output, arg2: tensorflow.python.client._pywrap_tf_session.TF_Input) -> None
	**/
	static public function UpdateEdge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_TF_NewSessionOptions() -> tensorflow.python.client._pywrap_tf_session.TF_SessionOptions
	**/
	static public function _TF_NewSessionOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_TF_SetConfig(arg0: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions, arg1: bytes) -> None
	**/
	static public function _TF_SetConfig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_TF_SetTarget(arg0: tensorflow.python.client._pywrap_tf_session.TF_SessionOptions, arg1: str) -> None
	**/
	static public function _TF_SetTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __compiler_version__ : Dynamic;
	static public var __cxx11_abi_flag__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __git_version__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __monolithic_build__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		get_compiler_version() -> str
	**/
	static public function get_compiler_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_cxx11_abi_flag() -> int
	**/
	static public function get_cxx11_abi_flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_eigen_max_align_bytes() -> int
	**/
	static public function get_eigen_max_align_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_git_version() -> str
	**/
	static public function get_git_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_graph_def_version() -> int
	**/
	static public function get_graph_def_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_graph_def_version_min_consumer() -> int
	**/
	static public function get_graph_def_version_min_consumer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_graph_def_version_min_producer() -> int
	**/
	static public function get_graph_def_version_min_producer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_monolithic_build() -> int
	**/
	static public function get_monolithic_build(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_tensor_handle_key() -> str
	**/
	static public function get_tensor_handle_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_version() -> str
	**/
	static public function get_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}