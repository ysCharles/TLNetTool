Pod::Spec.new do |s|

  s.name         = "TLNetTool"
  s.version      = "0.9.1"
  s.summary      = "基于 Alamofire 封装的网络库，基于 KingFisher 封装的网络图片加载方式"


  s.homepage     = "https://github.com/ysCharles/TLNetTool"

  s.license      = "MIT"

  s.author             = { "Charles" => "ystanglei@gmail.com" }

  s.source       = { :git => "https://github.com/ysCharles/TLNetTool.git", :tag => "#{s.version.to_s}" }
  s.platform 	 = :ios, "10.0"


  s.source_files  = "Sources/TLNetTool/*.swift"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # 
  s.dependency 'Kingfisher', '4.10.1'
  s.dependency 'Alamofire', '~> 5.4.4'
  s.swift_version = '5'
end
