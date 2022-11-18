class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "1.2.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/1.2.0'
    sha256 cellar: :any_skip_relocation, mojave: "94b823a331daa11f526bf15873284d8c0dbd0843c334644397bec82708474bed"
    sha256 cellar: :any_skip_relocation, arm64_mojave: "94b823a331daa11f526bf15873284d8c0dbd0843c334644397bec82708474bed"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
