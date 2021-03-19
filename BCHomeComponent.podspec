#
# Be sure to run `pod lib lint BCHomeComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BCHomeComponent'
  s.version          = '0.1.0'
  s.summary          = 'A component of Home part of Beicai architecture.'

  s.description      = <<-DESC
Section part entrance of beicai industry report and live show etc.
                       DESC

  s.homepage         = 'https://github.com/chokNight/BCHomeComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bubuatt@sina.com' => 'zj4qwgtncd@privaterelay.appleid.com' }
  s.source           = { :git => 'https://github.com/chokNight/BCHomeComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'BCHomeComponent/Classes/**/*'
  
  s.resource_bundles = {
    'BCHomeComponent' => ['BCHomeComponent/Assets/Resource/*.xcassets']
  }
  
  s.subspec 'Util' do |ss|
    ss.source_files = 'BCHomeComponent/Classes/Util/*.swift'
  end
  
  s.subspec 'UI' do |ss|
    ss.source_files = 'BCHomeComponent/Classes/UI/*.swift'
    ss.ios.dependency 'SnapKit', '~>4.2.0'
    ss.dependency 'BCHomeComponent/Util'
  end
 
  s.subspec 'TargetExtension' do |ss|
    ss.source_files = 'BCHomeComponent/Classes/TargetExtension/*.swift'
    ss.ios.dependency 'CTMediator', '~>46'
    ss.dependency 'BCHomeComponent/UI'
  end
  
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end


