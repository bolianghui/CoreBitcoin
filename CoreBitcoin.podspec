Pod::Spec.new do |s|
  s.name          = "CoreBitcoin"
  s.version       = "0.0.5"
  s.summary       = "The libraries token core need"

  s.description   = <<-DESC
  The libaray contains the CoreBitcoin and libscrypt.
  DESC

  s.homepage      = "https://github.com/bolianghui/CoreBitcoin"
  s.license       = {
    type: "Apache License, Version 2.0",
    file: "LICENSE"
  }

  s.author        = { "Neal Xu" => "imxuneal@gmail.com" }
  s.platform      = :ios, "9.0"

  s.source        = { :git => "https://github.com/bolianghui/CoreBitcoin.git", :tag => "#{s.version}" }
  s.source_files  = "CoreBitcoin/*.{h,m,c}", "libscrypt/*.{h,m,c}"
  s.exclude_files = ['*+Tests.{h,m}']
  s.requires_arc = true
  s.framework    = 'Foundation'
  s.ios.framework = 'UIKit'
  s.osx.framework = 'AppKit'
  s.dependency "GRKOpenSSLFramework",'1.0.2.20.2'
end
