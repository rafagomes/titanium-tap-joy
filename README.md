Titanium Module for IOS and Android
================

Tapjoy working module for Appcelerator Titanium

The idea is to maintain updated, but for that I need feedback.  

I expect to help those who has problems.

Hope you guys like it.  

Any bugfixes or questions...just put some issue.

###Tested versions
3.2.2.GA

##Dependencies

###Iphone
Copy TapjoyResources.bundle to your Resources/iphone folder

###Android
Insert these lines into your tiapp.xml -> inside manifest -> inside application...like this  
```
  <android xmlns:android="http://schemas.android.com/apk/res/android">
        <manifest android:versionCode="6">
            <application android:debuggable="false" android:hardwareAccelerated="true" android:largeHeap="true" android:theme="@style/Theme.MyTheme">
            	<activity android:name="com.tapjoy.TJCOffersWebView" android:configChanges="orientation|keyboardHidden|screenSize" />
				<activity android:name="com.tapjoy.TapjoyFullScreenAdWebView" android:configChanges="orientation|keyboardHidden|screenSize" />
				<activity android:name="com.tapjoy.TapjoyVideoView" android:configChanges="orientation|keyboardHidden|screenSize" />
				<activity android:name="com.tapjoy.TJAdUnitView" android:configChanges="orientation|keyboardHidden|screenSize" android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" android:hardwareAccelerated="true" />
				<activity android:name="com.tapjoy.mraid.view.ActionHandler" android:configChanges="orientation|keyboardHidden|screenSize" />
				<activity android:name="com.tapjoy.mraid.view.Browser" android:configChanges="orientation|keyboardHidden|screenSize" />
            </application>
        </manifest>
    </android>
```

## Usage

in your app.js

```
var tapJoy = require('ti.tapjoy');
if (Titanium.Platform.name == 'android') {
	tapJoy.requestTapjoyConnect('APPID-FOR-ANDROID', 'APPSECRETKEY-FOR-ANDROID');
} else {
	tapJoy.requestTapjoyConnect('APPID-FOR-IOS', 'APPSECRETKEY-FOR-IOS');
}
```
