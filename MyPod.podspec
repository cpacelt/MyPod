
Pod::Spec.new do |spec|

spec.platform     = :ios
spec.ios.deployment_target = '12.0'
spec.name         = "MyPod"
spec.version      = "0.0.3"
spec.summary      = "iOS application for selling products of different businesses"
spec.requires_arc = true
spec.static_framework = true

spec.license = { :type => "MIT", :file => "LICENSE" }

spec.author = { "cpacelt" => "сзфсуде@svedcwda.team" }

spec.homepage = "https://github.com/cpacelt/MyPod"
spec.swift_version = "5.0"

spec.source = { :git => "https://github.com/cpacelt/MyPod.git",
:tag => "#{spec.version}" }


spec.source_files = "MyPod/**/*.{swift}"

# spec.resources = "FEat/FEat/**/*.{png,jpeg,jpg,storyboard,xib,xcassets,xcdatamodeld}"

spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

