class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "1.0.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/1.0.0'
    sha256 cellar: :any_skip_relocation, mojave: "23f4ee4ecac29c8816011895d18da9e78f2ec1fa3184489809d6e126039fa499"
    sha256 cellar: :any_skip_relocation, arm64_mojave: "23f4ee4ecac29c8816011895d18da9e78f2ec1fa3184489809d6e126039fa499"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
