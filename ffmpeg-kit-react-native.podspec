require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios
  s.requires_arc      = true
  s.static_framework  = true

  s.source = {
    :http => "https://frostyk.s3.us-east-2.amazonaws.com/ffmpeg-kit-https-6.0-ios-xcframework.zip"
  }

  s.default_subspec   = 'video'

  s.dependency "React-Core"

end
