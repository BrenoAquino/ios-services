platform :ios, '12.0'
use_frameworks!
inhibit_all_warnings!

target 'TMDBServices' do
  pod 'Moya', '14.0.0'
end

target 'TMDBServicesTests' do
  pod 'Moya', '14.0.0'
  pod 'Nimble', '9.0.0'
  pod 'Quick', '3.0.0'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12'
    end
  end
end
