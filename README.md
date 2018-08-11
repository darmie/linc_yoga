# LINC/YOGA
Yoga is a cross-platform layout engine which implements Flexbox

This is a Haxe/LINC extern library for the [facebook yoga](https://github.com/facebook/yoga) C++ library.

For more information, see the [Yoga website](https://yogalayout.com/)

____

This library works with the Haxe cpp target only.
___


# Install

`$ haxelib dev linc_yoga https://github.com/darmie/linc_yoga.git`


# Usage

```hx
import facebook.Yoga

var config:Config = Yoga.newConfig();

var node:Node = Yoga.newNodeWithConfig(config);
		
node.setLayout(Layout.init());

Yoga.nodeCalculateLayout(node, 200.0, 200.0, facebook.yoga.Enums.Direction.LTR);

var width:Float = node.getLayout().dimensions[0];
var height:Float = node.getLayout().dimensions[1];

trace('${width}, ${height}');
```
_____



# MIT License

Copyright (c) 2014-present, Facebook, Inc.

Copyright (c) 2018, Damilare Akinlaja.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
