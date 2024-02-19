Pod::Spec.new do |spec|
  spec.name         = "IrLibSwift"
  spec.version      = "5.8.0-beta"
  spec.summary      = "Framework with Ailet functionality written on Swift" 
  spec.static_framework = true;
  spec.description  = <<-DESC
                         Framework with Ailet functionality written on Swift.
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRLibSwift.git"
  spec.license      = "MIT"
  spec.author       = { "Alexander Shmakov" => "alexander.shmakov@ailet.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/intrtl/IRLibSwift.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'IrLibSwift.xcframework'
  spec.dependency "YandexMobileMetrica/Dynamic", "4.5.0"
  spec.dependency "BugfenderSDK", "1.13.2"
  spec.dependency "OpenCV2", "4.3.0"
  spec.dependency "Intercom", "10.4.0"
  spec.dependency "Amplitude", "~> 8.8.0"
  spec.dependency "RealmSwift", "10.47.0"
  spec.dependency "Realm", "10.47.0"
end
