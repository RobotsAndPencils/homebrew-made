class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.5.0"
  head "https://github.com/RobotsAndPencils/xcodes.git"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.5.0'
    cellar :any_skip_relocation
    sha256 "2cd9927dc7d9f6a81e71d71db919eddf0c5e590e9e727f95c323deaddeec8dc9" => :mojave
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
