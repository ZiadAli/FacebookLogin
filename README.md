# FacebookLogin

This Xcode Project is configured to provide Facebook and Firebase login capabilities. To utilize these functionalities, perform the following steps.

1. Create an app on Facebook
2. Create a database on Firebase
3. Add an app to Firebase using some custom bundle ID and download the Google plist file
4. Download/clone this repository and change the bundle ID to the ID you put in Firebase
5. Drag in the plist file you downloaded from Firebase into the FacebookLogin folder (underneath the bridging-header file)
6. Go to Add Product in Facebook and go through the Quickstart steps to see what code you need to copy into the info.plist file. Copy both sections of that code
7. In Firebase's Authentication tab, under Sign-In Methods, enable Facebook and copy in your App ID and App Secret from the Facebook Dashboard for your app
8. Copy the OAuth Redirect URI from Firebase to the Facebook Login section under Products in the Facebook Developer's site. The heading should read "Valid OAuth redirect URIs"
9. Add the same OAuth URI to Swift by selecting FacebookLogin in the file navigator at the very top (next to the blue App Store logo), navigating to the Info tab, adding in a URL Type, and copying the OAuth URI into the URL Schemes box
10. Connect an actual device to test. Sometimes the login button doesn't work well on the simulator
11. If there are errors try running anyway; they will most likely go away unless you performed a step incorrectly. 

As a summary, at the end of this process you should make sure that there are 2 instances of your Facebook App ID in the Info.plist file, the Google plist file came from your own database, and you added the OAuth URI reference to both Facebook and Xcode.
