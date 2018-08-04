package facebook.yoga;

using facebook.yoga.Enums;
import facebook.yoga.Node.NodeRef;

@:keep
@:include('linc_yoga.h')
@:native('cpp.Reference<YGLogger>')
extern typedef Logger = Config.ConfigRef ->NodeRef ->LogLevel ->Dynamic ->Dynamic->Int;