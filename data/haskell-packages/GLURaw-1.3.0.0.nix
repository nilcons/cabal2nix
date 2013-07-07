{ cabal, freeglut, mesa, OpenGLRaw }:

cabal.mkDerivation (self: {
  pname = "GLURaw";
  version = "1.3.0.0";
  sha256 = "1sh87jz9161svsf719y63cr21wf4d7wpbz75g2c2xss301qhafg0";
  buildDepends = [ OpenGLRaw ];
  extraLibraries = [ freeglut mesa ];
  doCheck = false;
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Opengl";
    description = "A raw binding for the OpenGL graphics system";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
