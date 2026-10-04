# Hugo post URLs

This file lists the `url` field from the front matter of each post in `posts/` and `posts/archive/`.
Hugo publishes each post at its `url`, so these are the live URLs of the old site (serebrov.github.io).
The notes about built pages come from the local Hugo build in `~/web/serebrov.github.io-hugo/public/`.

Total: 97 posts (66 in `posts/`, 31 in `posts/archive/`).
For 81 posts, the `url` is `/html/<file name>.html`.

## URLs with the name of another post

The `url` of these posts has the name of a different post. The live URL shows this post, not the post in the URL name.

| Post | `url` in front matter | Post with this name |
|---|---|---|
| `2012-02-10-git-checkout-and-track-remote-branch.md` | `/html/2012-01-24-jquery-check-version.html` | `archive/2012-01-24-jquery-check-version.md` |
| `2012-02-13-git-branches-have-diverged.md` | `/html/2012-02-10-git-checkout-and-track-remote-branch.html` | `2012-02-10-git-checkout-and-track-remote-branch.md` |
| `2012-02-28-git-default-color-diff.md` | `/html/2012-02-13-git-branches-have-diverged.html` | `2012-02-13-git-branches-have-diverged.md` |
| `2012-03-15-oauth-1-0.md` | `/html/2012-02-28-git-default-color-diff.html` | `2012-02-28-git-default-color-diff.md` |
| `2012-04-03-git-rename-branch.md` | `/html/2012-03-15-oauth-1-0.html` | `2012-03-15-oauth-1-0.md` |
| `2012-09-23-git-submodule-helpers.md` | `/html/2012-06-15-android-mobile-network-problem.html` | `archive/2012-06-15-android-mobile-network-problem.md` |
| `archive/2012-06-15-android-mobile-network-problem.md` | `/html/2012-04-24-git-fugitive-to-resolve-conflicts.html` | `2012-04-24-git-fugitive-to-resolve-conflicts.md` |

Two posts have the same `url`: `/html/2012-04-24-git-fugitive-to-resolve-conflicts.html`.
The built page at this URL is `2012-04-24-git-fugitive-to-resolve-conflicts.md`.
As a result, `archive/2012-06-15-android-mobile-network-problem.md` has no page on the live site.

## URLs with a different name

The `url` of these posts has a name that is not the file name and not the name of another post.
The file was probably renamed after the post was published. The live URL shows the correct post.

| Post | `url` in front matter |
|---|---|
| `2020-08-15-oculus-quest-for-work.md` | `/html/2020-05-03-oculus-quest-for-work.html` |
| `2020-11-21-mitosis-keyboard-first-impressions.md` | `/html/2020-11-22-mitosis-keyboard-first-impressions.html` |
| `2021-09-13-git-commits-by-author.md` | `/html/2021-09-13-git-number-of-commits-by-author.html` |
| `2023-11-09-google-colab-input-output.md` | `/html/2023-11-09-google-colab-input-and-output-openai-tts.html` |
| `2023-12-16-testing-cors-settings-fastapi.md` | `/html/2023-12-16-testing-fastapi-cors-settings.html` |
| `2024-04-05-vue-cli-service-build-out-of-memory.md` | `/html/2024-04-05-profile-vue-cli-service-build-out-of-memory.html` |
| `2025-12-10-macbook-remote-access-with-lid-closed.md` | `/html/2025-12-10-macbook-keep-on-with-lid-closed-clamshell-mode.html` |

## URLs that end in `.md`

Hugo builds these pages with the `.md` extension.
The page `/html/2012-01-24-jquery-check-version.html` also exists, but it shows `2012-02-10-git-checkout-and-track-remote-branch.md` (see the first table).

| Post | `url` in front matter |
|---|---|
| `archive/2012-01-24-jquery-check-version.md` | `/html/2012-01-24-jquery-check-version.md` |
| `archive/2012-12-09-php-friend-via-extend.md` | `/html/2012-12-09-php-friend-via-extend.md` |

## All posts

