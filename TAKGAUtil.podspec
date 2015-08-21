#
#  Be sure to run `pod spec lint TAKGAUtil.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "TAKGAUtil"
  s.version      = "0.1"
  s.summary      = "Google Analytics Utility"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.homepage     = "https://github.com/taktem/TAKGAUtil"
  s.author       = { "SOMTD" => "totem.kc[at]me.com" }
  s.source       = { :git => "https://github.com/taktem/TAKGAUtil.git", :tag => "#{s.version}" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'TAKGAUtil/**/*.{h,m}'
  s.public_header_files = 'TAKGAUtil/**/*.{h}'
  s.dependency 'GoogleAnalytics-iOS-SDK', '~> 3.12'
end
