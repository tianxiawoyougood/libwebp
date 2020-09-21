#
# Be sure to run `pod lib lint IDDLibWebp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libwebp'
  s.version          = '1.1.0'
  s.summary          = 'Library to encode and decode images in WebP format.'

  s.description      = <<-DESC
Library to encode and decode images in WebP format.
                       DESC

  s.homepage         = 'https://developers.google.com/speed/webp/'
  s.license          = { :type => 'BSD', :file => 'COPYING' }
  s.author           = { 'Google Inc.' => 'mail@google.com' }
  s.source           = { :git => 'https://github.com/tianxiawoyougood/libwebp.git', :tag => s.version.to_s }
  s.compiler_flags   = '-D_THREAD_SAFE'
  s.requires_arc     = false
  s.platforms        = { :ios => '6.0' }
  s.pod_target_xcconfig = { "USER_HEADER_SEARCH_PATHS": "$(inherited) ${PODS_ROOT}/libwebp/ ${PODS_TARGET_SRCROOT}/" }
  s.preserve_paths   = 'src'

  s.ios.deployment_target = '6.0'

  s.source_files = 'src/webp/decode.h', 'src/webp/encode.h', 'src/webp/types.h', 'src/webp/mux_types.h', 'src/webp/format_constants.h', 'src/utils/*.{h,c}', 'src/dsp/*.{h,c}', 'src/dec/*.{h,c}', 'src/enc/*.{h,c}'

end