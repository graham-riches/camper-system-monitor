/**
 * \file main_window.h
 * \author Graham Riches (graham.riches@live.com)
 * \brief QT Application main window 
 * \version 0.1
 * \date 2022-01-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#pragma once

/********************************** Includes *******************************************/
#include <QMainWindow>

/********************************** Types *******************************************/
//!< Forward declaration of the QT auto-generated main window, which allows the UI file to change
//!< without requiring recompilation of the entire application, which is beneficial for build times
namespace Ui
{
class MainWindow;
};

//!< Main window of the application
class main_window : public QMainWindow {

  public:
    /**
     * \brief Construct a new main window object
     * 
     * \param parent Parent window to build from
     */
    explicit main_window(QMainWindow* parent = nullptr);

    /**
     * \brief Destroy the main window object
     */
    ~main_window();

  private:
    Ui::MainWindow* m_window;
};
