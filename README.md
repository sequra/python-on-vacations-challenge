# 🚀 python-on-vacations-challenge
> Technical Challenge based on Pythons and Holidays

## 📖 Overview 📖
This web application returns "Hello <YOURNAME>!" when you go to http://application.whatever/hello/yourname.

### ⚙️ Components summary
This web application uses [bottlepy](https://bottlepy.org/docs/dev/) as a framework.

## 👩‍💻 Development environment instructions
>TO DO: Test the instructions, but I'm sure all of them should work ...

To run the Docker container in local:
```
make production-container-run
```

To generate the local docker image to upload:
```
make production-container-build
```

To upload the image to dockerhub:
```
make production-container-push
```


## ⚙️ Configuration and parameters

The only parameter to configure is the Python version to use. in the file `.env`.