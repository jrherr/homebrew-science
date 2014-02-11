
require 'formula'

class Bowtie2 < Formula
  homepage 'http://bowtie-bio.sourceforge.net/bowtie2/index.shtml'
  url 'http://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.2.0/bowtie2-2.2.0-macos-x86_64.zip'
  sha256 '5f4dd63d1517f5006f8bf8dfd5494b34fff564c3c6426613e2fde1665769d640'

  def install
    system "make"
    bin.install %W(bowtie2 bowtie2-align bowtie2-build bowtie2-inspect)
  end

  def test
    system "bowtie2", "--version"
  end
end
