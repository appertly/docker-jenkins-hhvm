# docker-jenkins-hhvm
Docker image of Jenkins and a few plugins with HHVM.

## Extras
This image comes preloaded with Composer and Ant.

As Jenkins starts up, it uses Composer to globally require `phpunit`, `phploc`, `pdepend`, `phpmd`, `phpcs`, `phpcpd`, and `phpdoc`.

## Plugins
This installation of Jenkins comes with the following plugins:
* All plugins recommended by (Template for Jenkins Jobs for PHP Projects)[http://jenkins-php.org/installation.html]
* (Git)[https://wiki.jenkins-ci.org/display/JENKINS/Git+plugin]
* (GitLab Hook)[https://wiki.jenkins-ci.org/display/JENKINS/Gitlab+Hook+Plugin]
* (GitLab Logo)[https://wiki.jenkins-ci.org/display/JENKINS/GitLab+Logo+Plugin]
* (Google Login)[https://wiki.jenkins-ci.org/display/JENKINS/google+login+Plugin]
* (Gravatar)[https://wiki.jenkins-ci.org/display/JENKINS/gravatar+Plugin]
* (Role Strategy)[https://wiki.jenkins-ci.org/display/JENKINS/Role+Strategy+Plugin]

It also comes with a disabled project that can be copied, "php-template", with a default Ant build for PHP projects.
