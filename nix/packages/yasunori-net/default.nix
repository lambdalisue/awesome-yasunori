{
  lib,
  buildDotnetModule,
  dotnetCorePackages,
}:
buildDotnetModule {
  pname = "yasunori.net";
  version = "0.0.1";

  src = lib.cleanSource ../../../packages/Yasunori.NET;

  projectFile = "Yasunori.sln";
  nugetDeps = ./deps.nix;

  dotnet-sdk = dotnetCorePackages.sdk_8_0;
  dotnet-runtime = dotnetCorePackages.runtime_8_0;

  executables = [ "Yasunori" ];

  doCheck = true;

  meta = {
    mainProgram = "Yasunori";
  };
}
