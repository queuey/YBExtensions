#
# Be sure to run `pod lib lint YBExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  #库名称
  s.name             = 'YBExtensions'

  #指定支持的平台和版本，不写则默认支持所有的平台，如果支持多个平台，则使用下面的deployment_target定义
  s.platform = :ios
  #版本号
  s.version          = '0.1.0'
  #库简短介绍
  s.summary          = 'A Great Swift Extensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  #开源库描述 
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  #开源库地址，或者是博客、社交地址等
  s.homepage         = 'https://github.com/queuey/YBExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  #开源库作者
  s.author           = { 'queuey' => 'queuey@163.com' }
  #开源库GitHub的路径与tag值，GitHub路径后必须有.git,tag实际就是上面的版本
  s.source           = { :git => 'https://github.com/queuey/YBExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  #社交网址
  s.social_media_url = 'http://blogwenbo.com/'
  
  s.swift_version = "4.2"
  # s.swift_versions = ['4.0', '4.2', '5.0']
  #开源库最低支持
  s.ios.deployment_target = '8.0'
  #源库资源文件
  s.source_files = 'YBExtensions/Classes/**/*'
  

  #依赖系统库
  s.frameworks = 'Foundation'


  #开源库依赖库
  # s.dependency "Masonry", "~> 1.0"
  
  #添加系统依赖静态库
  #s.library = 'sqlite3', 'xml2'
  
  #添加依赖第三方的framework
  #s.vendored_frameworks = 'XXXX/XXXX/**/*.framework'
  
  #静态库.a
  #s.vendored_library = 'XXXX/XXX/XXX.a', 'YYY/YYY/Y.a'
  
  #添加资源文件
  #s.resource = 'XXX/XXXX/**/*.bundle'
  
  #在 podspec 文件中添加 s.static_framework = true，CocoaPods 就会把这个库配置成static framework。同时支持 Swift 和 Objective-C
  #s.static_framework = true



end
