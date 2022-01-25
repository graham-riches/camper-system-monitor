#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QFontDatabase>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    int id = QFontDatabase::addApplicationFont(":/fonts/Roboto-Medium.ttf");
    QFont roboto_medium("Robot-Medium");
    roboto_medium.setPixelSize(72);
    ui->time->setFont(roboto_medium);        
}

MainWindow::~MainWindow()
{
    delete ui;
}

