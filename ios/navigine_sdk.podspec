Pod::Spec.new do |s|
  s.name             = 'navigine_sdk'
  s.version          = '1.0.0'
  s.summary          = 'Navigine flutter plugin.'
  s.description      = 'Navigine flutter plugin.'
  s.authors           = 'Navigine'
  s.homepage         = 'none'
  s.license          = { :file => '../LICENSE.md' }
  s.source           = { :path => '.' }
  s.platform = :ios, "7.0"
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.ios.deployment_target = '11.0'

  s.frameworks = 'CoreGraphics','Foundation','OpenGLES','CoreMotion','CoreFoundation','UIKit','QuartzCore','SystemConfiguration','CoreLocation', 'CoreText', 'CoreBluetooth', 'GLKit', 'Metal'

  navigine_sdk_version = '2.20'

  s.libraries = 'c++'
  s.static_framework = true
  # Flutter dynamicaly lookup all symbols from executable, so we need for
  # all exported symbols will be available from executable.
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  # s.vendored_framework = 'Frameworks/Navigine.xcframework'

  s.dependency 'Navigine-Flutter', navigine_sdk_version

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
