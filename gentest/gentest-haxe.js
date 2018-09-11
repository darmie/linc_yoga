/**
 * Copyright (c) 2014-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

function toValueHaxe(value) {
  var n = value.toString().replace('px','').replace('%','');
  return n + (Number(n) == n && n % 1 !== 0 ? '' : '');
}

function toMethodName(value) {
  if (value.indexOf('%') >= 0) {
    return 'Percent';
  } else if(value.indexOf('Auto') >= 0) {
    return 'Auto';
  }
  return '';
}

var HaxeEmitter = function() {
  Emitter.call(this, 'hx', '  ');
};

function toHaxeUpper(symbol) {
  var out = '';
  for (var i = 0; i < symbol.length; i++) {
    var c = symbol[i];
    if (c == c.toUpperCase() && i != 0 && symbol[i - 1] != symbol[i - 1].toUpperCase()) {
      out += '_';
    }
    out += c.toUpperCase();
  }
  return out;
}

HaxeEmitter.prototype = Object.create(Emitter.prototype, {
  constructor:{value:HaxeEmitter},

  emitPrologue:{value:function() {
    this.push([
      '',
      'using facebook.yoga.Enums;',
      '',
      'import facebook.Yoga;',
      '',
      'import facebook.yoga.*;',
      '',
      'import utest.Assert;',
      '',
      'class YogaTest {',
      ''
    ]);
    this.pushIndent();
    this.push([
      'public function new(){}'
    ]);
  }},

  emitTestPrologue:{value:function(name, experiments) {
    this.push('public function test_' + name + '() {');
    this.pushIndent();

    this.push("var config = Config.init();")
    for (var i in experiments) {
      this.push('.configSetExperimentalFeatureEnabled(config, ExperimentalFeature.' + toHaxeUpper(experiments[i]) +', true);');
    }
    this.push('');
  }},

  emitTestTreePrologue:{value:function(nodeName) {
    this.push('var ' + nodeName + ' = Yoga.newNodeWithConfig(config);');
  }},


  emitTestEpilogue:{value:function(experiments) {
    this.push([
      '',
      'Yoga.nodeFreeRecursive(root);',
    ]);

    this.push('');
    this.push('Yoga.configFree(config);')

    this.popIndent();
    this.push([
      '}',
      '',
    ]);
  }},


  emitEpilogue:{value:function(lines) {
    this.popIndent();
    this.push([
      '}',
      '',
    ]);
  }},

  AssertEQ:{value:function(v0, v1) {
    this.push('Assert.floatEquals(' + v0 + ', ' + v1 + ');');
  }},

  YGAlignAuto:{value:'Align.Auto'},
  YGAlignCenter:{value:'Align.Center'},
  YGAlignFlexEnd:{value:'Align.FlexEnd'},
  YGAlignFlexStart:{value:'Align.FlexStart'},
  YGAlignStretch:{value:'Align.Stretch'},
  YGAlignSpaceBetween:{value:'Align.SpaceBetween'},
  YGAlignSpaceAround:{value:'Align.SpaceAround'},
  YGAlignBaseline:{value:'Align.Baseline'},

  YGDirectionInherit:{value:'Direction.Inherit'},
  YGDirectionLTR:{value:'Direction.LTR'},
  YGDirectionRTL:{value:'Direction.RTL'},

  YGEdgeBottom:{value:'Edge.Bottom'},
  YGEdgeEnd:{value:'Edge.End'},
  YGEdgeLeft:{value:'Edge.Left'},
  YGEdgeRight:{value:'Edge.Right'},
  YGEdgeStart:{value:'Edge.Start'},
  YGEdgeTop:{value:'Edge.Top'},

  YGFlexDirectionColumn:{value:'FlexDirection.Column'},
  YGFlexDirectionColumnReverse:{value:'FlexDirection.ColumnReverse'},
  YGFlexDirectionRow:{value:'FlexDirection.Row'},
  YGFlexDirectionRowReverse:{value:'FlexDirection.RowReverse'},

  YGJustifyCenter:{value:'Justify.Center'},
  YGJustifyFlexEnd:{value:'Justify.FlexEnd'},
  YGJustifyFlexStart:{value:'Justify.FlexStart'},
  YGJustifySpaceAround:{value:'Justify.SpaceAround'},
  YGJustifySpaceBetween:{value:'Justify.SpaceBetween'},
  YGJustifySpaceEvenly:{value:'Justify.SpaceEvenly'},

  YGOverflowHidden:{value:'Overflow.Hidden'},
  YGOverflowVisible:{value:'Overflow.Visible'},

  YGPositionTypeAbsolute:{value:'PositionType.Absolute'},
  YGPositionTypeRelative:{value:'PositionType.Relative'},

  YGUndefined:{value:'Constants.Undefined'},

  YGDisplayFlex:{value:'Display.Flex'},
  YGDisplayNone:{value:'Display.None'},
  YGAuto:{value:'Constants.Auto'},


  YGWrapNoWrap:{value:'FlxWrap.NoWrap'},
  YGWrapWrap:{value:'FlxWrap.Wrap'},
  YGWrapWrapReverse:{value: 'FlxWrap.WrapReverse'},

  YGNodeCalculateLayout:{value:function(node, dir, experiments) {
    this.push('Yoga.nodeCalculateLayout(' + node + ', Constants.Undefined, Constants.Undefined, ' + dir + ');');
  }},

  YGNodeInsertChild:{value:function(parentName, nodeName, index) {
    this.push('Yoga.nodeInsertChild(' + parentName + ', ' + nodeName + ', ' + index + ');');
  }},

  YGNodeLayoutGetLeft:{value:function(nodeName) {
    return 'Yoga.nodeLayoutGetLeft(' + nodeName + ')';
  }},

  YGNodeLayoutGetTop:{value:function(nodeName) {
    return 'Yoga.nodeLayoutGetTop(' + nodeName + ')';
  }},

  YGNodeLayoutGetWidth:{value:function(nodeName) {
    return 'Yoga.nodeLayoutGetWidth(' + nodeName + ')';
  }},

  YGNodeLayoutGetHeight:{value:function(nodeName) {
    return 'Yoga.nodeLayoutGetHeight(' + nodeName + ')';
  }},

  YGNodeStyleSetAlignContent:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetAlignContent(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetAlignItems:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetAlignItems(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetAlignSelf:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetAlignSelf(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetBorder:{value:function(nodeName, edge, value) {
    this.push('Yoga.nodeStyleSetBorder(' + nodeName + ', ' + edge + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetDirection:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetDirection(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetDisplay:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetDisplay(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetFlexBasis:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetFlexBasis' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetFlexDirection:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetFlexDirection(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetFlexGrow:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetFlexGrow(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetFlexShrink:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetFlexShrink(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetFlexWrap:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetFlexWrap(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetHeight:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetHeight' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetJustifyContent:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetJustifyContent(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetMargin:{value:function(nodeName, edge, value) {
    var valueStr = toValueHaxe(value);
    if (valueStr != 'Constants.Auto') {
      valueStr = ', ' + valueStr;
    } else {
      valueStr = '';
    }

    this.push('Yoga.nodeStyleSetMargin' + toMethodName(value) + '(' + nodeName + ', ' + edge +  valueStr + ');');
  }},

  YGNodeStyleSetMaxHeight:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetMaxHeight' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetMaxWidth:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetMaxWidth' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');    
    
  }},

  YGNodeStyleSetMinHeight:{value:function(nodeName, value) {
    var valueStr = toValueHaxe(value);
    if (valueStr == 'Constants.Auto') {
      return;
    }
    this.push('Yoga.nodeStyleSetMinHeight' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetMinWidth:{value:function(nodeName, value) {
    var valueStr = toValueHaxe(value);
    if (valueStr == 'Constants.Auto') {
      return;
    }else {

    }
    this.push('Yoga.nodeStyleSetMinWidth' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
    
  }},

  YGNodeStyleSetOverflow:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetOverflow(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetPadding:{value:function(nodeName, edge, value) {
    this.push('Yoga.nodeStyleSetPadding' + toMethodName(value) + '(' + nodeName + ', ' + edge + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetPosition:{value:function(nodeName, edge, value) {
    this.push('Yoga.nodeStyleSetPosition' + toMethodName(value) + '(' + nodeName + ', ' + edge + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetPositionType:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetPositionType(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},

  YGNodeStyleSetWidth:{value:function(nodeName, value) {
    this.push('Yoga.nodeStyleSetWidth' + toMethodName(value) + '(' + nodeName + ', ' + toValueHaxe(value) + ');');
  }},
});
