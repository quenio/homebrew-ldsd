
class LdsdMath4alpha < Formula
  VERSION = "2018.04.19-4alpha"

  desc "The Math Language"
  homepage "https://github.com/quenio"
  url "https://raw.githubusercontent.com/quenio/ldsd-releases/master/ldsd-math/ldsd-math-#{VERSION}.zip"
  sha256 "a5437cf0a07364bf1876d4414aa056d2b426d92d06c2b61d0689f0d4dc1815db"

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
