class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-arm64.tar.gz"
      sha256 "056a5166fe03c9d2c00f37f31bde6b4bf5fac7986c48609e13e6233594a6bbac"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-amd64.tar.gz"
      sha256 "07ed9cc66abceeec44b33776271eb80bd1635f5ba97df83f932e003a8bedceda"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-arm64.tar.gz"
      sha256 "b4d44162960f0ad7100519be32f43525c6808956ebb34dde5caa999a3d863a19"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-amd64.tar.gz"
      sha256 "0fbfa38a3905b802e36fdf7917a5a9d9f8ab03a62a66bf3bbf64072a2ab6b29d"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
