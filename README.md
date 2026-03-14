# office-agent

This is a base project to show how to start to use agentic AI features in office work. It is be based on [opencode](https://opencode.ai/)

In the project example you could see:

* How to configure a specific "agent" and its "skills".
* How to execute a process of renaming a bunch of .pdf files by using information contained inside each file.
* How to extract key information of a bunch of .pdf files to set a .csv that could be easily imported in a .xlsx file, for example.
* How to analyze this .csv, visualize the data, and generate a presentation for reporting.

In this video you can see this use-case:

[![](https://img.youtube.com/vi/WDKLL1v-jNk/maxresdefault.jpg)](https://youtu.be/WDKLL1v-jNk)

Enjoy!.

## Setup

As you can see in opencode documentation, there are several ways to [install](https://opencode.ai/docs/es#instalar) it. Here you have another one that includes an isolated python environment included.

Follow next steps:

* Install Docker Engine (see [here](https://docs.docker.com/engine/install/) how to do it in your system).

* Build the docker image
```bash
cd docker
build.sh
```

* Run the supplied docker container
```bash
docker/run.sh
```

* open in your browser: http://localhost:4096

## Resouces

* For further information about [agents](https://opencode.ai/docs/es/agents/) and [skills](https://opencode.ai/docs/es/skills/) check opencode documentation.
* You can try [more kills here](https://github.com/anthropics/skills/tree/main/skills).
* Regarding LLM Providers, note that default models are unlikely to perform optimally. Using a premium OpenAI, Anthropic or Google account is recomnended. You can also consider to pay as you go by an [OpenRouter](https://openrouter.ai/) account.
