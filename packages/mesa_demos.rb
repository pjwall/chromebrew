require 'package'

class Mesa < Package
  version '8.2.0'
  source_url 'http://http.debian.net/debian/pool/main/m/mesa-demos/mesa-demos_8.2.0.orig.tar.gz'
  source_sha1 '4d5b2cc992a21cdef07da5ccd7a705039df6f094'

  depends_on 'binutils'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
