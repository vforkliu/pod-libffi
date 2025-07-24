Pod::Spec.new do |s|
  s.name         = 'zlibffi'
  s.version      = '3.5.1-1'
  s.summary      = 'Precompiled libffi 3.5.1 for iOS.'
  s.description  = 'libffi 3.5.1 built for iOS as a static library, packaged for Swift/ObjC usage.'
  s.homepage     = 'https://github.com/vforkliu/pod-libffi'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'JUN LIU' => 'vforkliu@gmail.com' }

  s.platform     = :ios, '12.0'
  s.source       = { :git => 'https://github.com/vforkliu/pod-libffi.git', :tag => s.version.to_s }

  s.source_files = 'include/ffi/*.h'
  s.public_header_files = 'include/ffi/*.h'
  s.preserve_paths = 'lib/libffi.a'
  s.vendored_libraries = 'lib/libffi.a'
  s.header_mappings_dir = 'include/ffi'

  s.requires_arc = false
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '5.0',
    'SWIFT_OPTIMIZATION_LEVEL' => '-Onone',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/zlibffi/ffi"'
  }

end
