Pod::Spec.new do |s|

  s.name         = "WeChatSDK"
  s.version      = "1.6.2"
  s.summary      = "官方微信iOS SDK"
  s.description  = "微信开放平台SDK 持续更新"
  s.homepage     = "http://open.weixin.qq.com/"

  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2014 Tencent All Rights Reserved.
                                                   LICENSE
                          }

  s.author              = { "weixinapp" => "weixinapp@qq.com" }
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/Guicai-Li/WeChatSDK.git", :tag => "v#{s.version}" }

  s.source_files  = "WeChatSDK/*.{h,m}"
  s.frameworks = "SystemConfiguration", "CoreTelephony"
  s.libraries = "z", "sqlite3","c++"
  s.vendored_libraries  = 'WeChatSDK/libWeChatSDK.a'
  s.requires_arc = true

end
