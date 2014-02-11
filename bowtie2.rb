require "formula"

class Bowtie2 < Formula
  homepage "http://bowtie-bio.sourceforge.net/bowtie2/index.shtml"
  url "http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.0/bowtie2-2.2.0-source.zip"
  sha1 "2a96ba39a61e48abe014ca32258e5dda2263c0f4"

  def install
    system "make"
    bin.install %W(bowtie2 bowtie2-build bowtie2-inspect)
  end

  test do
    system "false"
  end
end
