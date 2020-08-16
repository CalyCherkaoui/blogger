# Building a Blog with Rails

This project was built with Ruby on Rails. 
For this project, I followed [jumpstartlab](http://tutorials.jumpstartlab.com/projects/blogger.html) tutorial for learning purposes.
This is pure backend exercise. That's why I left the styling for another next project.

## Built with:

<a href="#" target="_blank"><img height="30" src="https://www.vectorlogo.zone/logos/ruby-lang/ruby-lang-horizontal.svg"></a>
<a href="#" target="_blank"><img height="30" src="https://www.vectorlogo.zone/logos/git-scm/git-scm-ar21.svg"></a>
<a href="#" target="_blank"><img height="30" src="https://www.vectorlogo.zone/logos/getbootstrap/getbootstrap-icon.svg"></a>
<a href="#" target="_blank"><img height="30" src="https://www.vectorlogo.zone/logos/w3_html5/w3_html5-ar21.svg"></a>

- Framework/API : ``Ruby on Rails``, ``Bootstrap 4``
- Langage: ``Ruby``
- Text-editor: ``Visual Studio Code``


## Models

The models created and their relationships:
```
Article:
  -Title:string
  -Body:text
  HAS_MANY: Taggings, Comments
  HAS_MANY: Tags THROUGH: Taggings
```

```
Comment:
  -Author_name:string
  -Email:string
  -Password:string
  -BELONG_TO Article
```

```
Tag:
  -name:string
  HAS_MANY: Taggings
  HAS_MANY: Tags THROUGH: Taggings
```

```
Tagging:
  -Reference Tag
  -Reference Article
  -BELONG_TO Article, Tag
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
