
Pod::Spec.new do |s| #s代表文件夹位置为一级,ss代表文件夹位置为二级

  s.name         = "LoginModule"
  s.version      = "0.0.11"
  s.summary      = "LoginModule for iOS project."
  s.description  = <<-DESC
                  LoginModule
                  DESC
  s.homepage     = "https://github.com/zhudong10/LoginModule"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #导入工程的pch文件
  s.prefix_header_file = 'LoginModule/ZDPrefixHeader.pch'
  s.author             = { "zhudong" => "zhudongdong@91guoxin.com" }
  s.source       = { :git => "https://github.com/zhudong10/LoginModule", :tag => "#{s.version}" }
  s.source_files  = "LoginModule/LoginModule.h" #此处需要在本级目录下找到文件
              # 目的文件夹名称 #
  s.subspec 'LoginModule' do |ss| 
                      # 文件来源 #
    ss.source_files = 'LoginModule/LoginUI/**/*.{h,m}'
                      # 资源文件 #
    ss.resources = ['LoginModule/Login.xcassets', 'LoginModule/LoginUI/**/*.xib']
    #ss.resources = 'LoginModule/LoginUI/**/*.xib'
    #ss.resources = 'LoginModule/**/*.xcassets'
  end
s.subspec 'Category' do |ss| 
              # 文件来源 #
	ss.source_files = 'LoginModule/Category/**/*.{h,m}'
	end

end
