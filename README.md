# mini/eb-cli

Alpine-powered container for [Amazon Elastic Beanstalk CLI](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html)

## Usage

You can simply run this container using `docker run`:

```
docker run -it --rm mini/eb-cli help
```

This container will not have access to your credentials, but you can exposte
it by mounting `~/.aws` directory against `/home/aws/.aws` of the container:

```
docker run -i -v $HOME/.aws:/home/aws/.aws --rm mini/eb-cli --help
```

### Wrappers

As convenience to reduce typing, `eb-cli-relative` is provided within
[wrapper](wrapper) directory:

- [`eb-cli-relative`](wrapper/eb-cli-relative)

You should copy and place it in your project's `bin` directory.

### Volumes

This container also exposes `/data` as bind mount volume and can be used when
copying local content to a target (S3 bucket) might be required:

```
docker run -i -v $PWD:/data mini/eb-cli deploy
```

## Sponsor

Work on this was made possible thanks to [AREA 17](http://www.area17.com).

## License

All code contained in this repository, unless explicitly stated, is
licensed under MIT license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.