| Post | Title | Date | `url` in front matter | Check |
|---|---|---|---|---|
| `2012-02-10-git-checkout-and-track-remote-branch.md` | git - checkout and track remote branch | 2012-02-01 | `/html/2012-01-24-jquery-check-version.html` | name of other post |
| `2012-02-13-git-branches-have-diverged.md` | git - your branch and 'origin/xxx' have diverged error | 2012-02-13 | `/html/2012-02-10-git-checkout-and-track-remote-branch.html` | name of other post |
| `2012-02-28-git-default-color-diff.md` | git - colored diff, branch, etc output by default | 2012-02-28 | `/html/2012-02-13-git-branches-have-diverged.html` | name of other post |
| `2012-03-15-oauth-1-0.md` | oauth 1.0 notes | 2012-03-15 | `/html/2012-02-28-git-default-color-diff.html` | name of other post |
| `2012-04-03-git-rename-branch.md` | git - rename branch (local and remote) | 2012-04-03 | `/html/2012-03-15-oauth-1-0.html` | name of other post |
| `2012-04-03-vim-replace-word-with-yanked-text.md` | vim - replace a word with yanked text multiple times | 2012-04-03 | `/html/2012-04-03-vim-replace-word-with-yanked-text.html` | OK |
| `2012-04-24-git-fugitive-to-resolve-conflicts.md` | git - use vim with fugitive to resolve merge conflicts | 2012-04-24 | `/html/2012-04-24-git-fugitive-to-resolve-conflicts.html` | same url as other post |
| `2012-09-23-git-submodule-helpers.md` | git - submodule helpers | 2012-09-23 | `/html/2012-06-15-android-mobile-network-problem.html` | name of other post |
| `2012-09-30-git-all-branches-with-file.md` | git - find all branches where file was changed | 2012-09-30 | `/html/2012-09-30-git-all-branches-with-file.html` | OK |
| `2012-09-30-git-branch-ahead-after-pull.md` | git - Your branch is ahead of 'origin/master' by 1 commit after pull | 2012-09-30 | `/html/2012-09-30-git-branch-ahead-after-pull.html` | OK |
| `2012-10-01-git-diff-and-log.md` | git - viewing changes - diff and log | 2012-10-01 | `/html/2012-10-01-git-diff-and-log.html` | OK |
| `2012-10-01-git-find-not-merged-branches.md` | git - find not merged branches | 2012-10-01 | `/html/2012-10-01-git-find-not-merged-branches.html` | OK |
| `2012-10-01-git-rm-deleted-files.md` | git - remove already deleted files | 2012-04-03 | `/html/2012-10-01-git-rm-deleted-files.html` | OK |
| `2013-05-24-angular-seo.md` | Angular.js and SEO - pre-render content on the server | 2013-05-24 | `/html/2013-05-24-angular-seo.html` | OK |
| `2013-06-14-git-server-setup.md` | How to set up git server on ubuntu with push email notifications | 2013-06-14 | `/html/2013-06-14-git-server-setup.html` | OK |
| `2013-06-14-js-libraries-for-charts.md` | JS libraries for charts (links) | 2013-06-14 | `/html/2013-06-14-js-libraries-for-charts.html` | OK |
| `2013-09-11-elastic-beanstalk-configs.md` | Elastic Beanstalk - deploy from different machines / by different users (or how to get rid of absolute paths in configs) | 2013-09-11 | `/html/2013-09-11-elastic-beanstalk-configs.html` | OK |
| `2013-10-22-elastic-beanstalk-cron-and-db.md` | Elastic Beanstalk - cron command and RDS DB access | 2013-10-22 | `/html/2013-10-22-elastic-beanstalk-cron-and-db.html` | OK |
| `2013-12-02-node-core-module-source.md` | Node.js - how to get core module source | 2013-12-02 | `/html/2013-12-02-node-core-module-source.html` | OK |
| `2013-12-02-node-debug-mocha.md` | Node.js - how to debug mocha test with node inspector | 2013-12-02 | `/html/2013-12-02-node-debug-mocha.html` | OK |
| `2014-01-04-git-log-and-less-keep-output.md` | How to keep `git log` and `git diff` output on the screen after exit | 2014-01-04 | `/html/2014-01-04-git-log-and-less-keep-output.html` | OK |
| `2014-01-04-git-revert-multiple-recent-comments.md` | git - how to revert multiple recent commits | 2014-01-04 | `/html/2014-01-04-git-revert-multiple-recent-comments.html` | OK |
| `2015-02-01-dynamodb-local.md` | Local Amazon DynamoDB - tools, dump/restore and testing | 2015-01-25 | `/html/2015-02-01-dynamodb-local.html` | OK |
| `2015-04-02-elastic-beanstalk-python.md` | Elastic Beanstalk - python application server structure and celery installation | 2015-04-02 | `/html/2015-04-02-elastic-beanstalk-python.html` | OK |
| `2015-05-20-cloudwatch-setup.md` | Elastic Beanstalk - how to set up CloudWatch Logs | 2015-05-20 | `/html/2015-05-20-cloudwatch-setup.html` | OK |
| `2015-07-05-elastic-beanstalk-drone-ci-setup.md` | How to set up Drone CI on EC2 instance via Elastic Beanstalk | 2015-07-05 | `/html/2015-07-05-elastic-beanstalk-drone-ci-setup.html` | OK |
| `2015-09-22-aws-postgresql-max-connections.md` | AWS PostgreSQL RDS - remaining connection slots are reserved error | 2015-09-22 | `/html/2015-09-22-aws-postgresql-max-connections.html` | OK |
| `2016-02-18-oop-solid-l-liskov-substitution-principle.md` | OOP SOLID Principles "L" - Liskov Substitution Principle | 2016-02-18 | `/html/2016-02-18-oop-solid-l-liskov-substitution-principle.html` | OK |
| `2016-06-10-scaleway-docker-deployment.md` | Setup Automatic Deployment, Updates and Backups of Multiple Web Applications with Docker on the Scaleway Server | 2016-06-10 | `/html/2016-06-10-scaleway-docker-deployment.html` | OK |
| `2016-07-03-simple-git-workflow.md` | Simple Git Workflow | 2016-07-03 | `/html/2016-07-03-simple-git-workflow.html` | OK |
| `2017-06-28-aws-default-subnet-in-us-east-1f-not-found.md` | AWS error - Default subnet in us-east-1f not found | 2017-06-29 | `/html/2017-06-28-aws-default-subnet-in-us-east-1f-not-found.html` | OK |
| `2018-01-11-aws-ec2-ssh-tunnel.md` | SSH Tunnels (How to Access AWS RDS Locally Without Exposing it to Internet) | 2018-01-11 | `/html/2018-01-11-aws-ec2-ssh-tunnel.html` | OK |
| `2018-01-19-disqus-code-in-comments.md` | Disqus - code formatting and highlighting in comments | 2018-01-19 | `/html/2018-01-19-disqus-code-in-comments.html` | OK |
| `2018-01-19-there-is-no-callback-hell.md` | There Is No Callback Hell In JavaScript | 2018-01-19 | `/html/2018-01-19-there-is-no-callback-hell.html` | OK |
| `2018-07-27-python-parameter-blocks-formatting.md` | Formatting Parameter Blocks in Python | 2018-07-27 | `/html/2018-07-27-python-parameter-blocks-formatting.html` | OK |
| `2018-11-28-python-debugging-with-ipdb-pdbpp.md` | Debugging Python with ipdb and pdbpp | 2018-11-28 | `/html/2018-11-28-python-debugging-with-ipdb-pdbpp.html` | OK |
| `2018-11-29-linux-terminal-screencast.md` | Recording Linux Terminal Session to GIF with asciinema | 2018-11-29 | `/html/2018-11-29-linux-terminal-screencast.html` | OK |
| `2019-02-16-manage-npm-packages-on-github.md` | Managing NPM packages on github | 2019-02-16 | `/html/2019-02-16-manage-npm-packages-on-github.html` | OK |
| `2019-06-16-git-hook-to-add-issue-number-to-commit-message.md` | Git Hook to Add Issue Number to Commit Message | 2019-06-16 | `/html/2019-06-16-git-hook-to-add-issue-number-to-commit-message.html` | OK |
| `2019-06-16-multi-origin-cloudfront-setup.md` | Multi-Origin CloudFront Setup to Route Requests to Services Based on Request Path | 2019-06-16 | `/html/2019-06-16-multi-origin-cloudfront-setup.html` | OK |
| `2019-10-08-aws-config-charges.md` | AWS Config - Unexpected Charges and Data Analysis | 2019-10-08 | `/html/2019-10-08-aws-config-charges.html` | OK |
| `2020-01-21-touch-typing.md` | Touch Typing Tutors and Games | 2020-01-21 | `/html/2020-01-21-touch-typing.html` | OK |
| `2020-05-03-vue-cli-multiple-configs.md` | Vue.js Cli: How to Use Multiple vue.config.js Configs | 2020-05-02T21:00:00+00:00 | `/html/2020-05-03-vue-cli-multiple-configs.html` | OK |
| `2020-08-15-oculus-quest-for-work.md` | Oculus Quest for Work: First Impressions | 2020-08-15 | `/html/2020-05-03-oculus-quest-for-work.html` | other name |
| `2020-11-21-mitosis-keyboard-first-impressions.md` | Mitosis Keyboard First Impressions | 2020-11-21 | `/html/2020-11-22-mitosis-keyboard-first-impressions.html` | other name |
| `2021-09-13-git-cherry-pick-a-range-of-commits.md` | git - cherry-pick a range of commits | 2021-09-13 | `/html/2021-09-13-git-cherry-pick-a-range-of-commits.html` | OK |
| `2021-09-13-git-commits-by-author.md` | git - show number of commits by author | 2021-09-13 | `/html/2021-09-13-git-number-of-commits-by-author.html` | other name |
| `2021-09-13-git-move-history-to-another-repository.md` | git - how to move files with history to another repository | 2021-09-13 | `/html/2021-09-13-git-move-history-to-another-repository.html` | OK |
| `2021-09-13-git-update-commit-message.md` | git - update commit message | 2021-09-13 | `/html/2021-09-13-git-update-commit-message.html` | OK |
| `2023-06-11-format-json-command-line.md` | How to format large JSON file in command line | 2023-06-11 | `/html/2023-06-11-format-json-command-line.html` | OK |
| `2023-06-11-git-use-kdiff3-as-difftool.md` | git - use kdiff3 as a diff/merge tool | 2023-06-11 | `/html/2023-06-11-git-use-kdiff3-as-difftool.html` | OK |
| `2023-06-13-chrome-extension-inspect-storage.md` | How to inspect extension `chrome.storage` in Chrome DevTools | 2023-06-13 | `/html/2023-06-13-chrome-extension-inspect-storage.html` | OK |
| `2023-06-19-docker-check-image-size.md` | docker - check image size and see what takes space | 2023-06-19 | `/html/2023-06-19-docker-check-image-size.html` | OK |
| `2023-07-20-bash-how-to-run-command-until-it-fails.md` | bash - how to run command in a loop until it fails | 2023-07-20 | `/html/2023-07-20-bash-how-to-run-command-until-it-fails.html` | OK |
| `2023-07-28-node-econnrefused-localhost.md` | node - localhost connection error ECONNREFUSED ::1:4723 in node 17 and node 18 | 2023-07-28 | `/html/2023-07-28-node-econnrefused-localhost.html` | OK |
| `2023-10-28-elastic-beanstalk-rds-access.md` | Elastic Beanstalk - how to configure access to the external RDS database | 2023-10-28 | `/html/2023-10-28-elastic-beanstalk-rds-access.html` | OK |
| `2023-11-09-google-colab-input-output.md` | Google Colab notebook - input and output, OpenAI TTS API | 2023-11-09 | `/html/2023-11-09-google-colab-input-and-output-openai-tts.html` | other name |
| `2023-12-16-testing-cors-settings-fastapi.md` | Testing FastAPI CORS settings | 2023-12-16 | `/html/2023-12-16-testing-fastapi-cors-settings.html` | other name |
| `2024-01-18-touch-typing-spacebar-thumbs.md` | Touch Typing: Spacebar and Thumbs | 2024-01-18 | `/html/2024-01-18-touch-typing-spacebar-thumbs.html` | OK |
| `2024-01-30-tmux-run-same-command-in-multiple-panes.md` | Tmux: how to run the same command in multiple panes | 2024-01-30 | `/html/2024-01-30-tmux-run-same-command-in-multiple-panes.html` | OK |
| `2024-04-05-profile-vue-cli-service-build.md` | Profile Vue CLI Service Build (actually webpack build) | 2024-04-05 | `/html/2024-04-05-profile-vue-cli-service-build.html` | OK |
| `2024-04-05-vue-cli-service-build-out-of-memory.md` | Vue CLI Service Build Out of Memory Error | 2024-04-05 | `/html/2024-04-05-profile-vue-cli-service-build-out-of-memory.html` | other name |
| `2024-10-21-git-rebase-over-rebased-branch.md` | git - how to rebase over a rebased branch, stacked branches | 2024-10-21 | `/html/2024-10-21-git-rebase-over-rebased-branch.html` | OK |
| `2025-12-10-macbook-remote-access-from-ipad.md` | MacBook - Remote Access from iPad | 2025-12-10 | `/html/2025-12-10-macbook-remote-access-from-ipad.html` | OK |
| `2025-12-10-macbook-remote-access-with-lid-closed.md` | MacBook - How to keep it on with lid closed, clamshell mode | 2025-12-10 | `/html/2025-12-10-macbook-keep-on-with-lid-closed-clamshell-mode.html` | other name |
| `2025-12-12-voyager-keyboard-unibody-mount.md` | Voyager keyboard: unibody mount | 2025-12-12 | `/html/2025-12-12-voyager-keyboard-unibody-mount.html` | OK |
| `archive/2012-01-24-jquery-check-version.md` | jQuery - check minimal required version | 2012-01-24 | `/html/2012-01-24-jquery-check-version.md` | ends in .md |
| `archive/2012-02-01-yii-class-table-inheritance.md` | yii - class table inheritance | 2012-02-01 | `/html/2012-02-01-yii-class-table-inheritance.html` | OK |
| `archive/2012-02-20-selenium-64bit-x_ignore_nofocus-problem.md` | selenium - problem with loading x_ignore_nofocus.so | 2012-02-20 | `/html/2012-02-20-selenium-64bit-x_ignore_nofocus-problem.html` | OK |
| `archive/2012-02-20-selenium-python-webdriver-not-safe-setters.md` | selenium - python Firefox webdriver - unsafe setters in firefox_profile.py | 2012-02-30 | `/html/2012-02-20-selenium-python-webdriver-not-safe-setters.html` | OK |
| `archive/2012-02-20-selenium-run-on-virtual-display.md` | selenium - run tests on a virtual display | 2012-02-20 | `/html/2012-02-20-selenium-run-on-virtual-display.html` | OK |
| `archive/2012-03-28-yii-catch-and-log-deadlocks.md` | yii - catch and log MySQL deadlock errors | 2012-03-28 | `/html/2012-03-28-yii-catch-and-log-deadlocks.html` | OK |
| `archive/2012-06-15-android-mobile-network-problem.md` | Andriod - moblie network problem after BusyBox update | 2012-01-24 | `/html/2012-04-24-git-fugitive-to-resolve-conflicts.html` | name of other post; same url as other post |
| `archive/2012-07-24-selenium-webdriver-set-php-session-cookie.md` | selenium webdriver - set php session cookie | 2012-07-24 | `/html/2012-07-24-selenium-webdriver-set-php-session-cookie.html` | OK |
| `archive/2012-07-24-selenium-webdriver-trigger-event-via-jquery.md` | selenium webdriver - trigger event on element via jQuery | 2012-07-24 | `/html/2012-07-24-selenium-webdriver-trigger-event-via-jquery.html` | OK |
| `archive/2012-08-02-selenium-webdriver-element-by-jquery-selector.md` | selenium webdriver - get webelement by jQuery selector | 2012-08-02 | `/html/2012-08-02-selenium-webdriver-element-by-jquery-selector.html` | OK |
| `archive/2012-08-20-expressjs-ejs-reuse-templates.md` | express.js and ejs - reuse template on server and client | 2012-08-20 | `/html/2012-08-20-expressjs-ejs-reuse-templates.html` | OK |
| `archive/2012-08-20-selenium-problem-with-big-file-upload.md` | selenium - problem with big file upload | 2012-08-20 | `/html/2012-08-20-selenium-problem-with-big-file-upload.html` | OK |
| `archive/2012-09-13-yii-url-rules-optional-parameters.md` | Yii url rules - optional parameters | 2012-09-13 | `/html/2012-09-13-yii-url-rules-optional-parameters.html` | OK |
| `archive/2012-09-24-innodb.md` | innodb notes | 2012-09-24 | `/html/2012-09-24-innodb.html` | OK |
| `archive/2012-09-25-global-ajax-handler-and-localtime.md` | global ajax response handler and jquery.localtime plugin | 2012-09-25 | `/html/2012-09-25-global-ajax-handler-and-localtime.html` | OK |
| `archive/2012-09-29-yii-jquery-localtime.md` | Yii and jquery.localtime.js - display dates in user local timezone | 2012-09-29 | `/html/2012-09-29-yii-jquery-localtime.html` | OK |
| `archive/2012-10-09-phpmyadmin-and-eaccelerator-problem.md` | phpmyadmin and eaccelerator problem | 2012-04-03 | `/html/2012-10-09-phpmyadmin-and-eaccelerator-problem.html` | OK |
| `archive/2012-10-10-gimport.md` | GImport yii extension | 2012-04-03 | `/html/2012-10-10-gimport.html` | OK |
| `archive/2012-12-09-google-chrome-window-manager.md` | Window managers for Google Chrome | 2012-12-09 | `/html/2012-12-09-google-chrome-window-manager.html` | OK |
| `archive/2012-12-09-php-friend-via-extend.md` | PHP - friend a class via extend | 2012-04-03 | `/html/2012-12-09-php-friend-via-extend.md` | ends in .md |
| `archive/2012-12-17-unit-speed-mysql-to-mem.md` | Speedup unit tests by moving MySql data to memory [Ubuntu] | 2012-04-03 | `/html/2012-12-17-unit-speed-mysql-to-mem.html` | OK |
| `archive/2013-03-18-js-scalable-architecture.md` | Want Scalable Application Architecture? Check AngularJS. | 2013-03-18 | `/html/2013-03-18-js-scalable-architecture.html` | OK |
| `archive/2013-03-23-php-utf-8-strings.md` | PHP - utf-8 strings handling | 2013-03-23 | `/html/2013-03-23-php-utf-8-strings.html` | OK |
| `archive/2013-05-24-angular-post-to-php.md` | Angular.js POST data to PHP | 2012-04-03 | `/html/2013-05-24-angular-post-to-php.html` | OK |
| `archive/2013-06-11-amazon-nosql-review.md` | Amazon NoSQL Solutions | 2013-06-11 | `/html/2013-06-11-amazon-nosql-review.html` | OK |
| `archive/2014-12-19-aws-opsworks-mongo-and-nodejs.md` | Amazon OpsWorks - node.js app with MongoDB setup | 2014-12-19 | `/html/2014-12-19-aws-opsworks-mongo-and-nodejs.html` | OK |
| `archive/2014-12-30-aws-ebs-mongo-backups.md` | AWS OpsWorks - setup mongodb ebs volume backups | 2014-12-30 | `/html/2014-12-30-aws-ebs-mongo-backups.html` | OK |
| `archive/2014-12-30-aws-opsworks-cmd-deployment.md` | AWS - Deployment via OpsWorks from the command line | 2014-12-30 | `/html/2014-12-30-aws-opsworks-cmd-deployment.html` | OK |
| `archive/2015-01-24-aws-dynamodb-emr-hive.md` | Amazon DynamoDB, EMR and Hive notes | 2015-01-24 | `/html/2015-01-24-aws-dynamodb-emr-hive.html` | OK |
| `archive/2015-01-25-aws-add-secondary-index.md` | Amazon DynamoDB - how to add global secondary index | 2015-01-25 | `/html/2015-01-25-aws-add-secondary-index.html` | OK |
| `archive/2015-06-17-cloudwatch-logs-single-stream.md` | CloudWatch Logs - how to log data from multiple instances to the single stream | 2015-05-20 | `/html/2015-06-17-cloudwatch-logs-single-stream.html` | OK |
