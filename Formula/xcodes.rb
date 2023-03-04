class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://www.xcodes.app"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "1.3.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/1.3.0'
    sha256 cellar: :any_skip_relocation, mojave: "f3908cec47dad544712e15133c713fde24f51ccd463aa582e856852be9bdb08e"
    sha256 cellar: :any_skip_relocation, arm64_mojave: "f3908cec47dad544712e15133c713fde24f51ccd463aa582e856852be9bdb08e"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
