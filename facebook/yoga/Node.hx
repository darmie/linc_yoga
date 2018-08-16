package facebook.yoga;

using facebook.yoga.Enums;
using facebook.yoga.Config;

import facebook.yoga.Vector;
//import facebook.yoga.BaseLineFunc;


@:include('linc_yoga.h')
//Node
@:native('YGNodeRef')
extern class Node {

	@:native('::linc::yoga::NewYogaNode')
	static function init():Node;

	@:native('::linc::yoga::NewYogaNodeWithConfig')
	static function initWithConfig(config:Config):Node;

	@:native('getContext')
	public function getContext():Dynamic;

	@:native('getPrintFunc')
	public function getPrintFunc():PrintFunc;

	@:native('getHashNewLayout')
	public function getHashNewLayout():Bool;

	@:native('getNodeType')
	public function getNodeType():NodeType;	

	@:native('getMeasure')
	public function getMeasure():MeasureFunc;

	@:native('getBaseline')
	public function getBaseline():Dynamic;	

	@:native('getDirtied')
	public function getDirtied():DirtiedFunc;

	@:native('getStyle')
	public function getStyle():Style;

	@:native('getLayout')	
	public function getLayout():Layout;

	@:native('getLineIndex')
	public function getLineIndex():Int;

	@:native('getOwner')
	public function getOwner():Node;

	@:native('getParent')
	public function getParent():Node;	

	@:native('getChildren')
	public function getChildren():Vector;

	@:native('getChild')
	public function getChild(index:Int):Node;

	@:native('getConfig')
	public function getConfig():Config;

	@:native('isDirty')
	public function isDirty():Bool;

	@:native('getResolvedDimensions')
	public function getResolvedDimensions():Array<Value>;

	@:native('getResolvedDimension')
	public function getResolvedDimension(index:Int):Value;	

	@:native('getLeadingPosition')
	public function getLeadingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('isLeadingPositionDefined')
	public function isLeadingPositionDefined(axis:FlexDirection):Bool;

	@:native('isTrailingPosDefined')
	public function isTrailingPosDefined(axis:FlexDirection):Bool;

	@:native('getTrailingPosition')
	public function getTrailingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('getLeadingMargin')
	public function getLeadingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingMargin')
	public function getTrailingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingBorder')
	public function getTrailingBorder(flexDirection:FlexDirection):Float;	

	@:native('getLeadingBorder')
	public function getLeadingBorder(flexDirection:FlexDirection):Float;

	@:native('getLeadingPadding')
	public function getLeadingPadding(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingPadding')
	public function getTrailingPadding(axis:FlexDirection, widthSize:Float):FloatOptional;


	@:native('getLeadingPaddingAndBorder')
	public function getLeadingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getTrailingPaddingAndBorder')
	public function getTrailingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('getMarginForAxis')
	public function getMarginForAxis(axis:FlexDirection, widthSize:Float):FloatOptional;	


	@:native('setContext')
	public function setContext(context:Dynamic):Void;

	@:native('setPrintFunc')
	public function setPrintFunc(printfunc:PrintFunc):Void;

	@:native('setMeasureFunc')
	public function setMeasureFunc(measurefunc:MeasureFunc):Void;	

	@:native('setBaseLineFunc')
	public function setBaseLineFunc(baseLinefunc:BaseLineFunc):Void;		

	@:native('setDirtiedFunc')
	public function setDirtiedFunc(dirtiedFunc:DirtiedFunc):Void;		

	@:native('setHasNewLayout')
	public function setHasNewLayout(hasNewLayout:Bool):Void;

	@:native('setNodeType')
	public function setNodeType(nodeType:NodeType):Void;

	@:native('setStyleFlexDirection')
	public function setStyleFlexDirection(direction:FlexDirection):Void;

	@:native('setAlignContent')
	public function setAlignContent(alignContent:Align):Void;	

	@:native('setStyle')
	public function setStyle(style:Style):Void;	

	@:native('setLayout')
	public function setLayout(layout:Layout):Void;

	@:native('setLineIndex')
	public function setLineIndex(lineIndex:Int):Void;

	@:native('setOwner')
	public function setOwner(owner:Node):Void;	

	@:native('setChildren')
	public function setChildren(children:Vector):Void;

	@:native('setConfig')
	public function setConfig(config:Config):Void;	

	@:native('setDirty')
	public function setDirty(isDirty:Bool):Void;

	@:native('setLayoutLastOwnerDirection')
	public function setLayoutLastOwnerDirection(direction:Direction):Void;	

	@:native('setLayoutComputedFlexBasis')
	public function setLayoutComputedFlexBasis(computedFlexBasis:FloatOptional):Void;	

	@:native('setLayoutComputedFlexBasisGeneration')
	public function setLayoutComputedFlexBasisGeneration(computedFlexBasisGeneration:Int):Void;	

	@:native('setLayoutMeasuredDimension')
	public function setLayoutMeasuredDimension(measuredDimension:Float, index:Int):Void;	
	
	@:native('setLayoutHadOverflow')
	public function setLayoutHadOverflow(hadOverflow:Bool):Void;

	@:native('setLayoutDimension')
	public function setLayoutDimension(dimension:Float, index:Int):Void;

	@:native('setLayoutDirection')
	public function setLayoutDirection(direction:Direction):Void;	

	@:native('setLayoutMargin')
	public function setLayoutMargin(margin:Float, index:Int):Void;		

	@:native('setLayoutBorder')
	public function setLayoutBorder(border:Float, index:Int):Void;		

	@:native('setLayoutPadding')
	public function setLayoutPadding(padding:Float, index:Int):Void;

	@:native('setLayoutPosition')
	public function setLayoutPosition(position:Float, index:Int):Void;

	@:native('setPosition')
	public function setPosition(direction:Direction, mainSize:Float,  crossSize:Float, index:Int):Void;	

	@:native('setAndPropogateUseLegacyFlag')
	public function setAndPropogateUseLegacyFlag(useLegacyFlag:Bool):Void;

	@:native('setLayoutDoesLegacyFlagAffectsLayout')
	public function setLayoutDoesLegacyFlagAffectsLayout(doesLegacyFlagAffectsLayout:Bool):Void;

	@:native('setLayoutDidUseLegacyFlag')
	public function setLayoutDidUseLegacyFlag(didUseLegacyFlag:Bool):Void;

	@:native('markDirtyAndPropogateDownwards')
	public function markDirtyAndPropogateDownwards():Void;


	@:native('marginLeadingValue')
	public function marginLeadingValue(axis:FlexDirection):Value;

	@:native('marginTrailingValue')
	public function marginTrailingValue(axis:FlexDirection):Value;

	@:native('resolveFlexBasisPtr')
	public function resolveFlexBasisPtr():Value;

	@:native('resolveDimension')
	public function resolveDimension():Void;

	@:native('resolveDirection')
	public function resolveDirection(ownerDirection:Direction):Direction;

	@:native('clearChildren')
	public function clearChildren():Void;

	@:native('replaceChild')
	public function replaceChild(oldChild:Node, newChild:Node):Void;

	@:native('insertChild')
	public function insertChild(child:Node, index:Int):Void;

	@:native('removeChild')
	public function removeChild(child:Node):Void;

	@:native('cloneChildrenIfNeeded')
	public function cloneChildrenIfNeeded():Void;

	@:native('markDirtyAndPropogate')
	public function markDirtyAndPropogate():Void;

	@:native('resolveFlexGrow')
	public function resolveFlexGrow():Float;

	@:native('resolveFlexShrink')
	public function resolveFlexShrink():Float;

	@:native('isNodeFlexible')
	public function isNodeFlexible():Bool;

	@:native('didUseLegacyFlag')
	public function didUseLegacyFlag():Bool;

	@:native('isLayoutTreeEqualToNode')
	public function isLayoutTreeEqualToNode(node:Node):Bool;

} //Node