class Bunny < Formula
  desc "Prints a random bunny (or some other animal)"
  homepage "https://github.com/chinosu/bunny"
  url "https://github.com/chinosu/bunny/archive/refs/tags/0.1.1.tar.gz"
  sha256 "d44b2e8c5486c1a9706e7f8ffd9b29afb83d923c098e85cd5653a5c6159ebfa5"
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
