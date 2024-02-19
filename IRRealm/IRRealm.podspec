Pod::Spec.new do |spec|
  spec.name         = "IRRealm"
  spec.version      = "10.47.0"
  spec.summary      = "Realm framework built from official repository as xcframework to fix integration" 
  spec.static_framework = true;
  spec.description  = <<-DESC
                      Realm framework built from official repository as xcframework to fix integration
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRRealm.git"
  spec.license      = "MIT"
  spec.author       = { "Alexander Shmakov" => "alexander.shmakov@ailet.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/intrtl/IRRealm.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'Realm.xcframework'
end
