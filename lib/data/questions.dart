import 'package:lara_quiz/models/quiz_question.dart';

final questions = [
  QuizQuestion(
    'What are the main building blocks of Laravel applications?',
    [
      'Routes',
      'Controllers',
      'Models',
      'Views',
    ],
  ),
  QuizQuestion(
    'How are PHP web applications typically structured?',
    [
      'MVC (Model-View-Controller) architecture',
      'Single-file structure',
      'Procedural programming',
      'Functional programming',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of an Eloquent Model in Laravel?',
    [
      'Represent and interact with database tables',
      'Handle HTTP requests',
      'Define routes',
      'Create user interfaces',
    ],
  ),
  QuizQuestion(
    'In Laravel, what is the purpose of a Blade template?',
    [
      'Define the presentation layer',
      'Handle business logic',
      'Define database schemas',
      'Implement routing logic',
    ],
  ),
  QuizQuestion(
    'Which is more suitable for small, static websites: Laravel or PHP?',
    [
      'PHP',
      'Laravel',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'How do you manage dependencies in a Laravel project?',
    [
      'Composer',
      'NPM',
      'Bower',
      'Manual download and include',
    ],
  ),
];
