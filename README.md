# docker-sass
Docker image to encapsulate sass compiler for SCSS/CSS

# Running the image
The image does not offer any options. Simple run the container:

```
docker run technicalgur/sass sass -ti -- bash
```

You might want to mount a host directory to ```usr/local/src/sass-source``` in order to keep your work.

# HOWTO compile SASS
You will land in the home dir ```/usr/local/src/sass-source```. Setup your SASS project here and use the "sass" command.

# Example
The following procedure will create a current Bootstrap CSS file.

1. Create sub-directory ```scss```.
1. Add a single line to ```scss/mycss.scss``` file: ```@import "../node_modules/bootstrap/scss/bootstrap";``` (PS: Add any customizations before this line)
1. Run ```npm install bootstrap```
1. Run ```npm i```
1. Create sub-directory ```assets```.
1. Run ```sass scss/mycss.scss assets/mycss.css```
1. Run ```sass scss/mycss.scss assets/mycss.min.css --style compressed```

Your CSS files will be in sub-directory assets.

# Notes
The image has some basic tooling installed:

* curl
* wget
* vim
* git

# Contribute
Open an issue in the issue tracker in case of any feedback, change requests or bugs.
