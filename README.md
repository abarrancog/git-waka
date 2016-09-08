# git-waka
My implementation to measure my time in using git
* This is a simple implementation to measure time using git shell I remain open to suggestions and contributions

## Getting Started

clone this repository and add to end of the file "bashrc" global or local , to next line:
```
source /Pathtoclonedrepo/mygit.sh
```
open file /Pathtoclonedrepo/mygit.sh and add to wakatime api key. Now its ready to commit-pull-push changes to repo usin comand GC.
### Prerequisities

```
git
```

### Installing

```
$
      git clone git@github.com:abarrancog/git-waka.git 
      cd git-waka
      vi mygit.sh
```
add to APIKEY WAKATIME
```
$
      vi /etc/bashrc 
```
copy this line to end file
```
      source /Pathtoclonedrepo/mygit.sh
```

now refresh or open new shell and usin GC comand.

## Built With

* bash

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

For the versions available, see the [tags on this repository](https://github.com/abarrancog/git-waka/tags). 

## Authors

* **Alfredo Barranco Gómez** - *Initial work* - [ABARRANCOG](https://github.com/abarrancog)

See also the list of [contributors](https://github.com/abarrancog/git-waka/contributors) who participated in this project.

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE V3 - see the [LICENSE.md](LICENSE.md) file for details

