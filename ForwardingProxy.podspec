Pod::Spec.new do |s|
  s.name          = "ForwardingProxy"
  s.version       = "0.0.1"
  s.summary       = "Split your app delegate into separate services!"
  s.homepage      = "https://github.com/geor-kasapidi/ForwardingProxy"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.authors       = { "Geor Kasapidi" => "geor.kasapidi@icloud.com" }
  s.platform      = :ios, "7.0"
  s.source        = { :git => "https://github.com/geor-kasapidi/ForwardingProxy.git", :tag => "v#{s.version}" }
  s.source_files  = "Source"
  s.frameworks    = "Foundation"
  s.requires_arc  = true
end
