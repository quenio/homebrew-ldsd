
class LdsdMathAT20180419 < Formula
  VERSION = "2018.04.19-alpha"

  desc "The Math Language"
  homepage "https://github.com/quenio"
  url "https://raw.githubusercontent.com/quenio/ldsd-releases/master/ldsd-math/ldsd-math-#{VERSION}.zip"
  sha256 "15cf8e763b6a0bbf528306bece5c6c55a501a01100281db788ce2bfaece85684"

  def install
    inreplace "bin/maths", "##PREFIX##", "#{prefix}/libexec"
    inreplace "bin/mathc", "##PREFIX##", "#{prefix}/libexec"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/maths"
    bin.install_symlink libexec/"bin/mathc"
  end

  test do
    #assert_equal "Version: #{VERSION}", `maths --version`.strip
    #assert_equal "Version: #{VERSION}", `mathc --version`.strip
  end
end
