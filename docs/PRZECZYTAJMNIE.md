# extchange [[ENG]](README.md) 
Aplikacja na system Android przedstawiająca kursy walut. Wytworzona z wykorzystaniem frameworka Flutter.


## Opis 
Celem aplikacji jest prezentowanie kursów walut EUR i USD pobranych z publicznego API NBP. Umożliwia ona wyświetlenie listy kursów wybranej waluty z ostatnich 30 dni. Zarówno w formie wykresu jak i w formie tabeli.
  
Aplikacja posiada 3 ekrany:  
*  Ekran główny - zawierający panel wyboru waluty,
<img src="docs/homePage.png" height="600">

*  Ekran szczegółów waluty - zawierający informacje o kursie waluty oraz wykres kursów waluty z ostatnich 30 dni,  
<img src="docs/detailPage.png" height="600">

*  Ekran tabeli kursów - zawierający tabelę kursów waluty z ostatnich 30 dni,
<img src="docs/tablePage.png" height="600">

## Narzędzia
* Dart 2.19.3
* Flutter 3.7.6

### Biblioteki
* bloc: 8.1.1
* flutter_bloc: 8.1.2
* json_annotation: 4.8.0
* freezed_annotation: 2.2.0
* get_it: 7.2.0
* injectable: 2.1.0
* retrofit: 4.0.1
* dio: 5.0.3
* go_router: 6.4.1
* lottie: 2.3.0
* recase: 4.1.0
* auto_animated: 3.0.0
* pull_to_refresh: 2.0.0
* syncfusion_flutter_charts: 21.1.35
* shared_preferences: 2.1.0
* theme_provider: 0.5.0

## Jak uruchomić
* Pobierz dostarczony plik apk na urządzenie z Androidem
* Zainstaluj extchange.apk

## Rzeczy do dodania
* Dodanie wyświetlania kolejnych walut
* Dodanie internacjonalizacji

## Autor
**Michał Popiel** - [ReQezeR](https://github.com/ReQezeR)

## Licencja
[MIT](https://choosealicense.com/licenses/mit/)