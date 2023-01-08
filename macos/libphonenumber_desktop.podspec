#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint libphonenumber_desktop.podspec` to validate before publishing.
#
Pod::Spec.new do |spec|
  spec.name          = 'libphonenumber_desktop'
  spec.version       = '0.0.1'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/leam-tech/libphonenumber_desktop'
  spec.authors       = { 'Leam' => 'your-email@example.com' }
  spec.summary       = 'macOS Flutter bindings for linphonenumber'
  spec.description      = <<-DESC
A new Flutter project.
                       DESC

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/LibphonenumberDesktop.xcframework"
  spec.dependency 'FlutterMacOS'

  spec.platform = :osx, '10.11'
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  spec.osx.deployment_target = '10.11'
  spec.swift_version = '5.0'
end
