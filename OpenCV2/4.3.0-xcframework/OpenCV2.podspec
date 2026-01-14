Pod::Spec.new do |s|
  s.name         = "OpenCV2"
  s.version      = "4.3.0-xcframework"
  s.summary      = "OpenCV (Open Source Computer Vision Library) packaged as an XCFramework."
  s.description  = <<-DESC
                      OpenCV (Open Source Computer Vision Library) packaged as an XCFramework for iOS.
                   DESC
  s.homepage     = "https://opencv.org"
  s.license      = { :type => "Apache 2.0" }
  s.author       = { "OpenCV Team" => "info@opencv.org" }

  s.platform     = :ios, "15.0"
  s.source       = { :http => "https://raw.githubusercontent.com/intrtl/IRLibSwift/a08aa98a9a3245737425e03b87ad50e75a300ed6/opencv2.xcframework.zip" }

  s.vendored_frameworks = "opencv2.xcframework"
  s.requires_arc = false
  s.libraries    = "c++"
end


