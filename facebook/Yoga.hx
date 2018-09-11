package facebook;

import cpp.Float32;
import facebook.yoga.*;

using facebook.yoga.Enums;

@:include('linc_yoga.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('yoga'))
#end
// Yoga
extern class Yoga {
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
	// NODE
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
	public static function nodeCanUseCachedMeasurement(widthMode:MeasureMode, width:Float, heightMode:MeasureMode, height:Float, lastWidthMode:MeasureMode,
		lastWidth:Float, lastHeightMode:MeasureMode, lastHeight:Float, lastComputedWidth:Float, lastComputedHeight:Float, marginRow:Float, marginColumn:Float,
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
	@:native('::YGNodeStyleSetDirection')
	public static function nodeStyleSetDirection(node:Node, direction:Direction):Void;
	@:native('::YGNodeStyleGetDirection')
	public static function nodeStyleGetDirection(node:Node):Direction;
	@:native('::YGNodeStyleSetFlexDirection')
	public static function nodeStyleSetFlexDirection(node:Node, flexDirection:FlexDirection):Void;
	@:native('::YGNodeStyleGetFlexDirection')
	public static function nodeStyleGetFlexDirection(node:Node):FlexDirection;
	@:native('::YGNodeStyleSetJustifyContent')
	public static function nodeStyleSetJustifyContent(node:Node, justifyContent:Justify):Void;
	@:native('::YGNodeStyleGetJustifyContent')
	public static function nodeStyleGetJustifyContent(node:Node):Justify;
	@:native('::YGNodeStyleSetAlignContent')
	public static function nodeStyleSetAlignContent(node:Node, alignContent:Align):Void;
	@:native('::YGNodeStyleGetAlignContent')
	public static function nodeStyleGetAlignContent(node:Node):Align;
	@:native('::YGNodeStyleSetAlignItems')
	public static function nodeStyleSetAlignItems(node:Node, alignItems:Align):Void;
	@:native('::YGNodeStyleGetAlignItems')
	public static function nodeStyleGetAlignItems(node:Node):Align;
	@:native('::YGNodeStyleSetAlignSelf')
	public static function nodeStyleSetAlignSelf(node:Node, alignSelf:Align):Void;
	@:native('::YGNodeStyleGetAlignSelf')
	public static function nodeStyleGetAlignSelf(node:Node):Align;
	@:native('::YGNodeStyleSetPositionType')
	public static function nodeStyleSetPositionType(node:Node, positionType:PositionType):Void;
	@:native('::YGNodeStyleGetPositionType')
	public static function nodeStyleGetPositionType(node:Node):PositionType;
	@:native('::YGNodeStyleSetFlexWrap')
	public static function nodeStyleSetFlexWrap(node:Node, flexWrap:FlxWrap):Void;
	@:native('::YGNodeStyleGetFlexWrap')
	public static function nodeStyleGetFlexWrap(node:Node):FlxWrap;
	@:native('::YGNodeStyleSetOverflow')
	public static function nodeStyleSetOverflow(node:Node, overflow:Overflow):Void;
	@:native('::YGNodeStyleGetOverflow')
	public static function nodeStyleGetOverflow(node:Node):Overflow;
	@:native('::YGNodeStyleSetDisplay')
	public static function nodeStyleSetDisplay(node:Node, display:Display):Void;
	@:native('::YGNodeStyleGetDisplay')
	public static function nodeStyleGetDisplay(node:Node):Display;
	@:native('::YGNodeStyleSetFlex')
	public static function nodeStyleSetFlex(node:Node, flex:Float):Void;
	@:native('::YGNodeStyleGetFlex')
	public static function nodeStyleGetFlex(node:Node):Float;
	@:native('::YGNodeStyleSetFlexGrow')
	public static function nodeStyleSetFlexGrow(node:Node, flexGrow:Float):Void;
	@:native('::YGNodeStyleGetFlexGrow')
	public static function nodeStyleGetFlexGrow(node:Node):Float;
	@:native('::YGNodeStyleSetFlexShrink')
	public static function nodeStyleSetFlexShrink(node:Node, flexShrink:Float):Void;
	@:native('::YGNodeStyleGetFlexShrink')
	public static function nodeStyleGetFlexShrink(node:Node):Float;
	@:native('::YGNodeStyleSetFlexBasis')
	public static function nodeStyleSetFlexBasis(node:Node, flexBasis:Float):Void;
	@:native('::YGNodeStyleSetFlexBasisPercent')
	public static function nodeStyleSetFlexBasisPercent(node:Node, flexBasis:Float):Void;
	@:native('::YGNodeStyleSetFlexBasisAuto')
	public static function nodeStyleSetFlexBasisAuto(node:Node):Void;
	@:native('::YGNodeStyleGetFlexBasis')
	public static function nodeStyleGetFlexBasis(node:Node):Value;
	@:native('::YGNodeStyleSetPosition')
	public static function nodeStyleSetPosition(node:Node, edge:Edge, position:Float):Void;
	@:native('::YGNodeStyleSetPositionPercent')
	public static function nodeStyleSetPositionPercent(node:Node, edge:Edge, position:Float):Void;
	@:native('::YGNodeStyleGetPosition')
	public static function nodeStyleGetPosition(node:Node, edge:Edge):Value;
	@:native('::YGNodeStyleSetMargin')
	public static function nodeStyleSetMargin(node:Node, edge:Edge, margin:Float):Void;
	@:native('::YGNodeStyleSetMarginPercent')
	public static function nodeStyleSetMarginPercent(node:Node, edge:Edge, margin:Float):Void;
	@:native('::YGNodeStyleSetMarginAuto')
	public static function nodeStyleSetMarginAuto(node:Node, edge:Edge):Void;
	@:native('::YGNodeStyleGetMargin')
	public static function nodeStyleGetMargin(node:Node, edge:Edge):Value;
	@:native('::YGNodeStyleSetPadding')
	public static function nodeStyleSetPadding(node:Node, edge:Edge, padding:Float):Void;
	@:native('::YGNodeStyleSetPaddingPercent')
	public static function nodeStyleSetPaddingPercent(node:Node, edge:Edge, padding:Float):Void;
	@:native('::YGNodeStyleGetPadding')
	public static function nodeStyleGetPadding(node:Node, edge:Edge):Value;
	@:native('::YGNodeStyleSetBorder')
	public static function nodeStyleSetBorder(node:Node, edge:Edge, border:Float):Void;
	@:native('::YGNodeStyleGetBorder')
	public static function nodeStyleGetBorder(node:Node, edge:Edge):Float;
	@:native('::YGNodeStyleSetWidth')
	public static function nodeStyleSetWidth(node:Node, width:Float):Void;
	@:native('::YGNodeStyleSetWidthPercent')
	public static function nodeStyleSetWidthPercent(node:Node, width:Float):Void;
	@:native('::YGNodeStyleSetWidthAuto')
	public static function nodeStyleSetWidthAuto(node:Node, width:Float):Void;
	@:native('::YGNodeStyleGetWidth')
	public static function nodeStyleGetWidth(node:Node):Value;
	@:native('::YGNodeStyleSetHeight')
	public static function nodeStyleSetHeight(node:Node, height:Float):Void;
	@:native('::YGNodeStyleSetHeightPercent')
	public static function nodeStyleSetHeightPercent(node:Node, height:Float):Void;
	@:native('::YGNodeStyleSetHeightAuto')
	public static function nodeStyleSetHeightAuto(node:Node, height:Float):Void;
	@:native('::YGNodeStyleGetHeight')
	public static function nodeStyleGetHeight(node:Node):Value;
	@:native('::YGNodeStyleSetMinWidth')
	public static function nodeStyleSetMinWidth(node:Node, minWidth:Float):Void;
	@:native('::YGNodeStyleSetMinWidthPercent')
	public static function nodeStyleSetMinWidthPercent(node:Node, minWidth:Float):Void;
	@:native('::YGNodeStyleGetMinWidth')
	public static function nodeStyleGetMinWidth(node:Node):Value;
	@:native('::YGNodeStyleSetMinHeight')
	public static function nodeStyleSetMinHeight(node:Node, minHeight:Float):Void;
	@:native('::YGNodeStyleSetMinHeightPercent')
	public static function nodeStyleSetMinHeightPercent(node:Node, minHeight:Float):Void;
	@:native('::YGNodeStyleGetMinHeight')
	public static function nodeStyleGetMinHeight(node:Node):Value;
	@:native('::YGNodeStyleSetMaxWidth')
	public static function nodeStyleSetMaxWidth(node:Node, maxWidth:Float):Void;
	@:native('::YGNodeStyleSetMaxWidthPercent')
	public static function nodeStyleSetMaxWidthPercent(node:Node, maxWidth:Float):Void;
	@:native('::YGNodeStyleGetMaxWidth')
	public static function nodeStyleGetMaxWidth(node:Node):Value;
	@:native('::YGNodeStyleSetMaxHeight')
	public static function nodeStyleSetMaxHeight(node:Node, maxHeight:Float):Void;
	@:native('::YGNodeStyleSetMaxHeightPercent')
	public static function nodeStyleSetMaxHeightPercent(node:Node, maxHeight:Float):Void;
	@:native('::YGNodeStyleGetMaxHeight')
	public static function nodeStyleGetMaxHeight(node:Node):Value;
	@:native('::YGNodeStyleSetAspectRatio')
	public static function nodeStyleSetAspectRatio(node:Node, aspectRatio:Float):Void;
	@:native('::YGNodeStyleGetAspectRatio')
	public static function nodeStyleGetAspectRatio(node:Node):Float;
	@:native('::YGNodeLayoutGetLeft')
	public static function nodeLayoutGetLeft(node:Node):Float;
	@:native('::YGNodeLayoutGetTop')
	public static function nodeLayoutGetTop(node:Node):Float;
	@:native('::YGNodeLayoutGetRight')
	public static function nodeLayoutGetRight(node:Node):Float;
	@:native('::YGNodeLayoutGetBottom')
	public static function nodeLayoutGetBottom(node:Node):Float;
	@:native('::YGNodeLayoutGetWidth')
	public static function nodeLayoutGetWidth(node:Node):Float;
	@:native('::YGNodeLayoutGetHeight')
	public static function nodeLayoutGetHeight(node:Node):Float;
	@:native('::YGNodeLayoutGetDirection')
	public static function nodeLayoutGetDirection(node:Node):Direction;
	@:native('::YGNodeLayoutGetHadOverflow')
	public static function nodeLayoutGetHadOverflow(node:Node):Bool;
	@:native('::YGNodeLayoutGetDidLegacyStretchFlagAffectLayout')
	public static function nodeLayoutGetDidLegacyStretchFlagAffectLayout(node:Node):Bool;
	@:native('::YGNodeLayoutGetMargin')
	public static function nodeLayoutGetMargin(node:Node, edge:Edge):Float;
	@:native('::YGNodeLayoutGetBorder')
	public static function nodeLayoutGetBorder(node:Node, edge:Edge):Float;
	@:native('::YGNodeLayoutGetPadding')
	public static function nodeLayoutGetPadding(node:Node, edge:Edge):Float;
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
	// CONFIG
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
	// internal
	@:native('::YGValueEqual')
	public static function valueEqual(a:Value, b:Value):Bool;
	@:native('::YGValueArrayEqual')
	public static function valueArrayEqual(val1:Array<Value>, val2:Array<Value>):Bool;
} // Yoga
