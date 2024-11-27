Pod::Spec.new do |spec|
  spec.name         = "IrLibSwift"
  spec.version      = "5.13.3"
  spec.summary      = "Framework with IR functionality written on Swift" 
  spec.static_framework = true;
  spec.description  = <<-DESC
                         Framework with IR functionality written on Swift.
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRLibSwift.git"
  spec.license      = "MIT"
  spec.author       = { "Intrtl" => "support@intrtl.com" }
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/intrtl/IRLibSwift.git", :tag => "#{spec.version}" }
  spec.frameworks = "CoreMotion", "UserNotifications", "Combine"
  spec.ios.vendored_frameworks = 'IrLibSwift.xcframework'
  spec.dependency "AppCenter", "~> 5.0.5"
  spec.dependency "OpenCV2", "~> 4.3.0"
  spec.dependency "BugfenderSDK", "2.0.0"
  spec.dependency "Intercom", "16.6.1"
  spec.dependency "Amplitude", "~> 8.8.0"
  spec.dependency "Realm", "10.54.1-xcframework"
  spec.dependency "RealmSwift", "10.54.1-xcframework"
end
