//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_yoga.h"


namespace linc {
	
	namespace yoga {

		namespace node {
			YGNodeRef NewYogaNode() {
				return new YGNode();
			}

			YGNodeRef NewYogaNodeWithConfig(const YGConfigRef newConfig) {
				return new YGNode(newConfig);
			}			
		}


		namespace config {
			YGConfig
		}

	} //yoga

} //linc