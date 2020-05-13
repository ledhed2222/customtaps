cask 'ledhed2222openjdk8AT242b08' do
  version '8,242:b08'
  sha256 'b24754532fdefc3ae03c56dce972803fc78fd2243bbab12fb412a93aabf05adc'

  url 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u242-b08/OpenJDK8U-jdk_x64_mac_hotspot_8u242b08.pkg'
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases/latest"
  name 'AdoptOpenJDK 8'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK8U-jdk_x64_mac_hotspot_8u242b08.pkg'

  postflight do
    system_command '/usr/sbin/pkgutil', args: ['--pkg-info', 'net.adoptopenjdk.8.jdk'], print_stdout: true
  end
  uninstall pkgutil: 'net.adoptopenjdk.8.jdk'
end
