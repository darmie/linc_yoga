import facebook.yoga.Enums.FlxWrap;
import facebook.yoga.Enums.Align;
import facebook.yoga.Enums.Justify;
import facebook.yoga.Enums.Overflow;
import facebook.yoga.Enums.Direction;
import facebook.yoga.Enums.FlexDirection;
import facebook.yoga.Enums.Edge;
import facebook.yoga.Enums.PositionType;
import facebook.Yoga;
import facebook.yoga.*;
import utest.Assert;

/**
	AbsolutePositionTest
**/
class YogaAbsolutePositionSpec {
	public function new() {}

	public function setup() {}

	public function teardown() {}

	public function testAbsoluteLayoutWidthHeightStartTop() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Start, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutWidthHeightEndBottom() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.End, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutWidthHeightStartTopEndBottom() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Start, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.End, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutStartTopEndBottom() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Start, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.End, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Bottom, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function test_do_not_clamp_height_of_absolute_node_to_height_of_its_overflow_hidden_parent() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetOverflow(root, Overflow.Hidden);
		Yoga.nodeStyleSetWidth(root, 50);
		Yoga.nodeStyleSetHeight(root, 50);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Start, 0);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 0);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0_child0, 100);
		Yoga.nodeStyleSetHeight(root_child0_child0, 100);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutWithinBorder() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetMargin(root, Edge.Left, 10);
		Yoga.nodeStyleSetMargin(root, Edge.Top, 10);
		Yoga.nodeStyleSetMargin(root, Edge.Right, 10);
		Yoga.nodeStyleSetMargin(root, Edge.Bottom, 10);
		Yoga.nodeStyleSetPadding(root, Edge.Left, 10);
		Yoga.nodeStyleSetPadding(root, Edge.Top, 10);
		Yoga.nodeStyleSetPadding(root, Edge.Right, 10);
		Yoga.nodeStyleSetPadding(root, Edge.Bottom, 10);
		Yoga.nodeStyleSetBorder(root, Edge.Left, 10);
		Yoga.nodeStyleSetBorder(root, Edge.Top, 10);
		Yoga.nodeStyleSetBorder(root, Edge.Right, 10);
		Yoga.nodeStyleSetBorder(root, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Left, 0);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 0);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child1, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child1, Edge.Right, 0);
		Yoga.nodeStyleSetPosition(root_child1, Edge.Bottom, 0);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 50);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child2:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child2, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child2, Edge.Left, 0);
		Yoga.nodeStyleSetPosition(root_child2, Edge.Top, 0);
		Yoga.nodeStyleSetMargin(root_child2, Edge.Left, 10);
		Yoga.nodeStyleSetMargin(root_child2, Edge.Top, 10);
		Yoga.nodeStyleSetMargin(root_child2, Edge.Right, 10);
		Yoga.nodeStyleSetMargin(root_child2, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child2, 50);
		Yoga.nodeStyleSetHeight(root_child2, 50);
		Yoga.nodeInsertChild(root, root_child2, 2);

		var root_child3:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child3, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child3, Edge.Right, 0);
		Yoga.nodeStyleSetPosition(root_child3, Edge.Bottom, 0);
		Yoga.nodeStyleSetMargin(root_child3, Edge.Left, 10);
		Yoga.nodeStyleSetMargin(root_child3, Edge.Top, 10);
		Yoga.nodeStyleSetMargin(root_child3, Edge.Right, 10);
		Yoga.nodeStyleSetMargin(root_child3, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child3, 50);
		Yoga.nodeStyleSetHeight(root_child3, 50);
		Yoga.nodeInsertChild(root, root_child3, 3);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(20, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(20, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItems_and_JustifyContentCenter() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItems_and_JustifyContentFlexEnd() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetJustifyContent(root, Justify.FlexEnd);
		Yoga.nodeStyleSetAlignItems(root, Align.FlexEnd);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutJustifyContentCenter() {
		var config:Config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItemsCenter() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItemsCenterOnChildOnly() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignSelf(root_child0, Align.Center);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItems_and_JustifyContentCenter_and_TopPosition() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItems_and_JustifyContentCenter_and_BottomPosition() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItemsAndJustifyContentCenter_and_LeftPosition() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Left, 5);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(5, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(5, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutAlignItemsAndJustifyContentCenter_and_RightPosition() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetFlexGrow(root, 1);
		Yoga.nodeStyleSetWidth(root, 110);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Right, 5);
		Yoga.nodeStyleSetWidth(root_child0, 60);
		Yoga.nodeStyleSetHeight(root_child0, 40);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(110, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testPositionRootWithRtlShouldPositionWithoutDirection() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPosition(root, Edge.Left, 72);
		Yoga.nodeStyleSetWidth(root, 52);
		Yoga.nodeStyleSetHeight(root, 52);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(72, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(72, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutPercentageBottomBasedOnParentHeight() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 200);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPositionPercent(root_child0, Edge.Top, 50);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child1, PositionType.Absolute);
		Yoga.nodeStyleSetPositionPercent(root_child1, Edge.Bottom, 50);
		Yoga.nodeStyleSetWidth(root_child1, 10);
		Yoga.nodeStyleSetHeight(root_child1, 10);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child2:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child2, PositionType.Absolute);
		Yoga.nodeStyleSetPositionPercent(root_child2, Edge.Top, 10);
		Yoga.nodeStyleSetPositionPercent(root_child2, Edge.Bottom, 10);
		Yoga.nodeStyleSetWidth(root_child2, 10);
		Yoga.nodeInsertChild(root, root_child2, 2);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(200, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(160, Yoga.nodeLayoutGetHeight(root_child2));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(200, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(160, Yoga.nodeLayoutGetHeight(root_child2));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutInWrapReverseColumnContainer() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.WrapReverse);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0, 20);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutInWrapReverseRowContainer() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.WrapReverse);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0, 20);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutInWrapReverseColumnContainerFlexEnd() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.WrapReverse);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetAlignSelf(root_child0, Align.FlexEnd);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0, 20);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAbsoluteLayoutInWrapReverseRowContainerFlexEnd() {
		var config:Config = Config.init();

		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.WrapReverse);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetAlignSelf(root_child0, Align.FlexEnd);
		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetWidth(root_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0, 20);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}
}
