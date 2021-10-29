require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-maps"
  s.version      = package['version']
  s.summary      = "React Native Mapview component for iOS + Android (fork by bbcuongnv)"

  s.authors      = { "bbcuongnv" => "vancuonggid@gmail.com" }
  s.homepage     = "https://github.com/bb-cuongnv/react-native-maps#readme"
  s.license      = "MIT"
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/bb-cuongnv/react-native-maps.git", :tag=> "v#{s.version}" }
  s.source_files  = "lib/ios/AirMaps/**/*.{h,m}"

  s.dependency 'React-Core'
end
