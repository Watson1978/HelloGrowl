class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
    GrowlApplicationBridge.setGrowlDelegate(self)
    GrowlApplicationBridge.notifyWithTitle(
      "Hello", 
      description:"This is test notification",
      notificationName:"Foo",
      iconData:nil,
      priority:0,
      isSticky:true,
      clickContext:nil)
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end
