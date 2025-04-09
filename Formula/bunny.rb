class Bunny < Formula
  desc "Prints a random bunny (or some other animal)"
  homepage "https://github.com/chinosu/bunny"
  url "https://github.com/Chinosu/bunny/archive/refs/tags/0.1.0.tar.gz"
  sha256 "cd55107ab22d692cda31c01eea021a5c63250048d5002ef60aa8b3ba4fabe76e"
  license "MIT"

  depends_on "zig" => :build

  def caveats
    <<~EOS
      To run `bunny` on shell startup, add the following to your shell profile:
        
        bunny

    EOS
  end

  def install
    system "zig", "build"
    bin.install "zig-out/bin/bunny"
  end

  test do
    system "#{bin}/bunny"
  end
end
