package facebook.yoga;

using facebook.yoga.Enums;
using facebook.yoga.Config;

import facebook.yoga.Vector;
import facebook.yoga.BaseLineFunc;


@:keep
@:include('linc_yoga.h')

@:native('::cpp::Reference<YGNodeRef>')
extern class NodeRef {}

@:unreflective
@:keep
@:include('linc_yoga.h')
//Node
@:structAccess
@:native('::cpp::Struct<YGNode>')
extern class Node extends NodeRef {

	@:native('::linc::yoga::node::NewYogaNode')
	static function init():Node;

	@:native('::linc::yoga::node::NewYogaNodeWithConfig')
	static function initWithConfig(config:Config):Node;

	@:native('getContext')
	static function getContext():Dynamic;

	@:native('getPrintFunc')
	static function getPrintFunc():PrintFunc;

	@:native('getHashNewLayout')
	static function getHashNewLayout():Bool;

	@:native('getNodeType')
	static function getNodeType():NodeType;	

	@:native('getMeasure')
	static function getMeasure():MeasureFunc;

	@:native('getBaseline')
	static function getBaseline():BaseLineFunc;	

	@:native('getDirtied')
	static function getDirtied():DirtiedFunc;

	@:native('getStyle')
	static function getStyle():Style;

	@:native('getLayout')	
	static function getLayout():Layout;

	@:native('getLineIndex')
	static function getLineIndex():Int;

	@:native('getOwner')
	static function getOwner():Node;

	@:native('getParent')
	static function getParent():Node;	

	@:native('getChildren')
	static function getChildren():Vector;

	@:native('getChild')
	static function getChild(index:Int):Node;

	@:native('getConfig')
	static function getConfig():Config;

	@:native('isDirty')
	static function isDirty():Bool;

	@:native('getResolvedDimensions')
	static function getResolvedDimensions():Array<Value>;

	@:native('getResolvedDimension')
	static function getResolvedDimension(index:Int):Value;	

	@:native('getLeadingPosition')
	static function getLeadingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('isLeadingPositionDefined')
	static function isLeadingPositionDefined(axis:FlexDirection):Bool;

	@:native('isTrailingPosDefined')
	static function isTrailingPosDefined(axis:FlexDirection):Bool;

	@:native('getTrailingPosition')
	static function getTrailingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('getLeadingMargin')
	static function getLeadingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingMargin')
	static function getTrailingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingBorder')
	static function getTrailingBorder(flexDirection:FlexDirection):Float;	

	@:native('getLeadingBorder')
	static function getLeadingBorder(flexDirection:FlexDirection):Float;

	@:native('getLeadingPadding')
	static function getLeadingPadding(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingPadding')
	static function getTrailingPaddingr(axis:FlexDirection, widthSize:Float):FloatOptional;


	@:native('getLeadingPaddingAndBorder')
	static function getLeadingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingPaddingAndBorder')
	static function getTrailingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getMarginForAxis')
	static function getMarginForAxis(axis:FlexDirection, widthSize:Float):FloatOptional;	


	@:native('setContext')
	static function setContext(context:Dynamic):Void;

	@:native('setPrintFunc')
	static function setPrintFunc(printfunc:PrintFunc):Void;

	@:native('setMeasureFunc')
	static function setMeasureFunc(measurefunc:MeasureFunc):Void;	

	@:native('setBaseLineFunc')
	static function setBaseLineFunc(baseLinefunc:BaseLineFunc):Void;		

	@:native('setDirtiedFunc')
	static function setDirtiedFuncc(dirtiedFunc:DirtiedFunc):Void;		

	@:native('setHasNewLayout')
	static function setHasNewLayout(hasNewLayout:Bool):Void;

	@:native('setNodeType')
	static function setsetNodeType(nodeType:NodeType):Void;

	@:native('setStyleFlexDirection')
	static function setStyleFlexDirection(direction:FlexDirection):Void;

	@:native('setAlignContent')
	static function setAlignContent(alignContent:Align):Void;	

	@:native('setStyle')
	static function setStyle(style:Style):Void;	

	@:native('setLayout')
	static function setLayout(layout:Layout):Void;

	@:native('setLineIndex')
	static function setLineIndex(lineIndex:Int):Void;

	@:native('setOwner')
	static function setOwner(owner:Node):Void;	

	@:native('setChildren')
	static function setChildren(children:Vector):Void;

	@:native('setConfig')
	static function setConfig(config:Config):Void;	

	@:native('setDirty')
	static function setDirty(isDirty:Bool):Void;

	@:native('setLayoutLastOwnerDirection')
	static function setLayoutLastOwnerDirection(direction:Direction):Void;	

	@:native('setLayoutComputedFlexBasis')
	static function setLayoutComputedFlexBasis(computedFlexBasis:FloatOptional):Void;	

	@:native('setLayoutComputedFlexBasisGeneration')
	static function setLayoutComputedFlexBasisGeneration(computedFlexBasisGeneration:Int):Void;	

	@:native('setLayoutMeasuredDimension')
	static function setLayoutMeasuredDimension(measuredDimension:Float, index:Int):Void;	
	
	@:native('setLayoutHadOverflow')
	static function setLayoutHadOverflow(hadOverflow:Bool):Void;

	@:native('setLayoutDimension')
	static function setLayoutDimension(dimension:Float, index:Int):Void;

	@:native('setLayoutDirection')
	static function setLayoutDirection(direction:Direction):Void;	

	@:native('setLayoutMargin')
	static function setLayoutMargin(margin:Float, index:Int):Void;		

	@:native('setLayoutBorder')
	static function setLayoutBorder(border:Float, index:Int):Void;		

	@:native('setLayoutPadding')
	static function setLayoutPadding(padding:Float, index:Int):Void;

	@:native('setLayoutPosition')
	static function setLayoutPosition(position:Float, index:Int):Void;

	@:native('setPosition')
	static function setPosition(direction:Direction, mainSize:Float,  crossSize:Float, index:Int):Void;	

	@:native('setAndPropogateUseLegacyFlag')
	static function setAndPropogateUseLegacyFlag(useLegacyFlag:Bool):Void;

	@:native('setLayoutDoesLegacyFlagAffectsLayout')
	static function setLayoutDoesLegacyFlagAffectsLayout(doesLegacyFlagAffectsLayout:Bool):Void;

	@:native('setLayoutDidUseLegacyFlag')
	static function setLayoutDidUseLegacyFlag(didUseLegacyFlag:Bool):Void;

	@:native('markDirtyAndPropogateDownwards')
	static function markDirtyAndPropogateDownwards():Void;


	@:native('marginLeadingValue')
	static function marginLeadingValue(axis:FlexDirection):Value;

	@:native('marginTrailingValue')
	static function marginTrailingValue(axis:FlexDirection):Value;

	@:native('resolveFlexBasisPtr')
	static function resolveFlexBasisPtr():Value;

	@:native('resolveDimension')
	static function resolveDimension():Void;

	@:native('resolveDirection')
	static function resolveDirection(ownerDirection:Direction):Direction;

	@:native('clearChildren')
	static function clearChildren():Void;

	@:native('replaceChild')
	static function replaceChild(oldChild:Node, newChild:Node):Void;

	@:native('insertChild')
	static function insertChild(child:Node, index:Int):Void;

	@:native('removeChild')
	static function removeChild(child:Node):Void;

	@:native('cloneChildrenIfNeeded')
	static function cloneChildrenIfNeeded():Void;

	@:native('markDirtyAndPropogate')
	static function markDirtyAndPropogate():Void;

	@:native('resolveFlexGrow')
	static function resolveFlexGrow():Float;

	@:native('resolveFlexShrink')
	static function resolveFlexShrink():Float;

	@:native('isNodeFlexible')
	static function isNodeFlexible():Bool;

	@:native('didUseLegacyFlag')
	static function didUseLegacyFlag():Bool;

	@:native('isLayoutTreeEqualToNode')
	static function isLayoutTreeEqualToNode(node:Node):Bool;

} //Node