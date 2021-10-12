# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Checkip < Formula
  desc "Simple cli utility which helps you check your public ip address."
  homepage "https://github.com/ambersariya/checkip"
  url "https://github.com/ambersariya/checkip/releases/download/v0.1.1/checkip-0.1.1.tar.gz"
  sha256 "67671645ff0be0f65bf7ec8fcd1076129d3357cc7e44185128e2895b69c8563c"
  license "GPL-3.0"

  # depends_on "cmake" => :build

  def install
    system "pip", "install", "https://github.com/ambersariya/checkip/releases/download/v0.1.1/checkip-0.1.1-py3-none-any.whl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test checkip`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
