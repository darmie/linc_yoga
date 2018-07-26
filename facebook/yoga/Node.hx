package facebook.yoga;

using facebook.yoga.Enums;
using facebook.yoga.Config;

import facebook.yoga.Vector;
import facebook.yoga.BaseLineFunc;

@:keep
@:include('linc_yoga.h')

@:native('::cpp::Reference<YGNodeRef>')
extern class NodeRef {}

@:native('::cpp::Struct<YGNode>')
extern class Node extends NodeRef {

	public var style:Style;
	public var layout:Layout;
	private var lineIndex:Int;

	public var parent:Node;
	public var children:Array<Node>;

	public var nextChild:Node;

	public var measure:MeasureFunc;
	public var baseline:BaseLineFunc;
	public var print:PrintFunc;
	public var config:Config;
	public var context:Dynamic;

	public var isDirty:Bool;
	private var hasNewLayout:Bool;
	public var nodeType:NodeType;

	//private var resolvedDimensions:Array<Value>;



	@:native('::linc::yoga::node::NewYogaNode')
	static function init():Node;

	@:native('::linc::yoga::node::NewYogaNodeWithConfig')
	static function initWithConfig(config:Config):Node;

	@:native('::YGNode::getContext')
	static function getContext():Dynamic;

	@:native('::YGNode::getPrintFunc')
	static function getPrintFunc():PrintFunc;

	@:native('::YGNode::getHashNewLayout')
	static function getHashNewLayout():Bool;

	@:native('::YGNode::getNodeType')
	static function getNodeType():NodeType;	

	@:native('::YGNode::getMeasure')
	static function getMeasure():MeasureFunc;

	@:native('::YGNode::getBaseline')
	static function getBaseline():BaseLineFunc;	

	@:native('::YGNode::getDirtied')
	static function getDirtied():DirtiedFunc;

	@:native('::YGNode::getStyle')
	static function getStyle():Style;

	@:native('::YGNode::getLayout')	
	static function getLayout():Layout;

	@:native('::YGNode::getLineIndex')
	static function getLineIndex():Int;

	@:native('::YGNode::getOwner')
	static function getOwner():Node;

	@:native('::YGNode::getParent')
	static function getParent():Node;	

	@:native('::YGNode::getChildren')
	static function getChildren():Vector;

	@:native('::YGNode::getChild')
	static function getChild(index:Int):Node;

	@:native('::YGNode::getConfig')
	static function getConfig():Config;

	@:native('::YGNode::isDirty')
	static function isDirty():Bool;

	@:native('::YGNode::getResolvedDimensions')
	static function getResolvedDimensions():Array<Value>;

	@:native('::YGNode::getResolvedDimension')
	static function getResolvedDimension(index:Int):Value;	

	@:native('::YGNode::getLeadingPosition')
	static function getLeadingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('::YGNode::isLeadingPositionDefined')
	static function isLeadingPositionDefined(axis:FlexDirection):Bool;

	@:native('::YGNode::isTrailingPosDefined')
	static function isTrailingPosDefined(axis:FlexDirection):Bool;

	@:native('::YGNode::getTrailingPosition')
	static function getTrailingPosition(axis:FlexDirection, axisSize:Float):FloatOptional;

	@:native('::YGNode::getLeadingMargin')
	static function getLeadingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('::YGNode::getTrailingMargin')
	static function getTrailingMargin(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('::YGNode::getTrailingBorder')
	static function getTrailingBorder(flexDirection:FlexDirection):Float;	

	@:native('::YGNode::getLeadingBorder')
	static function getLeadingBorder(flexDirection:FlexDirection):Float;

	@:native('::YGNode::getLeadingPadding')
	static function getLeadingPadding(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('::YGNode::getTrailingPadding')
	static function getTrailingPaddingr(axis:FlexDirection, widthSize:Float):FloatOptional;


	@:native('::YGNode::getLeadingPaddingAndBorder')
	static function getLeadingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('::YGNode::getTrailingPaddingAndBorder')
	static function getTrailingPaddingAndBorder(axis:FlexDirection, widthSize:Float):FloatOptional;

	@:native('::YGNode::getMarginForAxis')
	static function getMarginForAxis(axis:FlexDirection, widthSize:Float):FloatOptional;	


	@:native('::YGNode::setContext')
	static function setContext(context:Dynamic):Void;

	@:native('::YGNode::setPrintFunc')
	static function setPrintFunc(printfunc:PrintFunc):Void;

	@:native('::YGNode::setMeasureFunc')
	static function setMeasureFunc(measurefunc:MeasureFunc):Void;	

	@:native('::YGNode::setBaseLineFunc')
	static function setBaseLineFunc(baseLinefunc:BaseLineFunc):Void;		

	@:native('::YGNode::setDirtiedFunc')
	static function setDirtiedFuncc(dirtiedFunc:DirtiedFunc):Void;		

	@:native('::YGNode::setHasNewLayout')
	static function setHasNewLayout(hasNewLayout:Bool):Void;

	@:native('::YGNode::setNodeType')
	static function setsetNodeType(nodeType:NodeType):Void;

	@:native('::YGNode::setStyleFlexDirection')
	static function setStyleFlexDirection(direction:FlexDirection):Void;

	@:native('::YGNode::setAlignContent')
	static function setAlignContent(alignContent:Align):Void;	

	@:native('::YGNode::setStyle')
	static function setStyle(style:Style):Void;	

	@:native('::YGNode::setLayout')
	static function setLayout(layout:Layout):Void;

	@:native('::YGNode::setLineIndex')
	static function setLineIndex(lineIndex:Int):Void;

	@:native('::YGNode::setOwner')
	static function setOwner(owner:Node):Void;	

	@:native('::YGNode::setChildren')
	static function setChildren(children:Vector):Void;

	@:native('::YGNode::setConfig')
	static function setConfig(config:Config):Void;	

	@:native('::YGNode::setDirty')
	static function setDirty(isDirty:Bool):Void;

	@:native('::YGNode::setLayoutLastOwnerDirection')
	static function setLayoutLastOwnerDirection(direction:Direction):Void;	

	@:native('::YGNode::setLayoutComputedFlexBasis')
	static function setLayoutComputedFlexBasis(computedFlexBasis:FloatOptional):Void;	

	@:native('::YGNode::setLayoutComputedFlexBasisGeneration')
	static function setLayoutComputedFlexBasisGeneration(computedFlexBasisGeneration:Int):Void;	

	@:native('::YGNode::setLayoutMeasuredDimension')
	static function setLayoutMeasuredDimension(measuredDimension:Float, index:Int):Void;	
	
	@:native('::YGNode::setLayoutHadOverflow')
	static function setLayoutHadOverflow(hadOverflow:Bool):Void;

	@:native('::YGNode::setLayoutDimension')
	static function setLayoutDimension(dimension:Float, index:Int):Void;

	@:native('::YGNode::setLayoutDirection')
	static function setLayoutDirection(direction:Direction):Void;	

	@:native('::YGNode::setLayoutMargin')
	static function setLayoutMargin(margin:Float, index:Int):Void;		

	@:native('::YGNode::setLayoutBorder')
	static function setLayoutBorder(border:Float, index:Int):Void;		

	@:native('::YGNode::setLayoutPadding')
	static function setLayoutPadding(padding:Float, index:Int):Void;

	@:native('::YGNode::setLayoutPosition')
	static function setLayoutPosition(position:Float, index:Int):Void;

	@:native('::YGNode::setPosition')
	static function setPosition(direction:Direction, mainSize:Float,  crossSize:Float, index:Int):Void;				

}