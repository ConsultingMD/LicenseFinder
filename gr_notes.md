## Tuesday  2020-07-28

Extended the `gr_license` hack for Jarvis to clean up the problem with
`composer`: one module has invalid author properties.

Not sure the best way to handle .git user & token.  I think we are
doing OK as long as we run this stuff locally on workstations (since
then it gets my creds), but we did have an npm error trying to run with
`license_finder -p` in Jarvis.  To get around, could:

* Volume mount creds
* Require ENV arguments to the Dockerfile, *and* figure out how to use
  them in .npmrc & .git config, and modify `dlf` to pass them in (and
  require them before running).

When we get to running this thing in the repos (which looks harder every
day), gotta solve that arg stuff.

## Monday 2020-07-27

Extending Friday's results slightly, updating `sidekiq-unique-jobs` did not
resolve the conflict; the latest compatible version (6.0.20) still requires
thor ~> 0.

Based on that, I'm going to enhance the LF container until
it can work in the rest of the Rails repos.

I'd *rather* be pushing on the "in-repo" tester, but because of the
`thor` incompatibility, I think that will take more time than completing
the scans using the solution we made work last time.

To get to "in-repo" testing, we should evaluate other tools first. See
the FRID-205(?) epic description for what I think we want.

Updating `gr_license` to have special Jarvis handling. Seems to be missing
most of the javascript stuff without using --recursive. With --recursive,
I get:

```
Traceback (most recent call last):
	22: from /usr/share/rvm/gems/ruby-2.7.1/bin/license_finder:23:in `<main>'
	21: from /usr/share/rvm/gems/ruby-2.7.1/bin/license_finder:23:in `load'
	20: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/bin/license_finder:6:in `<top (required)>'
	19: from /usr/share/rvm/gems/ruby-2.7.1/gems/thor-1.0.1/lib/thor/base.rb:485:in `start'
	18: from /usr/share/rvm/gems/ruby-2.7.1/gems/thor-1.0.1/lib/thor.rb:392:in `dispatch'
	17: from /usr/share/rvm/gems/ruby-2.7.1/gems/thor-1.0.1/lib/thor/invocation.rb:127:in `invoke_command'
	16: from /usr/share/rvm/gems/ruby-2.7.1/gems/thor-1.0.1/lib/thor/command.rb:27:in `run'
	15: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/cli/main.rb:151:in `report'
	14: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/license_aggregator.rb:11:in `dependencies'
	13: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/license_aggregator.rb:49:in `aggregate_packages'
	12: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/license_aggregator.rb:49:in `flat_map'
	11: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/license_aggregator.rb:49:in `each'
	10: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/license_aggregator.rb:51:in `block in aggregate_packages'
	 9: from /usr/share/rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/forwardable.rb:229:in `acknowledged'
	 8: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/core.rb:78:in `decision_applier'
	 7: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/core.rb:83:in `current_packages'
	 6: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/scanner.rb:36:in `active_packages'
	 5: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/scanner.rb:36:in `flat_map'
	 4: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/scanner.rb:36:in `each'
	 3: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/package_manager.rb:101:in `current_packages_with_relations'
	 2: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/package_managers/composer.rb:14:in `current_packages'
	 1: from /usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/package_managers/composer.rb:48:in `dependency_list'
/usr/share/rvm/gems/ruby-2.7.1/gems/license_finder-6.6.2/lib/license_finder/package_managers/composer.rb:54:in `composer_json': Command 'composer licenses --format=json' failed to execute:  (RuntimeError)

  [Composer\\Json\\JsonValidationException]
  "./composer.json" does not match the expected JSON schema:
   - authors[0] : The property web is not defined and the definition does not allow additional properties

```

## Friday 2020-07-24

Tim:
* With modern LicenseFinder and a pre-bundled tree, was able to get  a run with dlf. OTOH, not --prepare.

Jarvis:
* Tried `apt-get ruby-license-manager`, but trying to run in Jarvis ran into a complaint about `go`.
* Trying to run license manager as a gem installed within the Jarvis repo...
  * Older runs had left cruft in .bundle/config; rm'ed.
  * Upgraded to Arrow 0.17 to get a sensible build on my workstation.
  * Worked as long as I'd prebundled.  `-p` fails.
  * It installed 6.0.0, which is the last version that ran on Thor
    pre-1.0. OTOH, that doesn't support inherited decision files, so doesn't
    solve our use case. And later versions of thor cause sidekiq-unique-jobs
    to mismatch. Trying to upgrade sidekiq-unique-jobs, but it smells bad
    for our older repos.


