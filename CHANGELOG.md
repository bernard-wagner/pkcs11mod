# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v0.0.1]

### Added

- Implemented all `pkcs11.Ctx` methods
- `SignNull`, `DigestNull`, `EncryptNull` and `DecryptNull`
- Info to README.md about differences in fork

### Changed

- Added Go Module support

### Removed

- Makefile
- Intermediate linking step defined in `pkcs11_exported.c`
- Logging to a file

