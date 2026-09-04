# 🚀 API Fusion / Flutter

```{=html}
<p align="center">
```
`<img src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white" alt="Flutter">`{=html}
`<img src="https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white" alt="Dart">`{=html}
`<img src="https://img.shields.io/badge/REST%20API-Integration-4CAF50?logo=fastapi&logoColor=white" alt="REST API">`{=html}
`<img src="https://img.shields.io/badge/BLoC-State%20Management-6A1B9A?logo=flutter&logoColor=white" alt="BLoC">`{=html}
`<img src="https://img.shields.io/badge/HTTP-Requests-FF9800?logo=httpie&logoColor=white" alt="HTTP">`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
`<b>`{=html}A Flutter application demonstrating REST API integration
with GET, POST, PUT and DELETE operations using BLoC state
management.`</b>`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## 📱 About the Project

**API Fusion / Flutter** is an OWASoft Technologies Pvt. Ltd. internship
project developed to practice practical REST API integration in Flutter.

The application combines multiple public APIs in one interface and
demonstrates HTTP request handling, JSON responses, Dart models, BLoC
state management, form input, validation, loading states and error
handling.

> **Internship:** OWASoft Technologies Pvt. Ltd.\
> **Role:** Flutter Developer Intern\
> **Week:** 5\
> **Task:** API Fusion / Flutter

## ✨ Features

-   🔵 **8 GET API integrations**
-   🟢 **5 POST API integrations**
-   🟠 **4 PUT API integrations**
-   🔴 **3 DELETE API integrations**
-   🧠 **BLoC state management**
-   🌐 Reusable HTTP API service
-   📦 Dart models for GET responses
-   📝 Form inputs and validation for write operations
-   🔐 `.env` based API configuration
-   ⚠️ Loading, success, failed and exception handling
-   🎨 Modern Material UI
-   🧩 Reusable custom text-field widget

------------------------------------------------------------------------

# 🌐 APIs Used

## 🔵 GET APIs --- 8

\#   API               Purpose               Auth
  ---- ----------------- --------------------- ----------------------
1    🌤️ Open-Meteo     Current weather       None
2    😂 JokeAPI        Random jokes          None
3    ⚡ PokéAPI        Pokémon information   None
4    📚 Open Library   Book search           None
5    🍽️ TheMealDB      Random meal/recipe    Public test endpoint
6    🐶 Dog API        Random dog image      None
7    👤 Random User    Random user profile   None
8    🛍️ DummyJSON      Product information   None

### GET endpoints

``` text
Open-Meteo
https://api.open-meteo.com/v1/forecast?latitude=33.6844&longitude=73.0479&current=temperature_2m,wind_speed_10m

JokeAPI
https://v2.jokeapi.dev/joke/Any?type=single

PokéAPI
https://pokeapi.co/api/v2/pokemon/pikachu

Open Library
https://openlibrary.org/search.json?q=flutter

TheMealDB
https://www.themealdb.com/api/json/v1/1/random.php

Dog API
https://dog.ceo/api/breeds/image/random

Random User
https://randomuser.me/api/

DummyJSON Products
https://dummyjson.com/products/1
```

------------------------------------------------------------------------

## 🟢 POST APIs --- 5

\#   API                        Operation     Input
  ---- -------------------------- ------------- -----------------
9    🛍️ DummyJSON Products      Add product   Title, Price
10   📝 DummyJSON Posts         Add post      Title, Body
11   🍽️ DummyJSON Recipes       Add recipe    Recipe name
12   📝 JSONPlaceholder Posts   Add post      Title, Body
13   ✅ DummyJSON Todos         Add todo      Todo, Completed

### POST endpoints

``` text
https://dummyjson.com/products/add
https://dummyjson.com/posts/add
https://dummyjson.com/recipes/add
https://jsonplaceholder.typicode.com/posts
https://dummyjson.com/todos/add
```

------------------------------------------------------------------------

## 🟠 PUT APIs --- 4

\#   API                        Operation        Input
  ---- -------------------------- ---------------- ------------------
14   🛍️ DummyJSON Products      Update product   ID, Title, Price
15   👤 DummyJSON Users         Update user      Last Name
16   📝 DummyJSON Posts         Update post      ID, Title, Body
17   📝 JSONPlaceholder Posts   Update post      ID, Title, Body

### PUT endpoints

``` text
https://dummyjson.com/products/{id}
https://dummyjson.com/users/2
https://dummyjson.com/posts/1
https://jsonplaceholder.typicode.com/posts/1
```

------------------------------------------------------------------------

## 🔴 DELETE APIs --- 3

\#   API                        Operation
  ---- -------------------------- ----------------
