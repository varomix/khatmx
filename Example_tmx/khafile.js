let project = new Project('New Project');
project.addAssets('Assets/**');
project.addSources('Sources');
project.addLibrary('khatmx');
project.windowOptions.width = 480;
project.windowOptions.height = 360;
// project.addDefine('debug_collisions');
resolve(project);
