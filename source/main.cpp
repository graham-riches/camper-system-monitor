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
#include "main_window.h"
#include <QApplication>
#include <QFontDatabase>

/********************************** Function Definitions *******************************************/
/**
 * \brief Main application entry point
 */
int main(int argc, char* argv[]) {
    QApplication application(argc, argv);            
    main_window window;                
    window.showFullScreen();
    return application.exec();
}
