import facebook.yoga.Enums.FlxWrap;
import cpp.Callable;

import facebook.yoga.Enums.Align;

import facebook.yoga.Enums.Direction;
import facebook.yoga.Enums.FlexDirection;

import facebook.Yoga;
import facebook.yoga.*;
import cpp.Float32;

import utest.Assert;


class YogaAlignContentSpec {
    public function new(){}

    public function testAlignContentFlexStart(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 130);      
        Yoga.nodeStyleSetHeight(root, 100);  

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 10);
        Yoga.nodeInsertChild(root, root_child0, 0);

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1);

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeStyleSetHeight(root_child2, 10);
        Yoga.nodeInsertChild(root, root_child2, 2);


        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeStyleSetHeight(root_child3, 10);
        Yoga.nodeInsertChild(root, root_child3, 3);

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeStyleSetHeight(root_child4, 10);
        Yoga.nodeInsertChild(root, root_child4, 4);

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(130, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));        


        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);


        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(130, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);        
    }


    public function testAlignContentFlexStartWithoutHeightOnChildren(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 100);      
        Yoga.nodeStyleSetHeight(root, 100);     

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeStyleSetHeight(root_child3, 10);
        Yoga.nodeInsertChild(root, root_child3, 3);  

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeInsertChild(root, root_child4, 4);  

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4));     

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);    

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4)); 

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);            
    }

    public function testAlignContentFlexStartWithFlex(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 100);      
        Yoga.nodeStyleSetHeight(root, 120);

        var root_child0:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexGrow(root_child0, 1);
        Yoga.nodeStyleSetFlexBasisPercent(root_child0, 0);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeInsertChild(root, root_child0, 0);

        var root_child1:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexGrow(root_child1, 1);
        Yoga.nodeStyleSetFlexBasisPercent(root_child1, 0);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1);

        var root_child2:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeInsertChild(root, root_child2, 2);

        var root_child3:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexGrow(root_child3, 1);
        Yoga.nodeStyleSetFlexShrink(root_child3, 1);
        Yoga.nodeStyleSetFlexBasisPercent(root_child3, 0);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeInsertChild(root, root_child3, 3);

        var root_child4:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeInsertChild(root, root_child4, 4);

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);  

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(120, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(120, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4)); 

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(120, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(80, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(120, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);                              
    }

    public function testAlignContentFlexEnd() {
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetAlignContent(root, Align.FlexEnd);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 100);      
        Yoga.nodeStyleSetHeight(root, 100);  

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 10);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeStyleSetHeight(root_child2, 10);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeStyleSetHeight(root_child3, 10);
        Yoga.nodeInsertChild(root, root_child3, 3); 

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeStyleSetHeight(root_child4, 10);
        Yoga.nodeInsertChild(root, root_child4, 4);   

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4)); 

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
 

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);            
    }

    public function testAlignContentStretch(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetAlignContent(root, Align.Stretch);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 150);      
        Yoga.nodeStyleSetHeight(root, 100);

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeInsertChild(root, root_child3, 3);  

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeInsertChild(root, root_child4, 4); 

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);
    }

    public function testAlignContentSpaceBetween(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
        Yoga.nodeStyleSetAlignContent(root, Align.SpaceBetween);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 130);      
        Yoga.nodeStyleSetHeight(root, 100); 

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 10);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeStyleSetHeight(root_child2, 10);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeStyleSetHeight(root_child3, 10);
        Yoga.nodeInsertChild(root, root_child3, 3); 

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeStyleSetHeight(root_child4, 10);
        Yoga.nodeInsertChild(root, root_child4, 4);  

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(130, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
        
        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(130, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);
    }
    public function testAlignContentSpaceAround(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
        Yoga.nodeStyleSetAlignContent(root, Align.SpaceAround);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 140);      
        Yoga.nodeStyleSetHeight(root, 120);         

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 10);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 10);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeStyleSetHeight(root_child2, 10);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeStyleSetHeight(root_child3, 10);
        Yoga.nodeInsertChild(root, root_child3, 3); 

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeStyleSetHeight(root_child4, 10);
        Yoga.nodeInsertChild(root, root_child4, 4); 

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(140, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(120, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(15, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(15, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(55, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(55, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(95, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        
        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);  

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(140, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(120, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(15, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(15, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(55, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(55, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(95, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);   
    }

    public function testAlignContentStretchRow(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, Row);
        Yoga.nodeStyleSetAlignContent(root, Align.Stretch);
        Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
        Yoga.nodeStyleSetWidth(root, 150);      
        Yoga.nodeStyleSetHeight(root, 100);

        var root_child0 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeInsertChild(root, root_child1, 1); 

        var root_child2 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child2, 50);
        Yoga.nodeInsertChild(root, root_child2, 2); 

        var root_child3 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child3, 50);
        Yoga.nodeInsertChild(root, root_child3, 3);  

        var root_child4 = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child4, 50);
        Yoga.nodeInsertChild(root, root_child4, 4);

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child2));

        Assert.floatEquals(100, Yoga.nodeLayoutGetLeft(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child4));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child4));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);
    }

}