

Pod::Spec.new do |s|

  s.name         = 'PEPReaderSDK_XES'

  s.version      = '2.8.19'

  s.summary      = '人教点读新SDK'

  s.author       = { 'PEP' => 'hans@pep.com.cn' }

  s.platform     =  :ios, '11.0'

  s.homepage     = 'https://github.com/PEPDigitalPublishing/PEPReaderSDK_XES'

  s.source       = { :git => 'https://github.com/PEPDigitalPublishing/PEPReaderSDK_XES.git'}

  s.vendored_frameworks = 'PEPReaderSDK_XES.framework'
  
  s.static_framework = true
  
  s.source_files = 'PEPReaderSDK_XES.framework/Headers/*.h'
  
  s.resources = ['PDFReaderSDKDiandu.xcassets', 'PEPReaderSDK_XES.framework/PEPPDFReaderSDK.bundle']


  s.frameworks   = 'MobileCoreServices', 'Security', 'CoreTelephony', 'AudioToolbox', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'AddressBook', 'CoreLocation'

  
  s.dependency 'Masonry'
  s.dependency 'SAMKeychain'
  s.dependency 'iosMath'

# SSZipArchive库为强依赖，此处经对接方项目特殊要求才注释掉
#  s.dependency 'SSZipArchive'

#   s.dependency 'PEPBigData', :git => 'https://github.com/PEPDigitalPublishing/PEPBigData.git'
#   s.dependency 'PEPNetworking', :git => 'https://github.com/PEPDigitalPublishing/PEPNetworking.git'

   s.dependency 'PEPBigData', '>= 0.4.4'
   s.dependency 'PEPNetworking', '>= 0.4.1'
   s.dependency 'MZTimerLabel'
#  此处为讯飞语音SDK，可以不从该地址下载，但是必须保证项目中存在iflyMSC.framework
#  s.dependency 'PEPiFlyMSC', :git => 'https://github.com/PEPDigitalPublishing/PEPiFlyMSC.git'

#  此处为一起作业语音SDK，仅提供给一起作业使用，其他对接方请勿使用此SDK
#  s.dependency 'YIQISpeechEngine', :git => 'https://gitee.com/guxiong/YIQISpeechEngine.git'

   s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
   s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


  s.requires_arc = true

end



















