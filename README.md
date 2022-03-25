# educational-bank

Implementation of basic financial bank workflows for young, future savers to experience banking.

## Reason behind the project

I have young children that are starting to get interested in the value of things, money, and how financial transactions work. When I was a kid, we used cash all the time. It was easy to understand how finances worked. At the end of the month either my parents or god parents would give me some money which I kept in a _piggy bank_. If I saved my money, my _piggy bank_ would fill up. If I spent my money, I would see the _piggy bank_ deplete.

With money being primarily digital, it is harder to explain my kids how money works. Their experience with money is tied to online purchases and the use of credit and debit cards and points of sale (POS). As part of their financial education, I have been taking my kids to the bank and I show them our bank accounts. They are interested in a hands on approach and in having control of their own accounts. Since I am not ready to give my kids a credit card and the amounts of money they have access to are nominal, I decided to build a bank for them to learn.

## GitHub repository structure

This GitHub project is a mono-repo which includes the following elements:

* Back-end API written in Ruby/Rails
* Web application for _bank associate_ (parent/educator) written in TypeScript
* Web application for _bank member_ (child) written in Typescript
* Integration test Node application which uses CucumberJS and PlayWright
* StoryBook web project to catalogue UI components

## Documentation

Features are initially documented in the [wiki](https://github.com/EddieMachete/educational-bank/wiki). The contents of the wiki are used to generate GitHub issues which are grouped under features. I use GitHub milestones to create those features and group issues. The project [Educational Bank](https://github.com/users/EddieMachete/projects/1/views/1) is used to track progress.

## Developiong inside a VS Code Dev Container

1. Open this project as a Dev Container in VS Code by selecting the option `Clone repository in container volume` or `Open folder in container` (preferred)
2. In the terminal, run the following commands:
   * `cd apiRails`
   * `rvm install ruby-2.7.5`
   * `gem install bundler`
   * `bundle`
   * `rails db:migrate RAILS_ENV=development`
3. Start the project burunning in the terminal the command `rails server`
4. In yur browser, navigate to http://127.0.0.1:3000/

This project contains a _Dev Container definition_ under `.devcontainer/devcontainer.json` which instructs VS Code what types of containers to start to setup this development environment. It also forwards the port so we can view the project on the browser. The above commands are needed to initialize rails so we can run the development server.

## Docker build

docker build -t rails-toolbox --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f Dockerfile.rails .

echo $GID
echo $UID

https://dev.to/itnext/setting-up-ruby-on-rails-with-docker-and-mysql-3mpc

docker-compose run app rails new . --force --database=mysql --skip-bundle

docker build -t api-rails .

docker build -t api-rails -f test.Dockerfile .
The -t (target) names the docker image
The -f (file) tells docker which dockerfile to use
