alpine-build
==

Compile, strip golang apps against libmuscl for alpine.

This image can be run as per:

```bash
$ docker run -v $(pwd):/root/golang/src/... --workdir /root/golang/src/... jspc/alpine-build
```

Where `golang/src/...` is a valid import path for go. Note the `--workdir` directive; this is so the container can do it's thing.

To build `github.com/jspc/cronut`, then, the command would be:

```bash
$ docker run -v $(pwd):/root/golang/src/github.com/jspc/cronut --workdir /root/golang/src/github.com/jspc/cronut jspc/alpine-build
```

This image doesn't bother doing anything with private repos. Nor does it rewrite SCM links. Luckily you can just volume mount these things:

```bash
$ docker run -v ${GOPATH}/src/github.com/private/repo:/root/golang/src/github.com/private/repo -v $(pwd):/root/golang/src/github.com/jspc/cronut --workdir /root/golang/src/github.com/jspc/cronut jspc/alpine-build
```


| who       | what |
|-----------|------|
| dockerhub | https://hub.docker.com/r/jspc/alpine-build/   |
| circleci  | https://circleci.com/gh/jspc/alpine-build   |
| licence   | MIT   |


Licence
--

MIT License

Copyright (c) 2017 jspc

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
