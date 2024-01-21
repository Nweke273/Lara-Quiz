import 'package:lara_test/models/quiz_question.dart';

final questions = [
  QuizQuestion(
    'What is the purpose of Laravel\'s "Artisan" command-line tool?',
    1,
    [
      'Run command-line tasks and manage the application',
      'Handle HTTP requests',
      'Define database schemas',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'Which Laravel component is used for handling user authentication?',
    2,
    [
      'Laravel Sanctum',
      'Eloquent ORM',
      'Blade templating engine',
      'Illuminate\\Routing\\Router',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent ORM"?',
    3,
    [
      'Object-Relational Mapping for database interaction',
      'Routing in the application',
      'Handling HTTP requests',
      'Creating views',
    ],
  ),
  QuizQuestion(
    'How can you customize error pages in Laravel?',
    4,
    [
      'Modify the resources/views/errors directory',
      'Use the "php artisan make:error" command',
      'Edit the .env file',
      'Modify the public/error directory',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Middleware"?',
    5,
    [
      'Handle HTTP requests before they reach the application',
      'Define database schemas',
      'Create controllers',
      'Implement presentation logic',
    ],
  ),
  QuizQuestion(
    'Which Laravel feature provides a simple and convenient way to validate incoming HTTP request data?',
    6,
    [
      'Form Request Validation',
      'Blade templates',
      'Eloquent ORM',
      'Middleware',
    ],
  ),
  QuizQuestion(
    'How do you define a new route in Laravel?',
    7,
    [
      'Using the "Route" facade or helper functions',
      'In the controller constructor',
      'In the Blade template',
      'By modifying the .env file',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent Relationships"?',
    8,
    [
      'Define relationships between database tables',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'Which type of relationships can be defined using Laravel\'s Eloquent ORM?',
    9,
    [
      'One-to-One, One-to-Many, Many-to-One, Many-to-Many',
      'Only One-to-One',
      'Only One-to-Many',
      'Only Many-to-Many',
    ],
  ),
  QuizQuestion(
    'In Laravel, what is the purpose of the "php artisan tinker" command?',
    10,
    [
      'Interactive REPL for Laravel',
      'Create database migrations',
      'Generate controllers',
      'Run PHPUnit tests',
    ],
  ),
  QuizQuestion(
    'How can you enable maintenance mode in a Laravel application?',
    11,
    [
      'Use the "php artisan down" command',
      'Edit the .env file',
      'Modify the public/maintenance directory',
      'Use the "composer maintenance" command',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent Scopes"?',
    12,
    [
      'Define reusable query constraints',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'Which Laravel component is responsible for handling HTTP middleware?',
    13,
    [
      'Illuminate\Http\Middleware\VerifyCsrfToken',
      'Eloquent ORM',
      'Blade templating engine',
      'Illuminate\Routing\Router',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent Mutators"?',
    14,
    [
      'Modify attributes before saving them to the database',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'What is Laravel\'s "CSRF protection"?',
    15,
    [
      'Cross-Site Request Forgery protection',
      'Define routes',
      'Handle HTTP requests',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'How can you seed the database in Laravel?',
    16,
    [
      'Using the "php artisan db:seed" command',
      'Creating a controller',
      'Modifying the .env file',
      'By editing the database migration files',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Service Container"?',
    17,
    [
      'Dependency injection and service binding',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'How do you run PHPUnit tests in a Laravel project?',
    18,
    [
      'Using the "php artisan test" command',
      'Modify the .env file',
      'Create controllers',
      'Use the "composer test" command',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent Observers"?',
    19,
    [
      'Listen for Eloquent events and take actions',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'What is the role of the "public" directory in a Laravel project?',
    20,
    [
      'Serve as the document root for the web server',
      'Store database migrations',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'Which Laravel component is used for handling API authentication?',
    21,
    [
      'Laravel Passport',
      'Eloquent ORM',
      'Blade templating engine',
      'Illuminate\Routing\Router',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Eloquent Factories"?',
    22,
    [
      'Generate fake data for testing purposes',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'How do you create a new Laravel migration file?',
    23,
    [
      'Using the "php artisan make:migration" command',
      'composer create-project laravel/laravel',
      'php artisan migrate',
      'php artisan make:model',
    ],
  ),
  QuizQuestion(
    'What is the purpose of Laravel\'s "Config" class?',
    24,
    [
      'Manage application configuration',
      'Eloquent ORM',
      'Blade templating engine',
      'Illuminate\\Routing\\Router',
    ],
  ),
  QuizQuestion(
    'How can you interact with a database in a Laravel application?',
    25,
    [
      'Using Eloquent ORM and Query Builder',
      'Handle HTTP requests',
      'Define routes',
      'Create controllers',
    ],
  ),
  QuizQuestion(
    'Which Laravel component is used for handling session management?',
    26,
    [
      'Session facade and middleware',
      'Eloquent ORM',
      'Blade templating engine',
      'Illuminate\\Routing\\Router',
    ],
  ),
];
