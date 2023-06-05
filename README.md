# OpenAPIBuilder [![Build Status](https://travis-ci.org/bombbomb/OpenAPIBuilder.svg?branch=master)](https://travis-ci.org/bombbomb/OpenAPIBuilder)
Builds OpenAPI Client Libraries and pushes them to their respective Git Repos

## Repositories Generated

 - [bombbomb-javascript-openapi](https://github.com/bombbomb/bombbomb-javascript-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-javascript-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-javascript-openapi)
 - [bombbomb-python-openapi](https://github.com/bombbomb/bombbomb-python-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-python-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-python-openapi)
 - [bombbomb-ruby-openapi](https://github.com/bombbomb/bombbomb-ruby-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-ruby-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-ruby-openapi)
 - [bombbomb-php-openapi](https://github.com/bombbomb/bombbomb-php-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-php-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-php-openapi)
 - [bombbomb-swift-openapi](https://github.com/bombbomb/bombbomb-swift-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-swift-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-swift-openapi)
 - [bombbomb-csharp-openapi](https://github.com/bombbomb/bombbomb-csharp-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-csharp-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-csharp-openapi)
 - [bombbomb-go-openapi](https://github.com/bombbomb/bombbomb-go-openapi) [![Build Status](https://travis-ci.org/bombbomb/bombbomb-go-openapi.svg?branch=master)](https://travis-ci.org/bombbomb/bombbomb-go-openapi)

RipSecrets<br><br>
We implement pipeline secret scanning on all pull request events to prevent credentials from being merged. If the pipeline scanner detects a secret in your changed files it will gate the pull request and you will need to purge the found credential from your code and re-open the PR. To prevent getting gated by this tool and as best practice you should install the secret scanner locally in a pre-commit hook to prevent the secret from ever being committed to the repo in the first place. You can find documentation on how to set it up locally [here](https://bombbomb.atlassian.net/wiki/spaces/CORE/pages/2039775312/Pipeline+Secret+Scanner+Local+Setup)<br>
Ripsecrets has ways to bypass secret scanning although we should not be ignoring secrets that turn up in the scans. If something is out of your control and blocking the pipeline you can bypass it in one of the following ways<br>
1. Adding "# pragma: allowlist secret" to the end of the line with the secret.<br>
2. Adding the specific secret underneath the "[secrets]" block in .secretsignore<br>
3. Adding the filepath to ignore the whole file aboove the "[secrets]" block in .secretsignore