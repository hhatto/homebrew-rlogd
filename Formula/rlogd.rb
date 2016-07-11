require 'formula'

class Rlogd < Formula
  homepage 'https://github.com/pandax381/rlogd'
  url 'https://github.com/pandax381/rlogd/archive/v0.4.6.tar.gz'
  sha256 'ca7dd203065d19b2b64d1bd688a10ac188afd9c94363d56fa0441d26c6609b84'

  depends_on :autoconf
  depends_on 'libev'

  def install
    system 'sh autogen.sh'
    system './configure'
    system 'make'
    system 'make', 'install'
  end
end
