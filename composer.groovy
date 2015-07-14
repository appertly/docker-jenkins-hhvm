def cmd = "composer global require phpunit/phpunit squizlabs/php_codesniffer sebastian/phpcpd pdepend/pdepend phploc/phploc phpmd/phpmd phpdocumentor/phpdocumentor"
def proc = cmd.execute()
proc.waitFor()



