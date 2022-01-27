/**
 * \file main.cpp
 * \author Graham Riches (graham.riches@live.com)
 * \brief Main application entry point
 * \version 0.1
 * \date 2022-01-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

/********************************** Includes *******************************************/
#include <QApplication>
#include <QQmlApplicationEngine>

/********************************** Function Definitions *******************************************/
/**
 * \brief Main application entry point
 */
int main(int argc, char** argv) {
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("main.qml")));
    return app.exec();
}