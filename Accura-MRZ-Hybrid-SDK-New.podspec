Pod::Spec.new do |spec|

  spec.name         = "Accura-MRZ-Hybrid-SDK-New"
  spec.version      = "1.0.1"
  spec.summary      = "Accura MRZ is used for Optical character recognition."
  spec.description  = "Accura Scan mobile technology provides you with the ability to effectively use the device camera and quickly anboard a customer. Seamless Customer On-Boarding by scanning a MRZ."
  spec.homepage     = "https://github.com/accurascan/AccuraMRZ-iOS-SDK"
  spec.license      = "MIT"
  spec.author       = { "AccuraScan" => "connect@accurascan.com" }
  spec.platform     = :ios, "12.0"
  spec.static_framework = true
  spec.source       = { :git => "https://github.com/accurascan/MRZ-SDK-HYBRID-NEW.git", :tag => "1.0.1" }
  spec.preserve_paths = 'AccuraMRZ.framework'
  spec.vendored_frameworks = 'AccuraMRZ.framework'
  spec.requires_arc = true
  spec.swift_version = "5.0"
  spec.exclude_files = "accuraMRZSDK/*/.{png}"
  spec.dependency 'SVProgressHUD'
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end