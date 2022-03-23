# renopy
Potential bug on Renovatebot?

Please install piptool with `pip install pip-tools`
and then run `scripts/update-reqs.sh` to update the dependencies

# Expected Behavior:

Renovate picks up the new necessary version the `.in` files and bumps the version of e.g. `python-magic==0.4.19` t the newst version `python-magic==0.4.24` using `pip-tools compile` or the `scripts/update-reqs.sh` which do the same.
This dependency sits in `requirements-common.in`. 

# Actual Behavior:

Renovate modifies the `requirements-*.txt` files without adjusting the `.in` files. It creates a lot of noise, as it also updates sub-dependencies, which we do not want.
