# renopy
Potential bug on Renovatebot?

Please install piptool with `pip install pip-tools`
and then run `scripts/update-reqs.sh` to update the dependencies

# Expected Behavior:

Renovate picks up the new necessary version the `.in` files and bumps the version of e.g. python-magic to 0.24.1 using `pip-tools compile`

# Actual Behavior:

Renovate modifies the `txt` files without adjusting the `.in` files. It creates a lot of noise for us.
