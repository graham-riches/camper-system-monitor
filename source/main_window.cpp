/**
 * \file main_window.cpp
 * \author Graham Riches (graham.riches@live.com) 
 * \version 0.1
 * \date 2022-01-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

/********************************** Includes *******************************************/
#include "main_window.h"
#include "ui_mainwindow.h"

/********************************** Method Definitions *******************************************/
//!< Constructor for the main window
main_window::main_window(QMainWindow* parent)
: QMainWindow(parent)
, m_window(new Ui::MainWindow) {
    m_window->setupUi(this);
}

//!< Destructor for the main window
main_window::~main_window() {
    delete m_window;
}