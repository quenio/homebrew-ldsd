
class LdsdMathAT2018 < Formula
  VERSION = "2018.04.19-2alpha"

  desc "The Math Language"
  homepage "https://github.com/quenio"
  url "https://raw.githubusercontent.com/quenio/ldsd-releases/master/ldsd-math/ldsd-math-#{VERSION}.zip"
  sha256 "ae97dbcb8634119ddbe21c274e24143bb1d49b20c3758d248e2147111e37b9bb"

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
