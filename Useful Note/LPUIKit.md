# LPUIKit


This repository aims to gather all UI components used throug all iOS applications.
The documentation is located inside the public directory or gitlab pages.
You can also take a look at the sample LPUICatalog application.
List of components
Here is a summary of components that are currently hosted within the kit
This work is based on this InvIsion project and for coherence, the listed components below refers to the name inside this InVision project.
Colors
Basic management system has been provided. This is based on this NSHipster blog post and use a custom swift package binary for code generation (See the 'tools/palette' directory).
Fonts
A basic text style enum inspired by Apple dynamic fonts is provided. Dynamicity is not handled here.
Development
Ruby dependencies
We use fastlane for diffetent task and other ruby tools for the development. To install the corresponding dependencies :
bundle install
If you do not know how to setup a proper ruby environement, we could advise you to take a look at rbenv. Go back here once installed.
Color code generation
The colors system is not freezed yet. We will probably move for a more generic template system. For now, a vanilla swift script is used. Take a look inside the tools/palette directory and read the Readme for more informations.
To trigger the code generation, build the GeneratePalette scheme.
NOTE: Do not forget to generate the missing code before releasing
Generate documentation
You can generate the documation using fastlane:
bundle exec fastlane documentation
Installation
Podfile
Inside your podfile, add the following line:
source 'git@gitlab.com:alephom/team-ios/cocoapods-specs.git'

...

pod 'LPUIKit', :git => 'git@gitlab.com:alephom/ios-components-v6.git'
XCFramework
If you prefer to use a compiled version, you can use the build_xcframework.sh script to generate one .xcframework you can simply drag and dropped into your project.
You can create a zipped file fot gitlab with the command:
./build_xcframework.sh zipped
Contributing
If you did not add the private repository for the specifications of LPUIKit:
pod repo add <a name like LyfPay-Specs> git@gitlab.com:alephom/ios-components-v6.git
When you're done with your patches, bump the version of the podspec, create a tag for your new version and push using this command:```
pod repo push <a name like LyfPay-Specs> LPUIKit.podspec
Distribute a new Testflight release
A basic fastlane lane is provided to upload a new version to testflight.
Start a command line inside the LPUIKit directory:
bundle exec fastlane build_testflight
NOTE: This will increment the build number of the project file (.xccodeproj and/or Info.plist). Do not forget to commit those files to avoid building a binary with an existing version.
    
