Pod::Spec.new do |spec|
  spec.name         = "IrLibSwift"
  # последняя цифра - номер билда в проекте, повышается при выкладке в ТФ. В скомпилированном виде либа выкладываается без номера билда.
  spec.version      = "1.0.7.32"  
  spec.summary      = "Inner Pod for IrLibSwift Development"
  spec.description  = <<-DESC
                        Inner Pod for IrLibSwift Development.
                   DESC

  spec.homepage     = "https://gitlab.intrtl.com/dev-mobile/irlib-ios"
  spec.license      = "MIT"
  spec.author             = { "Alexander Shmakov" => "alexander.shmakov@intrtl.com" }
  spec.platform     = :ios, "9.1"
  spec.source       = { :git => "https://gitlab.intrtl.com/dev-mobile/irlib-ios", :tag => "#{spec.version}" }
  spec.source_files  = "IrLib", "IrLib/**/*.{swift,h,m}"
  spec.resources = "IrLib/**/*.{storyboard,xcassets,strings}"
  # spec.public_header_files = "IrLib/Public/*.swift"
  spec.swift_version = "5"
  # spec.exclude_files = "Classes/Exclude"
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
    spec.dependency "Realm", "~> 4.3.0"

end
