# Building a Blog with Rails

This project was built with Ruby on Rails.
For this project, I followed [jumpstartlab](http://tutorials.jumpstartlab.com/projects/blogger.html) tutorial for learning porpuse.

## Built with:

- Framework/API : ``Ruby on Rails``
- Langage: ``Ruby``
- Styling: ``Bootstrap 4``
- Text-editor: Visual Studio Code

![HTML5](https://img.shields.io/badge/-HTML5-%23E44D27?style=flat-square&logo=html5&logoColor=ffffff)


## Models

The models created and their relationships:
```
Article:
  -Title:string
  -Body:text
  -Belong to a user
```

```
User:
  -Name:string
  -Email:string
  -Password:string
  -Has many articles
```

## Getting started

To get a local copy of the repository please run the following commands on your terminal:

```
$ git clone git@github.com:CalyCherkaoui/blogger.git
$ cd blogger
$ git checkout development
$ bundle install
$ yarn install --check-files
$ rails db:migrate
$ rails server
```
In your browser's adress field, type : http://localhost:3000

## Author

👤 **Houda Cherkaoui**

- Github: [@CalyCherkaoui](https://github.com/CalyCherkaoui)
- Twitter: [@Houda59579688](https://twitter.com/Houda59579688)
- Linkedin: [Houda-Cherkaoui](https://www.linkedin.com/in/houda-cherkaoui-64106395/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- [jumpstartlab](http://tutorials.jumpstartlab.com/projects/blogger.html) 

## 📝 License

This project is [MIT]() licensed.
