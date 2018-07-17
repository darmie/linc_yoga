package facebook.yoga;

using facebook.yoga.Enums;
using facebook.yoga.Config;

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
	public var baseline:BaselineFunc;
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
	static function getBaseline():BaselineFunc;	

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

	
}