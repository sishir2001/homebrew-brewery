class Pinrex < Formula
  desc "Pinrex:command-line tool to generate regex for postal codes"
  homepage "https://github.com/sishir2001/PinRex"
  url "https://github.com/sishir2001/PinRex.git", tag: "v1.1.4"
  license ""
  # head "https://github.com/sishir2001/PinRex.git", branch: "main"

  depends_on "cmake" => :build
  # depends_on "conan" => :build  # Ensure Conan is installed as a build dependency

  def install
    # Install dependencies using Conan
    # system "conan", "install", ".", "-of", "buildu
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    # system "cmake", "-S", ".", "-B", "build"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build", "--config", "Release"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test pinrex@1.1.1`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
