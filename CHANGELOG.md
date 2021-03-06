# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.4.1] - 2019-04-17
### Added
- overwrite flag to upload

## [0.4.0] - 2019-04-17
### Added
- async_status method
- AsyncStatus entity
- AsyncResultWrapper entity

## [0.3.1] - 2019-04-17
### Changed
- comments

## [0.3.0] - 2019-04-16
### Changed
- move Operation from Entities to Core

## [0.2.4] - 2019-04-13
### Fixed
- fix Operation "done" and "block" variables
- syntax error in Operation "esult -> result"

## 0.2.3 - 2019-04-13 [YANKED]

## [0.2.3] - 2019-04-13
### Fixed
- fix of fix: invoke method function in block_binding context

## 0.2.2 - 2019-04-13 [YANKED]

## [0.2.2] - 2019-04-13
### Fixed
- invoke method function in block_binding context

## 0.2.1 - 2019-04-13 [YANKED]

## [0.2.1] - 2019-04-13
### Fixed
- operation.rb:66: syntax error, unexpected end-of-input, expecting keyword_end

## 0.2.0 - 2019-04-13 [YANKED]

## [0.2.0] - 2019-04-13
### Added
- The Operation
- The OperationResult
- The OperationAlreadyCompleted error
### Changed
- All adapter methods returns OperationResult wrapper

## [0.1.4] - 2019-04-09
### Added
- The flag of overwriting of resource (file/dir)

## [0.1.3] - 2019-04-09
### Added
- AccessDenied error

## [0.1.2] - 2019-04-09
### Added
- ResourceNotFound error
- The flag of permanently removed of resource (file/dir)

## [0.1.1] - 2019-04-09
### Added
- InvalidResourceType error

## [0.1.0] - 2019-04-06
### Added
- MultiCloud entities
- MultiCloud errors
- MultiCloud BaseAdapter
- CHANGELOG.md