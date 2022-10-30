class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "1.1.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/1.1.0'
    sha256 cellar: :any_skip_relocation, mojave: "21a9c1c6d999623e92d1c9144c1bef9616509bcb5d60c0cd8603df5060b50713"
    sha256 cellar: :any_skip_relocation, arm64_mojave: "21a9c1c6d999623e92d1c9144c1bef9616509bcb5d60c0cd8603df5060b50713"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
