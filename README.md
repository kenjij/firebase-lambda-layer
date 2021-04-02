# firebase-lambda-layer

firebase-ruby gem packaged for AWS Lambda Layer

Using [gems](https://rubygems.org/) in Lambda isn't all that hard, especially Ruby native ones. This is a Makefile for [firebase-ruby](https://github.com/kenjij/firebase-ruby) which will prepare the gems to be used with [Lambda layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

## Usage

```sh
make
```

This will prepare firebase-ruby (incl. [jwt](https://rubygems.org/gems/jwt), the only dependency) into a single zip file: `lambda-layers.zip` which can be used with your Ruby 2.7.0 functions. Just upload this zip file to your [AWS Lambda layer](https://console.aws.amazon.com/lambda/home#/layers), that's all.
