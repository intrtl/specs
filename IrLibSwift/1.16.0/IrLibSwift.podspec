Pod::Spec.new do |spec|
  spec.name         = "IrLibSwift"
  spec.version      = "1.16.0"
  spec.summary      = "Framework with Intelligence Retail functionality written on Swift"
  spec.static_framework = true;
  spec.description  = <<-DESC
                         Framework with Intelligence Retail functionality written on Swift.
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRLibSwift.git"
  spec.license      = "MIT"
  spec.author             = { "Alexander Shmakov" => "alexander.shmakov@intrtl.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/intrtl/IRLibSwift.git", :tag => "#{spec.version}" }
  spec.source_files = 'IRLib/IrLibSwift.framework/Headers/*.h'
  spec.public_header_files = 'IRLib/IrLibSwift.framework/Headers/*.h'
  spec.ios.vendored_frameworks = 'IRLib/IrLibSwift.framework'
  spec.dependency "Realm", "~> 5.5.0"
  spec.dependency "YandexMobileMetrica/Dynamic", "3.11.1"
  spec.dependency "BugfenderSDK", "1.8.0"
end
