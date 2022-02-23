/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore") extern class QtCore_Module {
	static public var PYQT_CONFIGURATION : Dynamic;
	static public var PYQT_VERSION : Dynamic;
	static public var PYQT_VERSION_STR : Dynamic;
	/**
		QT_TRANSLATE_NOOP(str, str) -> str
	**/
	static public function QT_TRANSLATE_NOOP(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QT_TR_NOOP(str) -> str
	**/
	static public function QT_TR_NOOP(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QT_TR_NOOP_UTF8(str) -> str
	**/
	static public function QT_TR_NOOP_UTF8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var QT_VERSION : Dynamic;
	static public var QT_VERSION_STR : Dynamic;
	/**
		Q_ARG(object, object) -> QGenericArgument
	**/
	static public function Q_ARG(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_CLASSINFO(str, str)
	**/
	static public function Q_CLASSINFO(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_ENUM(Union[type, enum.Enum])
	**/
	static public function Q_ENUM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_ENUMS(*)
	**/
	static public function Q_ENUMS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_FLAG(Union[type, enum.Enum])
	**/
	static public function Q_FLAG(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_FLAGS(*)
	**/
	static public function Q_FLAGS(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Q_RETURN_ARG(object) -> QGenericReturnArgument
	**/
	static public function Q_RETURN_ARG(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var QtCriticalMsg : Dynamic;
	static public var QtDebugMsg : Dynamic;
	static public var QtFatalMsg : Dynamic;
	static public var QtInfoMsg : Dynamic;
	static public var QtSystemMsg : Dynamic;
	static public var QtWarningMsg : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		bin_(QTextStream) -> QTextStream
	**/
	static public function bin_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bom(QTextStream) -> QTextStream
	**/
	static public function bom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		center(QTextStream) -> QTextStream
	**/
	static public function center(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dec(QTextStream) -> QTextStream
	**/
	static public function dec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		endl(QTextStream) -> QTextStream
	**/
	static public function endl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fixed(QTextStream) -> QTextStream
	**/
	static public function fixed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flush(QTextStream) -> QTextStream
	**/
	static public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		forcepoint(QTextStream) -> QTextStream
	**/
	static public function forcepoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		forcesign(QTextStream) -> QTextStream
	**/
	static public function forcesign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hex_(QTextStream) -> QTextStream
	**/
	static public function hex_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		left(QTextStream) -> QTextStream
	**/
	static public function left(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lowercasebase(QTextStream) -> QTextStream
	**/
	static public function lowercasebase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lowercasedigits(QTextStream) -> QTextStream
	**/
	static public function lowercasedigits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		noforcepoint(QTextStream) -> QTextStream
	**/
	static public function noforcepoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		noforcesign(QTextStream) -> QTextStream
	**/
	static public function noforcesign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		noshowbase(QTextStream) -> QTextStream
	**/
	static public function noshowbase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		oct_(QTextStream) -> QTextStream
	**/
	static public function oct_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyqtPickleProtocol() -> Optional[int]
	**/
	static public function pyqtPickleProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyqtRemoveInputHook()
	**/
	static public function pyqtRemoveInputHook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyqtRestoreInputHook()
	**/
	static public function pyqtRestoreInputHook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyqtSetPickleProtocol(Optional[int])
	**/
	static public function pyqtSetPickleProtocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		@pyqtSlot(*types, name: Optional[str], result: Optional[str])
		
		This is a decorator applied to Python methods of a QObject that marks them
		as Qt slots.
		The non-keyword arguments are the types of the slot arguments and each may
		be a Python type object or a string specifying a C++ type.
		name is the name of the slot and defaults to the name of the method.
		result is type of the value returned by the slot.
	**/
	static public function pyqtSlot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qAbs(float) -> float
	**/
	static public function qAbs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qAddPostRoutine(Callable[..., None])
	**/
	static public function qAddPostRoutine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qAddPreRoutine(Callable[[], None])
	**/
	static public function qAddPreRoutine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qChecksum(bytes) -> int
		qChecksum(bytes, Qt.ChecksumType) -> int
	**/
	static public function qChecksum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qCompress(Union[QByteArray, bytes, bytearray], compressionLevel: int = -1) -> QByteArray
	**/
	static public function qCompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qCritical(str)
	**/
	static public function qCritical(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qDebug(str)
	**/
	static public function qDebug(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qEnvironmentVariable(str) -> str
		qEnvironmentVariable(str, str) -> str
	**/
	static public function qEnvironmentVariable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qErrnoWarning(int, str)
		qErrnoWarning(str)
	**/
	static public function qErrnoWarning(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qFatal(str)
	**/
	static public function qFatal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qFloatDistance(float, float) -> int
	**/
	static public function qFloatDistance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qFormatLogMessage(QtMsgType, QMessageLogContext, str) -> str
	**/
	static public function qFormatLogMessage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qFuzzyCompare(float, float) -> bool
	**/
	static public function qFuzzyCompare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qInf() -> float
	**/
	static public function qInf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qInfo(str)
	**/
	static public function qInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qInstallMessageHandler(Optional[Callable[[QtMsgType, QMessageLogContext, str], None]]) -> Optional[Callable[[QtMsgType, QMessageLogContext, str], None]]
	**/
	static public function qInstallMessageHandler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qIsFinite(float) -> bool
	**/
	static public function qIsFinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qIsInf(float) -> bool
	**/
	static public function qIsInf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qIsNaN(float) -> bool
	**/
	static public function qIsNaN(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qIsNull(float) -> bool
	**/
	static public function qIsNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qQNaN() -> float
	**/
	static public function qQNaN(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qRegisterResourceData(int, bytes, bytes, bytes) -> bool
	**/
	static public function qRegisterResourceData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qRemovePostRoutine(Callable[..., None])
	**/
	static public function qRemovePostRoutine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qRound(float) -> int
	**/
	static public function qRound(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qRound64(float) -> int
	**/
	static public function qRound64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSNaN() -> float
	**/
	static public function qSNaN(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSetFieldWidth(int) -> QTextStreamManipulator
	**/
	static public function qSetFieldWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSetMessagePattern(str)
	**/
	static public function qSetMessagePattern(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSetPadChar(str) -> QTextStreamManipulator
	**/
	static public function qSetPadChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSetRealNumberPrecision(int) -> QTextStreamManipulator
	**/
	static public function qSetRealNumberPrecision(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qSharedBuild() -> bool
	**/
	static public function qSharedBuild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qUncompress(Union[QByteArray, bytes, bytearray]) -> QByteArray
	**/
	static public function qUncompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qUnregisterResourceData(int, bytes, bytes, bytes) -> bool
	**/
	static public function qUnregisterResourceData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qVersion() -> str
	**/
	static public function qVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qWarning(str)
	**/
	static public function qWarning(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qrand() -> int
	**/
	static public function qrand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qsrand(int)
	**/
	static public function qsrand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reset(QTextStream) -> QTextStream
	**/
	static public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		right(QTextStream) -> QTextStream
	**/
	static public function right(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scientific(QTextStream) -> QTextStream
	**/
	static public function scientific(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		showbase(QTextStream) -> QTextStream
	**/
	static public function showbase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uppercasebase(QTextStream) -> QTextStream
	**/
	static public function uppercasebase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uppercasedigits(QTextStream) -> QTextStream
	**/
	static public function uppercasedigits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ws(QTextStream) -> QTextStream
	**/
	static public function ws(args:haxe.extern.Rest<Dynamic>):Dynamic;
}