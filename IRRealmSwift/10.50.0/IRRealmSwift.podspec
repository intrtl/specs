Pod::Spec.new do |spec|
  spec.name         = "IRRealmSwift"
  spec.version      = "10.50.0"
  spec.summary      = "RealmSwift framework built from official repository as xcframework to fix integration" 
  spec.static_framework = true;
  spec.description  = <<-DESC
                      RealmSwift framework built from official repository as xcframework to fix integration
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRRealmSwift.git"
  spec.license      = "MIT"
  spec.author       = { "Alexander Shmakov" => "alexander.shmakov@ailet.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/intrtl/IRRealmSwift.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'RealmSwift.xcframework'
end
