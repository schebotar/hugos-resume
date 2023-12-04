# Hugo's Resume
Hugo theme to create resume in style of [Jake's Resume](https://github.com/jakegut/resume) 
## Live Demo
<https://schebotar.github.io/hugos-resume/>
## Try it with Docker
Run
```bash
git clone https://github.com/schebotar/hugos-resume
docker run --rm -it -v "$(PWD):/src/hugos-resume" -p 1313:1313 klakegg/hugo:alpine server -s /src/hugos-resume/exampleSite --themesDir /src
```
And open ```localhost:1313```

## Installation
[Install Hugo](https://gohugo.io/installation/) on your machine or just run it with Docker
```
docker run --rm -it -v "$(PWD):/src/resume" -p 1313:1313 klakegg/hugo:alpine shell 
```
Create new site
```
hugo new site resume
cd resume/
```

Initiate new git repository and add theme via submodule
```
git submodule add https://github.com/schebotar/hugos-resume.git themes/hugos-resume
```

Add new ```config.toml``` file according to this example
```toml
baseURL = "http://example.org/"
languageCode = "en-us"
title = "Hugo's Resume"
disableKinds = ["taxonomy", "taxonomyTerm", "category", "sitemap", "RSS", "404", "robotsTXT"]
theme= "hugos-resume"

[Params]
    Name = "Hugo Jobless"
    Description = "Hugo theme to build resume page in style of Jake's resume"
    Phone = "123-456-7890"
    EMail = "jake@su.edu"
    LinkedIn = "linkedin.com/in/jake"
    GitHub = "github.com/jake"
```
Add new content using archetypes
```
hugo new education/My-Cool-University.md
hugo new experience/Software-Engineer.md
hugo new projects/Hugos-Resume-Theme.md
hugo new skills/Cross-stitch.md
```
Serve your new resume site and watch your edits live.
```
hugo serve -D --poll 700ms -s /src/resume
```
Or build it to ```public``` folder
```
hugo build --minify
```
## Deploy to Github Pages
Deploy your site repository on GitHub Pages easely following this instruction  
https://gohugo.io/hosting-and-deployment/hosting-on-github/ 



