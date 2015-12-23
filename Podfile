source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '7.0'
inhibit_all_warnings!

xcodeproj 'EncryptedCoreData'

target :EncryptedCoreData do
pod 'MagicalRecord', '~> 2.2'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "#{target.name}"
  end
end