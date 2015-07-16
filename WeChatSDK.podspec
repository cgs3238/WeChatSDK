Pod::Spec.new do |s|
  s.name                = "WeChatSDK"
  s.version             = "1.5.1"
  s.summary             = "微信开放平台SDK，支持 arm64."
  s.source              = { :git => "https://github.com/Guicai-Li/WeChatSDK.git", :tag => "v#{s.version}" }
  s.platform            = :ios, '6.0'
  s.requires_arc        = true
  s.source_files        = 'WeChatSDK/*.{h,m}'
  s.platform            = :ios
  s.vendored_libraries  = 'WeChatSDK/libWeChatSDK.a'
  s.libraries   = 'SystemConfiguration.framework','libz.dylib','libsqlite3.0.dylib','libc++.dylib'
  s.author              = { "weixinapp" => "weixinapp@qq.com" }
  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2014 Tencent All Rights Reserved.
                                                   LICENSE
                          }
  s.homepage            = "http://open.weixin.qq.com/"
end

