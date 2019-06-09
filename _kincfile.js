
var project = new Project('linc_yoga');

if (platform === Platform.Android) {
	project.addDefine('ANDROID');
}

project.addIncludeDirs('lib/yoga/**.h');
project.addIncludeDirs('linc/**.h');
project.addFiles('linc/**.cpp');
project.addFiles('lib/yoga/**.cpp', { pch: 'hxcpp.h' });

resolve(project);