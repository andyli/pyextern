/* This file is generated, do not edit! */
package tensorflow.python.pywrap_tfe;
@:pythonImport("tensorflow.python.pywrap_tfe") extern class Pywrap_tfe_Module {
	/**
		TFE_AbortCollectiveOps(arg0: handle, arg1: int, arg2: str) -> None
	**/
	static public function TFE_AbortCollectiveOps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_CancellationManagerIsCancelled(arg0: tensorflow.python._pywrap_tfe.TFE_CancellationManager) -> bool
	**/
	static public function TFE_CancellationManagerIsCancelled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_CancellationManagerStartCancel(arg0: tensorflow.python._pywrap_tfe.TFE_CancellationManager) -> None
	**/
	static public function TFE_CancellationManagerStartCancel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ClearScalarCache() -> object
	**/
	static public function TFE_ClearScalarCache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_CollectiveOpsCheckPeerHealth(arg0: handle, arg1: str, arg2: int) -> None
	**/
	static public function TFE_CollectiveOpsCheckPeerHealth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextAddFunction(arg0: handle, arg1: tensorflow.python._pywrap_tfe.TF_Function) -> None
	**/
	static public function TFE_ContextAddFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextAddFunctionDef(arg0: handle, arg1: str, arg2: int) -> None
	**/
	static public function TFE_ContextAddFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextCheckAlive(arg0: handle, arg1: str) -> bool
	**/
	static public function TFE_ContextCheckAlive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextClearCaches(arg0: handle) -> None
	**/
	static public function TFE_ContextClearCaches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextClearExecutors(arg0: handle) -> None
	**/
	static public function TFE_ContextClearExecutors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextDisableGraphCollection(arg0: handle) -> None
	**/
	static public function TFE_ContextDisableGraphCollection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextDisableRunMetadata(arg0: handle) -> None
	**/
	static public function TFE_ContextDisableRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextEnableGraphCollection(arg0: handle) -> None
	**/
	static public function TFE_ContextEnableGraphCollection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextEnableRunMetadata(arg0: handle) -> None
	**/
	static public function TFE_ContextEnableRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextExportRunMetadata(arg0: handle, arg1: TF_Buffer) -> None
	**/
	static public function TFE_ContextExportRunMetadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextGetDevicePlacementPolicy(arg0: handle) -> TFE_ContextDevicePlacementPolicy
	**/
	static public function TFE_ContextGetDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextGetExecutorForThread(arg0: handle) -> tensorflow.python._pywrap_tfe.TFE_Executor
	**/
	static public function TFE_ContextGetExecutorForThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextGetFunctionDef(arg0: handle, arg1: str, arg2: TF_Buffer) -> None
	**/
	static public function TFE_ContextGetFunctionDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextHasFunction(arg0: handle, arg1: str) -> int
	**/
	static public function TFE_ContextHasFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextListDevices(arg0: handle) -> tensorflow.python._pywrap_tfe.TF_DeviceList
	**/
	static public function TFE_ContextListDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextListFunctionNames(arg0: handle) -> List[str]
	**/
	static public function TFE_ContextListFunctionNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetAsync(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: int) -> None
	**/
	static public function TFE_ContextOptionsSetAsync(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetConfig(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: bytes) -> None
	**/
	static public function TFE_ContextOptionsSetConfig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetDevicePlacementPolicy(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: TFE_ContextDevicePlacementPolicy) -> None
	**/
	static public function TFE_ContextOptionsSetDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetRunEagerOpAsFunction(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: bool) -> None
	**/
	static public function TFE_ContextOptionsSetRunEagerOpAsFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetTfrt(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: bool) -> None
	**/
	static public function TFE_ContextOptionsSetTfrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextOptionsSetTfrtDistributedRuntime(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions, arg1: bool) -> None
	**/
	static public function TFE_ContextOptionsSetTfrtDistributedRuntime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextRemoveFunction(arg0: handle, arg1: str) -> None
	**/
	static public function TFE_ContextRemoveFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSetExecutorForThread(arg0: handle, arg1: tensorflow.python._pywrap_tfe.TFE_Executor) -> None
	**/
	static public function TFE_ContextSetExecutorForThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSetLogDevicePlacement(arg0: handle, arg1: bool) -> None
	**/
	static public function TFE_ContextSetLogDevicePlacement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSetServerDef(arg0: handle, arg1: int, arg2: bytes) -> None
	**/
	static public function TFE_ContextSetServerDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSetSoftDevicePlacement(arg0: handle, arg1: bool) -> None
	**/
	static public function TFE_ContextSetSoftDevicePlacement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSetThreadLocalDevicePlacementPolicy(arg0: handle, arg1: TFE_ContextDevicePlacementPolicy) -> None
	**/
	static public function TFE_ContextSetThreadLocalDevicePlacementPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextSyncExecutors(arg0: handle) -> None
	**/
	static public function TFE_ContextSyncExecutors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ContextUpdateServerDef(arg0: handle, arg1: int, arg2: bytes) -> None
	**/
	static public function TFE_ContextUpdateServerDef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TFE_DEVICE_PLACEMENT_EXPLICIT : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_SILENT : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_SILENT_FOR_INT32 : Dynamic;
	static public var TFE_DEVICE_PLACEMENT_WARN : Dynamic;
	/**
		TFE_DeleteConfigKeyValue(arg0: handle, arg1: str) -> None
	**/
	static public function TFE_DeleteConfigKeyValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_DeleteContext(arg0: handle) -> None
	**/
	static public function TFE_DeleteContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_DeleteContextOptions(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions) -> None
	**/
	static public function TFE_DeleteContextOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_DeleteExecutor(arg0: tensorflow.python._pywrap_tfe.TFE_Executor) -> None
	**/
	static public function TFE_DeleteExecutor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_EnableCollectiveOps(arg0: handle, arg1: bytes) -> None
	**/
	static public function TFE_EnableCollectiveOps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ExecutorClearError(arg0: tensorflow.python._pywrap_tfe.TFE_Executor) -> None
	**/
	static public function TFE_ExecutorClearError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ExecutorIsAsync(arg0: tensorflow.python._pywrap_tfe.TFE_Executor) -> bool
	**/
	static public function TFE_ExecutorIsAsync(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ExecutorWaitForAllPendingNodes(arg0: tensorflow.python._pywrap_tfe.TFE_Executor) -> None
	**/
	static public function TFE_ExecutorWaitForAllPendingNodes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_FromDlpackCapsule(arg0: capsule, arg1: handle) -> object
	**/
	static public function TFE_FromDlpackCapsule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_GetConfigKeyValue(arg0: handle, arg1: str, arg2: TF_Buffer) -> None
	**/
	static public function TFE_GetConfigKeyValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_GetContextId(arg0: handle) -> int
	**/
	static public function TFE_GetContextId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_GetMemoryInfo(arg0: handle, arg1: str) -> Dict[str, int]
	**/
	static public function TFE_GetMemoryInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_HostAddressSpace(arg0: handle, arg1: TF_Buffer) -> None
	**/
	static public function TFE_HostAddressSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_InsertConfigKeyValue(arg0: handle, arg1: str, arg2: str) -> None
	**/
	static public function TFE_InsertConfigKeyValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringBoolGaugeCellSet(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGaugeCell, arg1: bool) -> None
	**/
	static public function TFE_MonitoringBoolGaugeCellSet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringBoolGaugeCellValue(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGaugeCell) -> bool
	**/
	static public function TFE_MonitoringBoolGaugeCellValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringCounterCellIncrementBy(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounterCell, arg1: int) -> None
	**/
	static public function TFE_MonitoringCounterCellIncrementBy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringCounterCellValue(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounterCell) -> int
	**/
	static public function TFE_MonitoringCounterCellValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteBoolGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge0) -> None
	**/
	static public function TFE_MonitoringDeleteBoolGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteBoolGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge1) -> None
	**/
	static public function TFE_MonitoringDeleteBoolGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteBoolGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge2) -> None
	**/
	static public function TFE_MonitoringDeleteBoolGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteBuckets(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBuckets) -> None
	**/
	static public function TFE_MonitoringDeleteBuckets(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteCounter0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter0) -> None
	**/
	static public function TFE_MonitoringDeleteCounter0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteCounter1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter1) -> None
	**/
	static public function TFE_MonitoringDeleteCounter1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteCounter2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter2) -> None
	**/
	static public function TFE_MonitoringDeleteCounter2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteIntGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge0) -> None
	**/
	static public function TFE_MonitoringDeleteIntGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteIntGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge1) -> None
	**/
	static public function TFE_MonitoringDeleteIntGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteIntGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge2) -> None
	**/
	static public function TFE_MonitoringDeleteIntGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteSampler0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler0) -> None
	**/
	static public function TFE_MonitoringDeleteSampler0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteSampler1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler1) -> None
	**/
	static public function TFE_MonitoringDeleteSampler1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteSampler2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler2) -> None
	**/
	static public function TFE_MonitoringDeleteSampler2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteStringGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge0) -> None
	**/
	static public function TFE_MonitoringDeleteStringGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteStringGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge1) -> None
	**/
	static public function TFE_MonitoringDeleteStringGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteStringGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge2) -> None
	**/
	static public function TFE_MonitoringDeleteStringGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteStringGauge3(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge3) -> None
	**/
	static public function TFE_MonitoringDeleteStringGauge3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringDeleteStringGauge4(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge4) -> None
	**/
	static public function TFE_MonitoringDeleteStringGauge4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellBoolGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge0) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGaugeCell
	**/
	static public function TFE_MonitoringGetCellBoolGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellBoolGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge1, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGaugeCell
	**/
	static public function TFE_MonitoringGetCellBoolGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellBoolGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge2, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGaugeCell
	**/
	static public function TFE_MonitoringGetCellBoolGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellCounter0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter0) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounterCell
	**/
	static public function TFE_MonitoringGetCellCounter0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellCounter1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter1, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounterCell
	**/
	static public function TFE_MonitoringGetCellCounter1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellCounter2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringCounter2, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounterCell
	**/
	static public function TFE_MonitoringGetCellCounter2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellIntGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge0) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGaugeCell
	**/
	static public function TFE_MonitoringGetCellIntGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellIntGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge1, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGaugeCell
	**/
	static public function TFE_MonitoringGetCellIntGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellIntGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge2, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGaugeCell
	**/
	static public function TFE_MonitoringGetCellIntGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellSampler0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler0) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSamplerCell
	**/
	static public function TFE_MonitoringGetCellSampler0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellSampler1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler1, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSamplerCell
	**/
	static public function TFE_MonitoringGetCellSampler1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellSampler2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSampler2, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSamplerCell
	**/
	static public function TFE_MonitoringGetCellSampler2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellStringGauge0(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge0) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell
	**/
	static public function TFE_MonitoringGetCellStringGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellStringGauge1(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge1, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell
	**/
	static public function TFE_MonitoringGetCellStringGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellStringGauge2(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge2, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell
	**/
	static public function TFE_MonitoringGetCellStringGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellStringGauge3(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge3, arg1: str, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell
	**/
	static public function TFE_MonitoringGetCellStringGauge3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringGetCellStringGauge4(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge4, arg1: str, arg2: str, arg3: str, arg4: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell
	**/
	static public function TFE_MonitoringGetCellStringGauge4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringIntGaugeCellSet(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGaugeCell, arg1: int) -> None
	**/
	static public function TFE_MonitoringIntGaugeCellSet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringIntGaugeCellValue(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringIntGaugeCell) -> int
	**/
	static public function TFE_MonitoringIntGaugeCellValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewBoolGauge0(arg0: str, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge0
	**/
	static public function TFE_MonitoringNewBoolGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewBoolGauge1(arg0: str, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge1
	**/
	static public function TFE_MonitoringNewBoolGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewBoolGauge2(arg0: str, arg1: str, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBoolGauge2
	**/
	static public function TFE_MonitoringNewBoolGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewCounter0(arg0: str, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounter0
	**/
	static public function TFE_MonitoringNewCounter0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewCounter1(arg0: str, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounter1
	**/
	static public function TFE_MonitoringNewCounter1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewCounter2(arg0: str, arg1: str, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringCounter2
	**/
	static public function TFE_MonitoringNewCounter2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewExponentialBuckets(arg0: float, arg1: float, arg2: int) -> tensorflow.python._pywrap_tfe.TFE_MonitoringBuckets
	**/
	static public function TFE_MonitoringNewExponentialBuckets(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewIntGauge0(arg0: str, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge0
	**/
	static public function TFE_MonitoringNewIntGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewIntGauge1(arg0: str, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge1
	**/
	static public function TFE_MonitoringNewIntGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewIntGauge2(arg0: str, arg1: str, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringIntGauge2
	**/
	static public function TFE_MonitoringNewIntGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewSampler0(arg0: str, arg1: tensorflow.python._pywrap_tfe.TFE_MonitoringBuckets, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSampler0
	**/
	static public function TFE_MonitoringNewSampler0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewSampler1(arg0: str, arg1: tensorflow.python._pywrap_tfe.TFE_MonitoringBuckets, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSampler1
	**/
	static public function TFE_MonitoringNewSampler1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewSampler2(arg0: str, arg1: tensorflow.python._pywrap_tfe.TFE_MonitoringBuckets, arg2: str, arg3: str, arg4: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringSampler2
	**/
	static public function TFE_MonitoringNewSampler2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewStringGauge0(arg0: str, arg1: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge0
	**/
	static public function TFE_MonitoringNewStringGauge0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewStringGauge1(arg0: str, arg1: str, arg2: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge1
	**/
	static public function TFE_MonitoringNewStringGauge1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewStringGauge2(arg0: str, arg1: str, arg2: str, arg3: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge2
	**/
	static public function TFE_MonitoringNewStringGauge2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewStringGauge3(arg0: str, arg1: str, arg2: str, arg3: str, arg4: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge3
	**/
	static public function TFE_MonitoringNewStringGauge3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringNewStringGauge4(arg0: str, arg1: str, arg2: str, arg3: str, arg4: str, arg5: str) -> tensorflow.python._pywrap_tfe.TFE_MonitoringStringGauge4
	**/
	static public function TFE_MonitoringNewStringGauge4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringSamplerCellAdd(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSamplerCell, arg1: float) -> None
	**/
	static public function TFE_MonitoringSamplerCellAdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringSamplerCellValue(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringSamplerCell, arg1: TF_Buffer) -> None
	**/
	static public function TFE_MonitoringSamplerCellValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringStringGaugeCellSet(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell, arg1: str) -> None
	**/
	static public function TFE_MonitoringStringGaugeCellSet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_MonitoringStringGaugeCellValue(arg0: tensorflow.python._pywrap_tfe.TFE_MonitoringStringGaugeCell, arg1: TF_Buffer) -> None
	**/
	static public function TFE_MonitoringStringGaugeCellValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_NewCancellationManager() -> tensorflow.python._pywrap_tfe.TFE_CancellationManager
	**/
	static public function TFE_NewCancellationManager(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_NewContext(arg0: tensorflow.python._pywrap_tfe.TFE_ContextOptions) -> object
	**/
	static public function TFE_NewContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_NewContextOptions() -> tensorflow.python._pywrap_tfe.TFE_ContextOptions
	**/
	static public function TFE_NewContextOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_NewExecutor(arg0: bool) -> tensorflow.python._pywrap_tfe.TFE_Executor
	**/
	static public function TFE_NewExecutor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_OpNameGetAttrType(arg0: handle, arg1: str, arg2: str) -> object
	**/
	static public function TFE_OpNameGetAttrType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_EnableInteractivePythonLogging() -> None
	**/
	static public function TFE_Py_EnableInteractivePythonLogging(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_EncodeArg(arg0: handle, arg1: bool, arg2: bool) -> object
	**/
	static public function TFE_Py_EncodeArg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_Execute(arg0: handle, arg1: str, arg2: str, arg3: handle, arg4: handle, arg5: handle) -> object
	**/
	static public function TFE_Py_Execute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ExecuteCancelable(arg0: handle, arg1: str, arg2: str, arg3: handle, arg4: handle, arg5: tensorflow.python._pywrap_tfe.TFE_CancellationManager, arg6: handle) -> object
	**/
	static public function TFE_Py_ExecuteCancelable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_FastPathExecute(*args) -> object
	**/
	static public function TFE_Py_FastPathExecute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorJVP(arg0: handle, arg1: handle) -> object
	**/
	static public function TFE_Py_ForwardAccumulatorJVP(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorNew(arg0: bool) -> object
	**/
	static public function TFE_Py_ForwardAccumulatorNew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorPopState() -> object
	**/
	static public function TFE_Py_ForwardAccumulatorPopState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorPushState() -> object
	**/
	static public function TFE_Py_ForwardAccumulatorPushState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorSetAdd(arg0: handle) -> object
	**/
	static public function TFE_Py_ForwardAccumulatorSetAdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorSetRemove(arg0: handle) -> None
	**/
	static public function TFE_Py_ForwardAccumulatorSetRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_ForwardAccumulatorWatch(arg0: handle, arg1: handle, arg2: handle) -> None
	**/
	static public function TFE_Py_ForwardAccumulatorWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_InitEagerTensor(arg0: handle) -> object
	**/
	static public function TFE_Py_InitEagerTensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_PackEagerTensors(arg0: handle, arg1: handle) -> object
	**/
	static public function TFE_Py_PackEagerTensors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_PackJVPs(arg0: handle) -> object
	**/
	static public function TFE_Py_PackJVPs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RecordGradient(arg0: handle, arg1: handle, arg2: handle, arg3: handle, arg4: handle) -> object
	**/
	static public function TFE_Py_RecordGradient(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterCustomDevice(arg0: handle, arg1: capsule, arg2: str, arg3: capsule) -> None
	**/
	static public function TFE_Py_RegisterCustomDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterExceptionClass(arg0: handle) -> object
	**/
	static public function TFE_Py_RegisterExceptionClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterFallbackExceptionClass(arg0: handle) -> object
	**/
	static public function TFE_Py_RegisterFallbackExceptionClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterGradientFunction(arg0: handle) -> object
	**/
	static public function TFE_Py_RegisterGradientFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterJVPFunction(arg0: handle) -> object
	**/
	static public function TFE_Py_RegisterJVPFunction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_RegisterVSpace(arg0: handle) -> object
	**/
	static public function TFE_Py_RegisterVSpace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_SetEagerContext(arg0: handle) -> object
	**/
	static public function TFE_Py_SetEagerContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_SetEagerTensorProfiler(arg0: _object) -> _object
	**/
	static public function TFE_Py_SetEagerTensorProfiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeGradient(arg0: handle, arg1: handle, arg2: handle, arg3: handle, arg4: handle, arg5: handle) -> object
	**/
	static public function TFE_Py_TapeGradient(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetAdd(arg0: handle) -> None
	**/
	static public function TFE_Py_TapeSetAdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetDeleteTrace(arg0: int) -> None
	**/
	static public function TFE_Py_TapeSetDeleteTrace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetIsEmpty() -> object
	**/
	static public function TFE_Py_TapeSetIsEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetIsStopped() -> object
	**/
	static public function TFE_Py_TapeSetIsStopped(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetNew(arg0: handle, arg1: handle) -> object
	**/
	static public function TFE_Py_TapeSetNew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetPossibleGradientTypes(arg0: handle) -> object
	**/
	static public function TFE_Py_TapeSetPossibleGradientTypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetRecordOperation(arg0: handle, arg1: handle, arg2: handle, arg3: handle, arg4: handle) -> object
	**/
	static public function TFE_Py_TapeSetRecordOperation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetRecordOperationBackprop(arg0: handle, arg1: handle, arg2: handle, arg3: handle) -> object
	**/
	static public function TFE_Py_TapeSetRecordOperationBackprop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetRecordOperationForwardprop(arg0: handle, arg1: handle, arg2: handle, arg3: handle, arg4: handle) -> object
	**/
	static public function TFE_Py_TapeSetRecordOperationForwardprop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetRemove(arg0: handle) -> None
	**/
	static public function TFE_Py_TapeSetRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetRestartOnThread() -> None
	**/
	static public function TFE_Py_TapeSetRestartOnThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetShouldRecordBackprop(arg0: handle) -> object
	**/
	static public function TFE_Py_TapeSetShouldRecordBackprop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeSetStopOnThread() -> None
	**/
	static public function TFE_Py_TapeSetStopOnThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeVariableAccessed(arg0: handle) -> None
	**/
	static public function TFE_Py_TapeVariableAccessed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeWatch(arg0: handle, arg1: handle) -> None
	**/
	static public function TFE_Py_TapeWatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeWatchVariable(arg0: handle, arg1: handle) -> None
	**/
	static public function TFE_Py_TapeWatchVariable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TapeWatchedVariables(arg0: handle) -> object
	**/
	static public function TFE_Py_TapeWatchedVariables(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TensorShapeOnDevice(arg0: handle, arg1: int) -> object
	**/
	static public function TFE_Py_TensorShapeOnDevice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_TensorShapeSlice(arg0: handle, arg1: int) -> object
	**/
	static public function TFE_Py_TensorShapeSlice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_UID() -> object
	**/
	static public function TFE_Py_UID(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_VariableWatcherNew() -> object
	**/
	static public function TFE_Py_VariableWatcherNew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_VariableWatcherRemove(arg0: handle) -> None
	**/
	static public function TFE_Py_VariableWatcherRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_VariableWatcherVariableAccessed(arg0: handle) -> None
	**/
	static public function TFE_Py_VariableWatcherVariableAccessed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_Py_VariableWatcherWatchedVariables(arg0: handle) -> object
	**/
	static public function TFE_Py_VariableWatcherWatchedVariables(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ReportErrorToCluster(arg0: handle, arg1: int, arg2: str) -> None
	**/
	static public function TFE_ReportErrorToCluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ResetMemoryStats(arg0: handle, arg1: str) -> None
	**/
	static public function TFE_ResetMemoryStats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_SetLogicalCpuDevices(arg0: handle, arg1: int, arg2: str) -> None
	**/
	static public function TFE_SetLogicalCpuDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TFE_ToDlpackCapsule(arg0: handle) -> capsule
	**/
	static public function TFE_ToDlpackCapsule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TF_ATTR_BOOL : Dynamic;
	static public var TF_ATTR_FLOAT : Dynamic;
	static public var TF_ATTR_FUNC : Dynamic;
	static public var TF_ATTR_INT : Dynamic;
	static public var TF_ATTR_PLACEHOLDER : Dynamic;
	static public var TF_ATTR_SHAPE : Dynamic;
	static public var TF_ATTR_STRING : Dynamic;
	static public var TF_ATTR_TENSOR : Dynamic;
	static public var TF_ATTR_TYPE : Dynamic;
	/**
		TF_DeleteDeviceList(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList) -> None
	**/
	static public function TF_DeleteDeviceList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListCount(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList) -> int
	**/
	static public function TF_DeviceListCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListName(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> str
	**/
	static public function TF_DeviceListName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_DeviceListType(arg0: tensorflow.python._pywrap_tfe.TF_DeviceList, arg1: int) -> str
	**/
	static public function TF_DeviceListType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_EnableMlirBridge(arg0: bool) -> None
	**/
	static public function TF_EnableMlirBridge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_EnableXlaDevices() -> None
	**/
	static public function TF_EnableXlaDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetCompilerIr(arg0: handle, arg1: str, arg2: str, arg3: str, arg4: handle) -> bytes
	**/
	static public function TF_GetCompilerIr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetDeviceDetails(arg0: int) -> Dict[str, str]
	**/
	static public function TF_GetDeviceDetails(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_GetXlaConstantFoldingDisabled() -> int
	**/
	static public function TF_GetXlaConstantFoldingDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_IsMlirBridgeEnabled() -> int
	**/
	static public function TF_IsMlirBridgeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ListPhysicalDevices() -> object
	**/
	static public function TF_ListPhysicalDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_ListPluggablePhysicalDevices() -> object
	**/
	static public function TF_ListPluggablePhysicalDevices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_NewBufferFromString(arg0: capsule, arg1: int) -> TF_Buffer
	**/
	static public function TF_NewBufferFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_PickUnusedPortOrDie() -> int
	**/
	static public function TF_PickUnusedPortOrDie(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetTfXlaCpuGlobalJit(arg0: int) -> int
	**/
	static public function TF_SetTfXlaCpuGlobalJit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TF_SetXlaAutoJitMode(arg0: str) -> None
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
	static public var print_function : Dynamic;
}