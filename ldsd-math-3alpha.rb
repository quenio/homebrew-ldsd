
class LdsdMath3alpha < Formula
  VERSION = "2018.04.19-3alpha"

  desc "The Math Language"
  homepage "https://github.com/quenio"
  url "https://raw.githubusercontent.com/quenio/ldsd-releases/master/ldsd-math/ldsd-math-#{VERSION}.zip"
  sha256 "ca0690edf09309584953bbe69d584904f1d0b31e58a815503d09861d4d43e393"

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