18   🛍️ DummyJSON Products      Delete product
19   👤 DummyJSON Users         Delete user
20   📝 JSONPlaceholder Posts   Delete post

### DELETE endpoints

``` text
https://dummyjson.com/products/1
https://dummyjson.com/users/1
https://jsonplaceholder.typicode.com/posts/1
```

------------------------------------------------------------------------

# 🧠 BLoC Architecture

The project uses a simple feature-based BLoC structure.

``` text
User Action
    ↓
BLoC Event
    ↓
BLoC
    ↓
API Service
    ↓
HTTP Request
    ↓
JSON Response
    ↓
Dart Model / Response
    ↓
BLoC State
    ↓
UI
```

Each API section has its own event, state, BLoC and screen files.

``` text
lib/features/
├── home/
├── get/
├── post/
├── put/
└── delete/
```

# 🔧 API Service

HTTP operations are centralized in:

``` text
lib/core/services/api_services.dart
```

The service provides:

``` dart
getApi(String address)
postApi(String address, dynamic data)
putApi(String address, dynamic data)
deleteApi(String address)
```

This keeps network request logic reusable across the application.

# 📦 Response Models

GET responses are converted into simple Dart models where appropriate:

``` text
WeatherModel
JokeModel
PokemonModel
BookModel
MealModel
DogModel
RandomUserModel
ProductModel
```

# 🔐 Environment Configuration

API URLs are configured through a `.env` file.

Example:

``` env
JOKE_API_URL=https://v2.jokeapi.dev/joke/Any?type=single
POKE_API_URL=https://pokeapi.co/api/v2/pokemon/pikachu
OPEN_LIBRARY_URL=https://openlibrary.org/search.json?q=flutter
DOG_API_URL=https://dog.ceo/api/breeds/image/random
```

The `.env` file is excluded from Git using `.gitignore`.

# 📂 Project Structure

``` text
api_fusion_flutter/
│
├── assets/
│   └── icons/
│       └── logo.png
│
├── lib/
│   ├── core/
│   │   ├── models/
│   │   ├── services/
│   │   │   └── api_services.dart
│   │   └── widgets/
│   │       └── custom_text_field.dart
│   │
│   ├── features/
│   │   ├── home/
│   │   ├── get/
│   │   ├── post/
│   │   ├── put/
│   │   └── delete/
│   │
│   └── main.dart
│
├── .env
├── .gitignore
├── pubspec.yaml
└── README.md
```

# 🚀 Getting Started

### 1. Clone the repository

``` bash
git clone https://github.com/abdulsamad010/api_fusion_flutter.git
cd api_fusion_flutter
```

### 2. Install dependencies

``` bash
flutter pub get
```

### 3. Configure `.env`

Create the `.env` file in the project root and add the API URLs required
by the application.

### 4. Run the application

``` bash
flutter run
```

# 🛠️ Technologies Used

Technology          Purpose
  ------------------- --------------------------------
💙 Flutter          UI and application development
🎯 Dart             Programming language
🧠 BLoC             State management
🌐 HTTP             REST API requests
🔐 flutter_dotenv   Environment configuration
🧩 JSON             API data format
🎨 Material UI      User interface
🐙 Git              Version control
🚀 GitHub           Repository hosting

# 📚 Learning Outcomes

-   REST API integration
-   HTTP methods: **GET, POST, PUT and DELETE**
-   HTTP status codes
-   JSON decoding
-   Dart model classes
-   BLoC events and states
-   Loading and error states
-   Form validation
-   Reusable Flutter widgets
-   Environment configuration
-   Git and GitHub workflow

# ⚠️ API Notes

### DummyJSON

DummyJSON is used for API practice. Its add, update and delete
operations are simulated and should not be treated as permanent database
changes.

### JSONPlaceholder

JSONPlaceholder is a fake REST API for testing and prototyping. Its
write operations demonstrate the request/response workflow but are not
persistent production database operations.

### TheMealDB

TheMealDB is used through its public development/test endpoint for this
internship project. Production use should follow the provider's current
API terms and key requirements.

### Weather

The current weather integration uses configured fixed coordinates rather
than device GPS, so the application requests weather for the configured
location.

# 🔗 Repository

**GitHub Repository:**\
https://github.com/abdulsamad010/api_fusion_flutter

# 👨‍💻 Developer

**Abdul Samad**\
Flutter Developer Intern\
**OWASoft Technologies Pvt. Ltd.**

------------------------------------------------------------------------

```{=html}
<p align="center">
```
`<b>`{=html}Built with Flutter 💙 • REST APIs 🌐 • BLoC 🧠`</b>`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
⭐ If you find this project useful, consider starring the repository.
```{=html}
</p>
```
