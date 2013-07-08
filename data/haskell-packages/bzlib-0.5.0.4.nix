{ cabal, bzip2 }:

cabal.mkDerivation (self: {
  pname = "bzlib";
  version = "0.5.0.4";
  sha256 = "1vf37y7wknrihf7hipd6lihkmn7sszbgfb325my52yzbjs3baccd";
  extraLibraries = [ bzip2 ];
  doCheck = false;
  meta = {
    description = "Compression and decompression in the bzip2 format";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
