# Flutter Tutorial

In this tutorial i will try to show you how to create a simple flutter app. Tutorial will be divided into several parts. 
Each part will be in separate branch. Your tasks are named tutorial/part-x. I'll try to attach examples of solutions to each task in branches named solution/part-x.

During the tutorial i will left you TODOs. You can find them in your IDE in TODO tab.

## Getting Started

First of all take a look on a simple Figma project. 

[Figma - link](https://www.figma.com/file/Pepi76GQVyE0BubSH7Cd9y/Untitled?type=design&node-id=0%3A1&mode=design&t=14VWVW28590mSx9G-1)

I've created for you a simple structure of a project. Get used to it.
In addition i've created a theme files which i want you to use in this project (lib/theme).
In the beginning we will use Navigator to navigate between screens, it is also done.

## Part 1 - Login screen

Your first task is to create UI of a login screen. You can find it in Figma project.
Do not provide any logic for now. Focus on perfect layout, and think if some of created widgets could be reused in the future.
If you are ready push your changes to the repository. After positive code review you can go to the next part.


## Part 2 - Login screen logic

In this part we will try to create simple logic for our login screen.
First of all, i want you to make text fields work.
Maybe you can add some validation on email input?

After that, i want you to create an onPressed function for login button.
It should print values from text field and navigate to the next screen (HomeScreen - create it).

*** As an additional challenge, i want you to take a look on documentation about Flutter Bloc package, and try to implement it in your project.
You can find documentation here: [Flutter Bloc](https://bloclibrary.dev/#/gettingstarted)
I've created simple file for you.
Lets think how you can use it to log in user.
Try to add three functions to your bloc/cubit:
- onEmailChanged(email)
- onPasswordChanged(password)
- onLoginPressed(email, password)

If it will be to hard, do not spent a lot of time on it. We will talk about it, i will show you how to do it, and implement it in the next part.

If you are ready push your changes to the repository. Lets call after code review to discuss Bloc package, and you will see how we will do it.


