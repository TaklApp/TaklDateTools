Pod::Spec.new do |s|
s.name             = 'TaklDateTools'
s.version          = '0.1.0'
s.summary          = 'Swift 3 conversion of CupertinoYankee pod and Swift 3 conversion of select methods from DateTools pod'

s.description      = <<-DESC
Swift 3 conversion of CupertinoYankee pod and Swift 3 conversion of select methods from DateTools pod. Check out Github repo Tests target for examples of how to use.
DESC

s.homepage         = 'https://github.com/TaklApp/TaklDateTools'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Abbey Jackson' => 'abbey@abbeyjackson.ca' }
s.source           = { :git => 'https://github.com/TaklApp/TaklDateTools.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'TaklDateTools/*.swift'

end
