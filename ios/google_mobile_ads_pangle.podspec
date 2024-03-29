#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_mobile_ads_pangle.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'google_mobile_ads_pangle'
  s.version          = '0.0.1'
  s.summary          = 'Google Mobile Ads mediation plugin for Pangle.'
  s.description      = <<-DESC
Google Mobile Ads mediation plugin for Pangle.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Taeho Kim' => 'jyte82@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'GoogleMobileAdsMediationPangle', '5.5.0.9.0'
  s.platform = :ios, '12.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
