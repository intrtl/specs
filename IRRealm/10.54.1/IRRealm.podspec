# coding: utf-8
Pod::Spec.new do |s|
  s.name                    = 'IRRealm'
  version                   = '10.54.1'
  s.version                 = version
  s.cocoapods_version       = '>= 1.10'
  s.summary                 = 'Realm is a modern data framework & database for iOS, macOS, tvOS & watchOS.'
  s.description             = <<-DESC
                              The Realm Database, for Objective-C. (If you want to use Realm from Swift, see the “RealmSwift” pod.)

                              Realm is a fast, easy-to-use replacement for Core Data & SQLite. Use it with Atlas Device Sync for realtime, automatic data sync. Works on iOS, macOS, tvOS & watchOS. Learn more and get help at https://www.mongodb.com/docs/realm/sdk/swift/.
                              DESC
  s.homepage                = "https://github.com/intrtl/IRRealm.git"
  s.source                  = { :git => "https://github.com/intrtl/IRRealm.git", :tag => "#{s.version}" }
  s.author                  = { 'Realm' => 'realm-help@mongodb.com' }
  s.library                 = 'c++', 'z', 'compression'
  s.requires_arc            = true
  s.social_media_url        = 'https://twitter.com/realm'
  s.documentation_url       = "https://docs.mongodb.com/realm/sdk/swift"
  s.license                 = { :type => 'Apache 2.0', :file => 'LICENSE' }

  s.ios.frameworks          = 'Security'
  s.ios.weak_framework      = 'UIKit'
  s.tvos.weak_framework     = 'UIKit'
  s.watchos.weak_framework  = 'UIKit'

  s.pod_target_xcconfig     = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                                'CLANG_CXX_LANGUAGE_STANDARD' => 'c++20',
                                'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO',
                                'OTHER_CPLUSPLUSFLAGS' => '-isystem "${PODS_ROOT}/Realm/include/core" -fvisibility-inlines-hidden',
                                'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Realm/include" "${PODS_ROOT}/Realm/include/Realm"',

                                'IPHONEOS_DEPLOYMENT_TARGET_1500' => '12.0',
                                'IPHONEOS_DEPLOYMENT_TARGET_1600' => '12.0',
                                'IPHONEOS_DEPLOYMENT_TARGET' => '$(IPHONEOS_DEPLOYMENT_TARGET_$(XCODE_VERSION_MAJOR))',
                                'MACOSX_DEPLOYMENT_TARGET_1500' => '10.13',
                                'MACOSX_DEPLOYMENT_TARGET_1600' => '10.13',
                                'MACOSX_DEPLOYMENT_TARGET' => '$(MACOSX_DEPLOYMENT_TARGET_$(XCODE_VERSION_MAJOR))',
                                'WATCHOS_DEPLOYMENT_TARGET_1500' => '4.0',
                                'WATCHOS_DEPLOYMENT_TARGET_1600' => '4.0',
                                'WATCHOS_DEPLOYMENT_TARGET' => '$(WATCHOS_DEPLOYMENT_TARGET_$(XCODE_VERSION_MAJOR))',
                                'TVOS_DEPLOYMENT_TARGET_1500' => '12.0',
                                'TVOS_DEPLOYMENT_TARGET_1600' => '12.0',
                                'TVOS_DEPLOYMENT_TARGET' => '$(TVOS_DEPLOYMENT_TARGET_$(XCODE_VERSION_MAJOR))',

                                'OTHER_LDFLAGS' => '"-Wl,-unexported_symbols_list,${PODS_ROOT}/Realm/Configuration/Realm/PrivateSymbols.txt"',
                              }

  s.ios.deployment_target   = '12.0'
  s.osx.deployment_target   = '10.13'
  s.watchos.deployment_target = '4.0'
  s.tvos.deployment_target = '12.0'

  s.vendored_frameworks  = 'core/realm-monorepo.xcframework', 'Realm.xcframework'
end
