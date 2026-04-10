{
  fetchPypi,
  buildPythonPackage,
  tensorflow,
  keras,
  tf-keras,
}:
buildPythonPackage rec {
  pname = "tensorflow-hub";
  version = "0.16.1";
  format = "wheel";

  src = fetchPypi {
    pname = "tensorflow_hub";
    inherit version;
    format = "wheel";
    sha256 = "e10c184b3d08daeafada11ffea2dd46781725b6bef01fad1f74d6634ad05311f";
  };

  propagatedBuildInputs = [tensorflow keras tf-keras];

  doCheck = false;

  pythonImportsCheck = ["tensorflow_hub"];
}
