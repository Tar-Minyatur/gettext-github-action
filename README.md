# Gettext Validation Action

This action allows automatic validation of Gettext .po files through GitHub workflows.

## Usage

Add something like this to your GitHub workflows, e.g. in `.github/workflows/validation.yml`:

    ---
    name: Validate translation files
    on: [push, pull_request]
    jobs:
      validate:
        runs-on: ubuntu-latest
        steps:
          - uses: actions/checkout@v2
          - name: Validate .po files
            uses: Tar-Minyatur/gettext-validation@master
            with:
              folder: translations/
