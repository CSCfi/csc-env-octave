-- Version string
version = myModuleVersion()

-- Path to the application directory.
appl_dir = "/appl/soft/math/octave"

-- Add wrapper scripts to the path.
bin_dir = pathJoin(appl_dir, version, "bin")
prepend_path("PATH", bin_dir)

-- Path to the container image to run using apptainer or singularity.
image = pathJoin(appl_dir, version, "octave.sif")
setenv("OCTAVE_SING_IMAGE", image)
