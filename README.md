![Build](https://github.com/koyeb/koyeb-cli/workflows/Release/badge.svg)



# Koyeb CLI



The Koyeb CLI (Command Line Interface) is a powerful tool to manage your Koyeb serverless infrastructure directly from your terminal.



## Installation



### Download from GitHub



The CLI can be installed from pre-compiled binaries for macOS (darwin), Linux and Windows. You can download the appropriate version from the [Releases](https://github.com/koyeb/koyeb-cli/releases) page.



### MacOS



You can install the latest version of the Koyeb CLI on macOS using [Homebrew](http://brew.sh/):



```shell

brew install koyeb/tap/koyeb

```



You can upgrade an existing installation of the Koyeb CLI running:



```

brew upgrade koyeb

```



### Living at the Edge



To install the latest `koyeb` binary with go, simply run:



```shell

go get github.com/koyeb/koyeb-cli/cmd/koyeb

go install github.com/koyeb/koyeb-cli/cmd/koyeb

```



If you need a go environment, follow the [official Go installation documentation](https://golang.org/doc/install).





## Getting started



### Initial configuration



Generate an API token and run `koyeb login` to create a new configuration file.


<details>

<summary>cloudflare workers example</summary>



```js

const SingleDay = 'appname.app.com'

const DoubleDay = 'appname.app.com'

addEventListener(

    "fetch",event => {

    

        let nd = new Date();

        if (nd.getDate()%2) {

            host = SingleDay

        } else {

            host = DoubleDay

        }

        

        let url=new URL(event.request.url);

        url.hostname=host;

        let request=new Request(url,event.request);

        event. respondWith(

            fetch(request)

        )

    }

)

```

</details>


