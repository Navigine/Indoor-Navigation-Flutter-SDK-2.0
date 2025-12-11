pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
        // Aggiungi questa riga per JitPack
        maven { url = uri("https://jitpack.io") }
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.7.0" apply false
    // END: FlutterFire Configuration
    id("org.jetbrains.kotlin.android") version "2.1.0" apply false
}

include(":app")

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        google()
        mavenCentral()
        // Aggiungi anche qui JitPack
        maven { url = uri("https://jitpack.io") }
        // Aggiungi questa riga per il repository Flutter
        maven { url = uri("https://storage.googleapis.com/download.flutter.io") }
    }
}