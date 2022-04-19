Pod::Spec.new do |spec|
  spec.name         = "IrLibSwift"
  spec.version      = "4.2.4"
  spec.summary      = "Framework with Ailet functionality written on Swift" 
  spec.static_framework = true;
  spec.description  = <<-DESC
                         Framework with Ailet functionality written on Swift.
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRLibSwift.git"
  spec.license      = "MIT"
  spec.author             = { "Alexander Shmakov" => "alexander.shmakov@intrtl.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/intrtl/IRLibSwift.git", :tag => "#{spec.version}" }
  spec.source_files = 'IRLib/IrLibSwift.framework/Headers/*.h'
  spec.public_header_files = 'IRLib/IrLibSwift.framework/Headers/*.h'
  spec.ios.vendored_frameworks = 'IRLib/IrLibSwift.framework'
  spec.dependency "Realm", "~> 5.5.0"
  spec.dependency "YandexMobileMetrica/Dynamic", "3.14.0"
  spec.dependency "BugfenderSDK", "1.8.0"
  spec.dependency "OpenCV2", "3.4.10"
  spec.dependency "Intercom", "10.3.4"
end
