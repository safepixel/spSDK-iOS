Pod::Spec.new do |s|
  s.name             = 'spSDK'
  s.version          = '0.1.0'
  s.summary          = 'spSDK gives you End to End encrpytion capability with almost zero code .'
 

  s.description      = <<-DESC
  Provide security & safety to your users with no hassle.
  By integrating End to End Encryption in your app.
  https://sdk.safepixel.app 
                       DESC

  s.homepage         = 'https://sdk.safepixel.app'
  s.license          = { :type => 'Proprietary', :file => 'LICENSE' }
  s.author           = { 'Safe Pixel' => 'sameh@safepixel.app' }
  s.source           = { :git => 'https://github.com/safepixel/spSDK-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://facebook.com/safepixel'

  s.ios.deployment_target  = '10.0'
  s.public_header_files = "spSDK.framework/Headers/*.h"
  s.source_files = "spSDK.framework/Headers/*.h"
  s.vendored_frameworks = "spSDK.framework"
  s.swift_versions = '4.2'
end
