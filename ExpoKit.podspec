
# generated from template-files/ios/ExpoKit.podspec

Pod::Spec.new do |s|
  s.name = "ExpoKit"
  s.version = "35.0.0"
  s.summary = 'ExpoKit'
  s.description = 'ExpoKit allows native projects to integrate with the Expo SDK.'
  s.homepage = 'http://docs.expo.io'
  s.license = 'MIT'
  s.author = "650 Industries, Inc."
  s.requires_arc = true
  s.platform = :ios, "10.0"
  s.default_subspec = "Core"
  s.source = { :git => "http://github.com/expo/expo.git" }

  s.subspec "Core" do |ss|
    ss.source_files = "ios/Exponent/**/*.{h,m}", "template-files/keys.json"
    ss.preserve_paths = "ios/Exponent/**/*.{h,m}"
    ss.exclude_files = "ios/Exponent/Supporting/**", "ios/Exponent/Versioned/Optional/**/*.{h,m}"

    ss.dependency 'Amplitude-iOS', '~> 4.6'
    ss.dependency 'Analytics', '~> 3.7'
    ss.dependency 'AppAuth', '~> 1.2'
    ss.dependency 'CocoaLumberjack', '~> 3.5.3'
    ss.dependency 'Crashlytics', '~> 3.13.4'
    ss.dependency 'FBAudienceNetwork', '5.5.0'
    ss.dependency 'FBSDKCoreKit', '~> 5.6.0'
    ss.dependency 'FBSDKLoginKit', '~> 5.6.0'
    ss.dependency 'Fabric', '~> 1.10.2'
    ss.dependency 'GoogleSignIn', '~> 5.0'
    ss.dependency 'GoogleMaps', '~> 3.3'
    ss.dependency 'Google-Maps-iOS-Utils', '~> 2.1.0'
    ss.dependency 'lottie-ios', '~> 2.5.0'
    ss.dependency 'JKBigInteger2', '0.0.5'
    ss.dependency 'Branch', '~> 0.27.1'
    ss.dependency 'React' # explicit dependency required for CocoaPods >= 1.5.0

    # Universal modules required by ExpoKit so the code compiles
    ss.dependency 'UMCore'
    ss.dependency 'UMReactNativeAdapter'
    ss.dependency 'UMSensorsInterface'
    ss.dependency 'UMFileSystemInterface'
    ss.dependency 'UMPermissionsInterface'
    ss.dependency 'UMCameraInterface'
    ss.dependency 'UMConstantsInterface'
  end

  s.subspec "Payments" do |ss|
    ss.dependency "ExpoKit/Core"
    ss.dependency 'Stripe', '~> 10.1.0'
    ss.source_files = 'ios/Exponent/Versioned/Optional/Payments/*.{h,m}'
  end

  s.subspec "AR" do |ss|
    ss.dependency "ExpoKit/Core"
    ss.source_files = 'ios/Exponent/Versioned/Optional/ARKit/**'
  end

  s.subspec "FaceDetector" do |ss|
    ss.dependency "EXFaceDetector"
  end
end
