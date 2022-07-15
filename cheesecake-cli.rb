# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CheesecakeCli < Formula
  desc "CheesecakeLabs CLI"
  homepage "https://github.com/CheesecakeLabs/cheesecake-cli"
  url "https://github.com/CheesecakeLabs/cheesecake-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b8c4ca28afe34f1c4db5d33cc9865c84c312c8089e71cfa0217c1303ac9c43dc"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["src"]
    bin.install "ckl.sh"
    bin.install_symlink "bin" => "ckl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cheesecake-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
