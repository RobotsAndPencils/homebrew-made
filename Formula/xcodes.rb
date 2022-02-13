class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.19.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.19.0'
    sha256 cellar: :any_skip_relocation, mojave: "23cc91ad565e090b85921c51dfa7f709dde1360ebbfb118d1ac605ebd57c7789"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
