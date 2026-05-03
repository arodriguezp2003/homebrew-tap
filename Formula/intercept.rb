class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-arm64.tar.gz"
      sha256 "a190bdeba40fc548a8e50cefa25011206e99bfb9ebbffb92990f99064cc18b0b"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-amd64.tar.gz"
      sha256 "fed3d4e6e3363a54e5d51d18a98e248a8bcad95414e62548356ae92e7a7a2eab"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-arm64.tar.gz"
      sha256 "f7f76b80629b6017a9e42cd0394e318f127455f593081959e2b34244a2837c10"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-amd64.tar.gz"
      sha256 "9e1d6ac6cafd893e9d83fecfbb0be69415e6b24193732460a2ef3ca9447c5279"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
