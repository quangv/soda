
test:
	@./support/expresso/bin/expresso \
		-I lib

docs:
	dox \
		--title "Soda" \
		--desc "The _Selenium Node Adapter_ or __Soda__ provides a unified client to both [Selenium RC](http://seleniumhq.org/projects/remote-control/) and [Saucelabs OnDemand](http://saucelabs.com/ondemand)." \
		--ribbon "http://github.com/learnboost/soda" \
		--private \
		lib/soda/*.js > index.html

docclean:
	rm -f index.html

.PHONY: test docs docclean