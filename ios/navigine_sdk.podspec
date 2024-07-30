Pod::Spec.new do |s|
  s.name             = 'navigine_sdk'
  s.version          = '0.0.6'
  s.summary          = 'A new flutter plugin project.'
  s.description      = 'A new flutter plugin project.'
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE.md' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.platform = :ios, "7.0"
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.ios.deployment_target = '11.0'

  s.frameworks = 'CoreGraphics','Foundation','OpenGLES','CoreMotion','CoreFoundation','UIKit','QuartzCore','SystemConfiguration','CoreLocation', 'CoreText', 'CoreBluetooth', 'GLKit'
  s.libraries = 'c++'
  s.static_framework = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  s.vendored_framework = 'Frameworks/Navigine.xcframework'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
