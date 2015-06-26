require 'package'

class M4 < Package
  version '3.1.16'
  source_url 'http://http.debian.net/debian/pool/main/a/at/at_3.1.16.orig.tar.gz'

  depends_on 'flex'
 depends_on 'bison'

  def self.build
    system "./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
