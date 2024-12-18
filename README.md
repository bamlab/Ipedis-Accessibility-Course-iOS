# Exercices pour apprendre à maitriser techniquement les règles d'accessibilité sur iOS

## Installation

Pour installer le projet, il vous faut:

- ⚠️ macOS
- Xcode (ici 16.1)
- un simulateur ou un appareil iOS
- Cloner le projet

### Déroulement des exercices

Les exercices vous seront donnés par le formateur au fur et à mesure de la formation.
Vous devrez les réaliser dans l'ordre.

- Ouvrir le projet dans Xcode
- Lancer le simulateur ou connecter un appareil iOS
- Builder et lancer l'application
- Naviguer dans l'application
- Tester l'accessibilité de l'application
  - Vous pouvez utiliser l'accessibility inspector de Xcode dans la plupart des cas
  - Vous pouvez aussi activer VoiceOver sur votre appareil ou simulateur
- Corriger les problèmes d'accessibilité
- Tester à nouveau l'accessibilité de l'application

## Structure du projet

Dans le package `ui.components` vous trouverez les composants custom de l'application qui ne sont
pas accessibles. C'est ceux la que vous devrez rendre accessible.

Dans le package `ui.screens` vous trouverez les écrans de l'application, vous aurez aussi des
changements à faire dessus.

Dans le fichier `ContentView.swift` vous trouverez la liste des écrans de l'application, vous pouvez
y changer l'écran de démarrage de l'application pour plus de facilité dans les exercices.

## Liste des exercices

A venir.

En attendant, voici
le [support pour les formateurs](https://www.notion.so/m33/Exercices-iOS-13e8f3776f4f8030a7afe3b94e7ad45c)

## Ressources

### Très utiles

Sur ce [site web](https://www.magentaa11y.com/native/) vous trouverez plusieurs conseils et APIs à
utiliser pour rendre vos composants SwiftUI et UIKit accessibles.

Sur ce [site web](https://a11y-guidelines.orange.com/en/mobile/ios/development/) vous trouverez
quelques exemples d'utilisation des APIs d'accessibilité en swiftUI et UIKit.

Sur ce [repo git](https://github.com/cvs-health/ios-swiftui-accessibility-techniques) vous trouverez
des bons et mauvais exemples d'utilisations des APIs d'accessibilité dans différents cas. Nous
allons aborder les principaux dans cette formation.

### Autres ressources

[Le démonstrateur d'accessibilité Orange](https://a11y-guidelines.orange.com/fr/mobile/mdan/). (
UIKit)

[Accessibility Modifiers](https://developer.apple.com/documentation/swiftui/view-accessibility)

[Accessibility Fundamentals](https://developer.apple.com/documentation/swiftui/accessibility-fundamentals)