package facebook;

import cpp.Float32;
import facebook.yoga.*;

using facebook.yoga.Enums;


@:include('linc_yoga.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('yoga'))
#end

//Yoga
extern class Yoga {
	public inline static final Undefined:Float32 = 1e+21;

	#if android 
	@:native('::YGAndroidLog')
	public static function androidLog(config:Config, node:Node, level:LogLevel, format:String, args:Dynamic):Void;
	#end

	@:native('::YGDebugLog')
	public static function debugLog(config:Config, node:Node, level:LogLevel, format:String, args:Dynamic):Void;


	@:native('::YGFloatIsUndefined')
	public static function floatIsUndefined(value:Float):Bool; 

	@:native('::YGComputedEdgeValue')
	public static function computedEdgeValue(edges:Array<Edge>, edge:Edge, defaultValue:Value):Value;

	
	//NODE

	@:native('::YGNodeNew')
	public static function newNode():Node;

	@:native('::YGNodeNewWithConfig')
	public static function newNodeWithConfig(config:Config):Node;
	
	@:native('::YGNodeClone')
	public static function nodeClone(node:Node):Node;

	@:native('::YGNodeFree')
	public static function nodeFree(node:Node):Void;	

	@:native('::YGNodeFreeRecursive')
	public static function nodeFreeRecursive(node:Node):Void;	

	@:native('::YGNodeReset')
	public static function nodeReset(node:Node):Void;

	@:native('::YGNodeGetInstanceCount')
	public static function nodeGetInstanceCount():Int;

	@:native('::YGNodeInsertChild')
	public static function nodeInsertChild(node:Node, child:Node, index:Int):Void;

	@:native('::YGNodeInsertSharedChild')
	public static function nodeInsertSharedChild(node:Node, child:Node, index:Int):Void;

	@:native('::YGNodeRemoveChild')
	public static function nodeRemoveChild(node:Node, child:Node):Void;

	@:native('::YGNodeRemoveAllChild')
	public static function nodeRemoveAllChild(node:Node):Void;	

	@:native('::YGNodeGetChild')
	public static function nodeGetChild(node:Node, index:Int):Node;	

	@:native('::YGNodeGetOwner')
	public static function nodeGetOwner(node:Node):Node;	

	@:native('::YGNodeGetParent')
	public static function nodeGetParent(node:Node):Node;

	@:native('::YGNodeGetChildCount')
	public static function nodeGetChildCount(node:Node):Int;

	@:native('::YGNodeSetChildren')	
	public static function nodeSetChildren(owner:Node, children:Array<Node>, count:Int):Void;

	@:native('::YGNodeCalculateLayout')
	public static function nodeCalculateLayout(node:Node, availableWidth:Float, availableHeight:Float, ownerDirection:Direction):Void;

	@:native('::YGNodeMarkDirty')
	public static function nodeMarkDirty(node:Node):Void;

	@:native('::YGNodeMarkDirtyAndPropogateToDescendants')
	public static function nodeMarkDirtyAndPropogateToDescendants(node:Node):Void;

	@:native('::YGNodePrint')
	public static function nodePrint(node:Node, options:PrintOptions):Void;

	@:native('::YGNodeCanUseCachedMeasurement')
	public static function nodeCanUseCachedMeasurement(
		widthMode:MeasureMode, 
		width:Float,
		heightMode:MeasureMode,
		height:Float,
		lastWidthMode:MeasureMode,
		lastWidth:Float,
		lastHeightMode:MeasureMode,
		lastHeight:Float,
		lastComputedWidth:Float,
		lastComputedHeight:Float,
		marginRow:Float,
		marginColumn:Float,
		config:Config):Bool;

	@:native('::YGNodeCopyStyle')
	public static function nodeCopyStyle(dstNode:Node, srcNode:Node):Void;


	@:native('::YGNodeGetContext')
	public static function nodeGetContext(node:Node):Dynamic;

	@:native('::YGNodeSetContext')
	public static function nodeSetContext(node:Node, context:Dynamic):Void;

	@:native('::YGNodeGetMeasureFunc')	
	public static function nodeGetMeasureFunc(node:Node):MeasureFunc;


	@:native('::YGNodeSetMeasureFunc')	
	public static function nodeSetMeasureFunc(node:Node, measureFunc:MeasureFunc):Void;

	@:native('::YGNodeGetBaselineFunc')	
	public static function nodeGetBaselineFunc(node:Node):BaseLineFunc;


	@:native('::YGNodeSetBaselineFunc')	
	public static function nodeSetBaselineFunc(node:Node, baselineFunc:BaseLineFunc):Void;


	@:native('::YGNodeGetDirtiedFunc')	
	public static function nodeGetDirtiedFunc(node:Node):DirtiedFunc;


	@:native('::YGNodeSeDirtiedFunc')	
	public static function nodeSetDirtiedFunc(node:Node, dirtiedFunc:DirtiedFunc):Void;

	@:native('::YGNodeGetHasNewLayout')
	public static function nodeGetHasNewLayout(node:Node):Bool;

	@:native('::YGNodeSetHasNewLayout')
	public static function nodeSetHasNewLayout(node:Node, hasNewLayout:Bool):Void;	

	@:native('::YGNodeGetNodeType')
	public static function nodeGetNodeType(node:Node):NodeType;

	@:native('::YGNodeSetNodeType')
	public static function nodeSetNodeType(node:Node, nodeType:NodeType):Void;

	@:native('::YGNodeIsDirty')
	public static function nodeIsDirty(node:Node):Bool;

	@:native('::YGNodeLayoutGetDidUseLegacyFlag')
	public static function nodeLayoutGetDidUseLegacyFlag(node:Node):Bool;

	@:native('::YGNodeLayoutGetDidLegacyStretchFlagAffectLayout')
	public static function nodeLayoutGetDidLegacyStretchFlagAffectLayout(node:Node):Bool;


	@:native('::YGConfigSetLogger')
	public static function configSetLogger(config:Config, logger:Dynamic):Void;

	@:native('::YGLog')
	public static function log(node:Node, level:LogLevel, message:String, args:Dynamic):Void;

	@:native('::YGLogWithConfig')
	public static function logWithConfig(config:Config, level:LogLevel, format:String, args:Dynamic):Void;

	@:native('::YGAssert')
	public static function assert(condition:Bool, message:String):Void;

	@:native('::YGAssertWithNode')
	public static function assertWithNode(node:Node, condition:Bool, message:String):Void;

	@:native('::YGAssertWithConfig')
	public static function assertWithConfig(config:Config, condition:Bool, message:String):Void;

	@:native('::YGConfigSetPointScaleFactor')
	public static function configSetPointScaleFactor(config:Config, pixelIsPoint:Float):Void;

	@:native('::YGConfigSetShouldDiffLayoutWithoutLegacyStretchBehaviour')	
	public static function configSetShouldDiffLayoutWithoutLegacyStretchBehaviour(config:Config, shouldDiffLayout:Bool):Void;

	@:native('::YGConfigSetUseLegacyStretchBehaviour')
	public static function configSetUseLegacyStretchBehaviour(config:Config, useLegacyStretchBehaviour:Bool):Void;


	//CONFIG

	@:native('::YGConfigNew')
	public static function newConfig():Config;

	@:native('::YGConfigFree')
	public static function configFree(config:Config):Void;

	@:native('::YGConfigCopy')
	public static function configCopy(dest:Config, src:Config):Void;

	@:native('::YGConfigGetInstanceCount')
	public static function configGetInstanceCount():Int;

	@:native('::YGConfigSetExperimentalFeatureEnabled')
	public static function configSetExperimentalFeatureEnabled(config:Config, feature:ExperimentalFeature, enabled:Bool):Bool;

	@:native('::YGConfigSetUseWebDefaults')
	public static function configSetUseWebDefaults(config:Config, enabled:Bool):Void;

	@:native('::YGConfigGetUseWebDefaults')
	public static function configGetUseWebDefaults(config:Config):Bool;

	@:native('::YGConfigSetCloneNodeFunc')
	public static function configSetCloneNodeFunc(config:Config, context:Dynamic):Void;

	#if cs
	@:native('::YGConfigGetDefault')
	public static function configGetDefault():Config;
	#end

	@:native('::YGConfigSetContext')
	public static function configSetContext(config:Config, context:Dynamic):Void;

	@:native('::YGConfigGetContext')
	public static function configGetContext(config:Config):Bool;

	@:native('::YGRoundValueToPixelGrid')
	public static function roundValueToPixelGrid(value:Float, pointScaleFactor:Float, forceCell:Bool, forceFloor:Bool):Float;

	@:native('::YGTraversePreOrder')
	public static function traversePreOrder(node:Node, f:cpp.Callable<Node->Void>):Void;



	//internal 

	@:native('::YGValueEqual')
	public static function valueEqual(a:Value, b:Value):Bool;

	@:native('::YGValueArrayEqual')
	public static function valueArrayEqual(val1:Array<Value>, val2:Array<Value>):Bool;

	


} //Yoga