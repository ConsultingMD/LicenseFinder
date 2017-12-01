# [4.0.3] / 2017-12-01

### Added
* v in front of version number - [a914401](https://github.com/pivotal/LicenseFinder/commit/a914401965c9d7d924eb70e5e5e497e3dbfc97a0) 

* Added prepare step for elixir projects - [38b08ea](https://github.com/pivotal/LicenseFinder/commit/38b08eae23b6b0c2bbaa3aea7845ab6a8d9b028b) - Li Tai

### Fixed
* - [b38a399](https://github.com/pivotal/LicenseFinder/commit/b38a3996c06a4118559b1cdb67c5c7c8b428834e) 
* Branch location - [75f9407](https://github.com/pivotal/LicenseFinder/commit/75f9407e4d4503f6a3632365312ab4b7fb5b2b80) 
* cleanup - [fe955f8](https://github.com/pivotal/LicenseFinder/commit/fe955f81a0baacd598c645f0096386b2928b52c2) 
* Credentials Issue - [f81d4dd](https://github.com/pivotal/LicenseFinder/commit/f81d4ddc70fd642dc0deae451da869e89ab8ad68) 
* Directory issue - [6e39940](https://github.com/pivotal/LicenseFinder/commit/6e39940ad00392c13c8700b42e107987350b0e40) 
* Disable host checking - [07021cc](https://github.com/pivotal/LicenseFinder/commit/07021cc400c3b495b7d504d3c00486e890867de8) 
* Incorrect directory - [6d61123](https://github.com/pivotal/LicenseFinder/commit/6d6112316c80e2501cb4fdc51973736257bc0214) 
* Make ssh dir - [201e4d8](https://github.com/pivotal/LicenseFinder/commit/201e4d809d06b680aded0020d1e552f68e9dedb1) 
* pushing of branches - [6b23c05](https://github.com/pivotal/LicenseFinder/commit/6b23c0524d520bd8c9bb9d0a5b8ee4a3aad68cda) 
* Remove push - [2d50e85](https://github.com/pivotal/LicenseFinder/commit/2d50e852d83f568d3b5d182eeb929676e8df3566) 
* Ruby command not found - [5a194dd](https://github.com/pivotal/LicenseFinder/commit/5a194dda7c7abbecbebcfe839bc3112dff13d627) 
* Test - [0af1ec0](https://github.com/pivotal/LicenseFinder/commit/0af1ec0e1b72f0551eee4de89ff104ed25b9ae26) 
* Test - [4a7fd01](https://github.com/pivotal/LicenseFinder/commit/4a7fd01990b97fb3bcbd93a422856e8a567cc606) 
* Test - [a778b42](https://github.com/pivotal/LicenseFinder/commit/a778b42296d8ebd98fbbaf7a6f6976612ea19028) 

### Changed
* Add caching - [ccfd8db](https://github.com/pivotal/LicenseFinder/commit/ccfd8db70924e12e212c4ff6b29499d11e246773) 
* Directory issue - [89c45b8](https://github.com/pivotal/LicenseFinder/commit/89c45b81f1c230ae6ffa3898fc4dc360ba58be9e) 
* Merge CI scripts - [1fcc07d](https://github.com/pivotal/LicenseFinder/commit/1fcc07d549be7b58ad9feb20ec1443cc1577d222) 
* Modify cache - [e7e8422](https://github.com/pivotal/LicenseFinder/commit/e7e84226bb39e5d447b421ab9ddfc1d76a87908d) 
* Update task ymls again - [ad21c4a](https://github.com/pivotal/LicenseFinder/commit/ad21c4a65112633a2d5a960032439b1a38130531) 
* Update task ymls yet again - [c49906b](https://github.com/pivotal/LicenseFinder/commit/c49906bfbddc64f60b9a641e7633f2ccb70e6f22) 
* Version number for testing - [fca470a](https://github.com/pivotal/LicenseFinder/commit/fca470af94c5e4b9fa8a498b1274bff743f44a2e) 

* Errors - [af2542d](https://github.com/pivotal/LicenseFinder/commit/af2542dd86e864e36a58794429338c0ee0042020) 

# [4.0.2] / 2017-11-16

### Fixed

* Fixed --quiet not being available on the report task
* Fixed --recursive not being available on the action_items task

# [4.0.1] / 2017-11-14

### Fixed

* Add missing toml dependency to gemspec

# [4.0.0] / 2017-11-10

### Changed

* CLI output has been altered to be clear about active states and installed states.
* option `--subprojects`have been renamed to `--aggregate_paths` in order to be clear about its functionality

### Fixed

* Fixed issue where dangling symbolic link would cause License Finder to crash and not continue. Instead, License Finder will now warn about the issue and continue.

# [3.1.0] / 2017-11-10

### Added

* Added support for [Carthage](https://github.com/Carthage/Carthage) 
* Added support for [gvt](https://github.com/FiloSottile/gvt)
* Added support for [yarn](https://yarnpkg.com/en/)
* Added support for [glide](https://github.com/Masterminds/glide)
* Added support for [GoVendor](https://github.com/kardianos/govendor)
* Added support for [Dep](https://github.com/golang/dep)
* Added support for [Conan](https://conan.io/)
* Added `--prepare` option
  * `--prepare`/`-p` is an option which can now be passed to the `action_items` or `report` task of `license_finder`
  * `prepare` will indicate to License Finder that it should attempt to prepare the project before running in a License scan.

### Changed

* Upgrade `Gradle` in Dockerfile
* Clean up some CLI interaction and documentation

### Fixed

* `build-essential` was added back into the Dockerfile after accidentally being removed
* Ignore leading prefixes such as 'The' when looking for licenses

# [3.0.4] / 2017-09-14

### Added
* Added concourse pipeline file for Docker image process (#335, #337)
* Add status checks to pull requests
* Allow Custom Pip Requirements File Path (#328, thanks @sam-10e)

### Fixed
* Fixed NPM stack too deep issue (#327, #329)

# [3.0.3] / Skipped because of accidentally yanking gem

# [3.0.2] / 2017-07-27:

### Added

* Add CI status checks to pull requests (#321)

### Fixed

* Support NPM packages providing a string for the licenses key (#317)
* Use different env-var to indicate ruby version for tests (#303)
* Resolve NPM circular dependencies (#306, #307, #311, #313, #314, #319, #322)

# [3.0.1] / 2017-07-12:

### Added

* Add --maven-options to allow options for maven scans (#305, thanks @jgielstra!)

### Fixed:

* Restore the original GOPATH after modifying it (#287, thanks @sschuberth!)
* LF doesn't recognize .NET projects using 'packages' directory (#290, #292, thanks @bspeck!)
* Use glob for finding acknowledgements path for CocoaPods (#177, #288, thanks @aditya87!)
* Fix some failing tests on Windows (#294, thanks @sschuberth!)
* Add warning message if no dependencies are recognized (#293, thanks @bspeck!)
* Switch to YAJL for parsing the json output from npm using a tmp file rather than an in-memory string (#301, #304)
* Fix dockerfile by explicitly using rvm stable (#303)
* Report multiple versions of the same NPM dependency (#310)

# [3.0.0] / 2016-03-02

### Added

* Changed dependencies to be unique based on name _and_ version (#241)
* Enable '--columns' option with text reports (#244, thanks @raimon49!)
* Flag maven-include-groups adds group to maven depenency information (#219, #258, thanks @dgodd!)
* Package managers determine their package management command (#250, Thanks @sschuberth!)
* Support --ignored_groups for maven
* Support `homepage` column for godeps dependencies, and dependencies from go workspaces using `.envrc`
* Support `license_links` column for csv option (#281, Thanks @lbalceda!)
* Added a Dockerfile for [licensefinder/license_finder](https://hub.docker.com/r/licensefinder/license_finder/)
* Switched from Travis to Concourse

### Fixed

* Gradle works in CI containers where TERM is not set (revert and fix of c15bdb7, which broke older versions of gradle)
* Check for the correct Ruby Bundler command: `bundle` (#233. Thanks, @raimon49!)
* Uses settings.gradle to determine the build file name (#248)
* Fix detecting the Gradle wrapper if not scanning the current directory (#238, Thanks @sschuberth!)
* Use maven wrapper if available on maven projects
* Check golang package lists against standard packages instead of excluding short package paths (#243)
* Update the project_sha method to return the sha of the dependency, not the parent project
* Change Maven wrapper to call mvn.cmd and fall back on mvn.bat (#263, Thanks @sschuberth!)
* Allow bower to run as root
* Fix packaging errors scanning pip based projects
* Add JSON lib attribute to handle deeply nested JSON (#269. Thanks, @antongurov!)
* Use the fully qualified name of the license-maven-plugin (#284)

# 2.1.2 / 2016-06-10

Bugfixes:

* NuGet limits its recursive search for .nupkg packages to the `vendor` subdirectory. (#228)


# 2.1.1 / 2016-06-09

Features:

* GoWorkspace now detects some non-standard package names with only two path parts. (#226)

Bugfixes:

* NuGet now appropriately returns a Pathname from #package_path (previously was a String) (#227)
* NuGet now correctly chooses a directory with vendored .nupkg packages


# 2.1.0 / 2016-04-01

* Features
  * support a `groups` in reports (#210) (Thanks, Jon Wolski!)
  * GoVendor and GoWorkspace define a package management tool, so they won't try to run if you don't have `go` installed
  * PackageManagers are not activated if the underlying package management tool isn't installed
  * detect GO15VENDOREXPERIMENT as evidence of a go workspace project
  * provide path-to-dependency in recursive mode (#193)
  * dedup godep dependencies (#196)
  * add support for MPL2 detection
  * detect .envrc in a parent folder (go workspaces) (#199)
  * miscellaneous nuget support improvements (#200, #201, #202)
  * miscellaneous go support improvements (#203, #204)
  * add support for Golang 1.5 vendoring convention (#207)
  * return the package manager that detected the dependency (#206)
  * Add support for including maven/gradle GroupIds with `--gradle-include-groups`
  * Godep dependencies can display the full commit SHA with `--go-full-version`
  * specific versions of a dependency can be approved (#183, #185). (Thanks, @ipsi!)
  * improved "go workspace" support by looking at git submodules. (Thanks, @jvshahid and @aminjam!)
  * added an "install path" field to the report output. (Thanks, @jvshahid and @aminjam!)
  * Licenses can be blacklisted.  Dependencies which only have licenses in the blacklist will not be approved, even if someone tries.
  * Initial support for the Nuget package manager for .NET projects
  * Experimental support for `godep` projects
  * Experimental support for "golang workspace" projects (with .envrc)
  * Improved support for multi-module `gradle` projects
  * Gradle 2.x support (experimental)
  * Experimental support for "composite" projects (multiple git submodules)
  * Experimental support for "license diffs" between directories

* Bugfixes
  * `rubyzip` is now correctly a runtime dependency
  * deep npm dependency trees no longer result in some packages having no metadata (#211)
  * columns fixed in "recursive mode" (#191)
  * gradle's use of termcaps avoided (#194)


# 2.0.4 / 2015-04-16

* Features

  * Allow project path to be set in a command line option (Thanks, @robertclancy!)


# 2.0.3 / 2015-03-18

* Bugfixes

  * Ignoring subdirectories of a LICENSE directory. (#143) (Thanks, @pmeskers and @yuki24!)


# 2.0.2 / 2015-03-14

* Features

  * Show requires/required-by relationships for pip projects
  * Expose homepage in CSV reports
  * Support GPLv3

* Bugfixes

  * license_finder works with Python 3; #140
  * For pip projects, limit output to the distributions mentioned in
    requirements.txt, or their dependencies, instead of all installed
    distributions, which may include distributions from other projects. #119


# 2.0.1 / 2015-03-02

* Features

  * Support for rebar projects


# 2.0.0 / 2015-03-02

* Features

  * Stores every decision that has been made about a project's dependencies,
    even if a decision was later reverted.  These decisions are kept in an
    append-only YAML file which can be considered an audit log.
  * Stores timestamps and other optional transactional metadata (who, why)
    about every kind of decision.
  * When needed, applies those decisions to the list of packages currently
    reported by the package managers.
  * Removed dependencies on sqlite and sequel.
  * The CLI never writes HTML or CSV reports to the file system, only to
    STDOUT. So, users have more choice over which reports to generate, when to
    generate them, and where to put them. See `license_finder report`.  If you
    would like to update reports automatically (e.g., in a rake task or git
    hook) see this gist: https://gist.github.com/mainej/1a4d61a92234c5cebeab.
  * The configuration YAML file is no longer required, though it can still be
    useful.  Most of its functionality has been moved into the decisions
    infrastructure, and the remaining bits can be passed as arguments to the
    CLI.  Most users will not need these arguments.  If the file is present, the
    CLI arguments can be omitted.  The CLI no longer updates this file.
  * Requires pip >= 6.0

* Bugfixes

  * `license_finder` does not write anything to the file system, #94, #114, #117


# 1.2.1 / unreleased

* Features

  * Can list dependencies that were added manually


# 1.2 / 2014-11-10

* Features

  * Adding support for CocoaPods >= 0.34. (#118)
  * For dependencies with multiple licenses, the name of each license is
    listed, and if any are whitelisted, the dependency is whitelisted
  * Added `--debug` option when scanning, to provide details on
    packages, dependencies and where each license was discovered.


# 1.1.1 / 2014-07-29

* Bugfixes

  * Process incorrectly-defined dependencies.
    [Original issue.](https://github.com/pivotal/LicenseFinder/issues/108)
  * Allow license_finder to process incorrectly-defined dependencies.


# 1.0.1 / 2014-05-28

* Features

  * For dependencies with multiple licenses, the dependency is listed as
    'multiple licenses' along with the names of each license
  * Added 'ignore_dependencies' config option to allow specific
    dependencies to be excluded from reports.

* Bugfixes

  * Dependency reports generate when license_finder.yml updates
  * Dependency reports generate when config is changed through the command line


# 1.0.0.1 / 2014-05-23

* Bugfixes

  * LicenseFinder detects its own license


# 1.0.0 / 2014-04-03

* Features

  * When approving a license, can specify who is approving, and why.
  * Remove `rake license_finder` task from Rails projects.  Just include
    'license_finder' as a development dependency, and run `license_finder` in
    the shell.


# 0.9.5.1 / 2014-01-30

* Features

  * Adds homepage for Bower, NPM, and PIP packages


# 0.9.5 / 2014-01-30

* Features

  * Add more aliases for known licenses
  * Drop support for ruby 1.9.2
  * Large refactoring to simply things, and make it easier to add new package managers

* Bugfixes

  * Make node dependency json parsing more robust
  * Clean up directories created during test runs


# 0.9.4 / 2014-01-05

* Features

  * Add detailed csv report
  * Add markdown report
  * Add support for "licenses" => ["license"] (npn)
  * Add basic bower support
  * Allow adding/removing multiple licenses from whitelist

* Bugfixes

  * Use all dependencies by default for npm as bundler does


# 0.9.3 / 2013-10-01

* Features

  * New Apache 2.0 license alias

* Bugfixes

  * Fix problem which prevented license finder from running in rails < 3.2


# 0.9.2 / 2013-08-17

* Features

  * Support for python and node.js projects

* Bugfixes

  * Fix HTML output in firefox


# 0.9.1 / 2013-07-30

* Features

  * Projects now have a title which can be configured from CLI
  * JRuby officially supported. Test suite works against jruby, removed 
    warnings
  * Internal clean-up of database behavior
  * Updated documentation with breakdown of HTML report

* Bugfixes

  * dependencies.db is no longer modified after license_finder runs and finds
    no changes
  * Fix more CLI grammar/syntax errors
  * HTML report now works when served over https (PR #36 - bwalding)
  * dependencies.txt is now dependencies.csv (It was always a csv in spirit)


# 0.9.0 / 2013-07-16

* Features

  * Clarify CLI options and commands in help output
  * Can manage whitelisted licenses from command line
  * Improved New BSD license detection

* Bugfixes

  * Fix CLI grammar errors
  * Using license_finder in a non-RVM environment now works (Issue #35)


# 0.8.2 / 2013-07-09

* Features

  * Switch to thor for CLI, to support future additions to CLI
  * Restore ability to manage (add/remove) dependencies that Bundler can't find
  * Can maintain ignored bundler groups from command line

* Bugfixes

  * Fix bug preventing manual approval of child dependencies (Issue #23)
  * Fix issue with database URI when the absolute path to the database file
    contains spaces.
  * Upgrading from 0.7.2 no longer removes non-gem dependencies (Issue #20)


# 0.8.1 / 2013-04-14

* Features

  * JRuby version of the gem.
  * Official ruby 2.0 support.
  * CLI interface for moving dependencies.* files to `doc/`.

* Bugfixes

  * Fix ruby 1.9.2 support.


# 0.8.0 / 2013-04-03

* Features

  * Add spinner to show that the binary is actually doing something.
  * Add action items to dependencies.html.
  * Add generation timestamp to dependencies.html.
  * Default location for dependencies.* files is now `doc/`.
  * Temporarily remove non-bundler (e.g. JavaScript) dependencies. This will
    be readded in a more sustainable way soon.
  * Use sqlite, not YAML, for dependencies.
  * Officially deprecate rake tasks.

* Bugfixes

  * Don't blow away manually set licenses when dependencies are rescanned.
  * Ignore empty `readme_files` section in dependencies.yml.
  * Clean up HTML generation for dependencies.html.
  * Add an option to silence the binary's spinner so as not to fill up log
    files.


# 0.7.2 / 2013-02-18

* Features

  * Dependency cleanup.


# 0.7.1 / 2013-02-18

* Features

  * Add variants to detectable licenses.
  * Remove README files from data persistence.


# 0.7.0 / 2012-09-25

* Features

  * Dependencies can be approved via CLI.
  * Dependencies licenses can be set via CLI.


# 0.6.0 / 2012-09-15

* Features

  * Create a dependencies.html containing a nicely formatted version of
    dependencies.txt, with lots of extra information.
  * All rake tasks, and the binary, run the init task automatically.
  * Simplify dependencies.txt file since more detail can now go into
    dependencies.html.
  * Promote binary to be the default, take first steps to deprecate rake task.

* Bugfixes

  * Fix formatting of `rake license:action_items` output.


# 0.5.0 / 2012-09-12

* Features

  * `rake license:action_items` exits with a non-zero status if there are
    non-approved dependencies.
  * New binary, eventual replacement for rake tasks.
  * Initial implementation of non-gem dependencies.
  * Support BSD, New BSD, and Simplified BSD licenses.
  * Improve ruby license detection.
  * Add dependency's bundler group to dependencies.txt output.
  * Add description and summary to dependencies.txt output.

* Bugfixes

  * Create `config/` director if it doesn't exist, don't blow up.
  * Better support for non-US word spellings.


# 0.4.5 / 2012-09-09

* Features

  * Allow dependencies.* files to be written to a custom directory.
  * Detect LGPL licenses
  * Detect ISC licenses

* Bugfixes

  * Fix blow up if there's not `ignore_groups` setting in the config file.


[Unreleased]: https://github.com/pivotal/LicenseFinder/compare/v4.0.2...HEAD
[4.0.2]: https://github.com/pivotal/LicenseFinder/compare/v4.0.1...v4.0.2
[4.0.1]: https://github.com/pivotal/LicenseFinder/compare/v4.0.0...v4.0.1
[4.0.0]: https://github.com/pivotal/LicenseFinder/compare/v3.1.0...v4.0.0
[3.1.0]: https://github.com/pivotal/LicenseFinder/compare/v3.0.4...v3.1.0
[3.0.4]: https://github.com/pivotal/LicenseFinder/compare/v3.0.2...v3.0.4
[3.0.2]: https://github.com/pivotal/LicenseFinder/compare/v3.0.1...v3.0.2
[3.0.1]: https://github.com/pivotal/LicenseFinder/compare/v3.0.0...v3.0.1
[3.0.0]: https://github.com/pivotal/LicenseFinder/compare/v2.1.2...v3.0.0
[4.0.3]: https://github.com/pivotal/LicenseFinder/compare/v4.0.2...v4.0.3
[4.0.3]: https://github.com/pivotal/LicenseFinder/compare/v4.0.2...v4.0.3
