/********************************************************************************
** Form generated from reading UI file 'my_plugin.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MY_PLUGIN_H
#define UI_MY_PLUGIN_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QSlider>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MyPluginWidget
{
public:
    QHBoxLayout *horizontalLayout_4;
    QWidget *widget;
    QWidget *widget_2;
    QWidget *layoutWidget_2;
    QHBoxLayout *horizontalLayout_5;
    QGridLayout *grid_X_2;
    QLineEdit *lbl_desiredX;
    QVBoxLayout *verticalLayout_3;
    QLabel *lbl_X_2;
    QLabel *lbl_posX;
    QLabel *lbl_X_3;
    QLabel *lbl_X_4;
    QLineEdit *lbl_biasX;
    QLineEdit *lbl_nowX;
    QGridLayout *grid_Y_2;
    QLineEdit *lbl_nowY;
    QLabel *lbl_posY;
    QLineEdit *lbl_biasY;
    QLineEdit *lbl_desiredY;
    QGridLayout *grid_Yaw_2;
    QLabel *lbl_posZ;
    QLineEdit *lbl_biasZ;
    QLineEdit *lbl_nowZ;
    QLineEdit *lbl_desiredZ;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QLabel *lbl_x;
    QLabel *lbl_y;
    QLabel *lbl_z;
    QSlider *slider_z;
    QSlider *slider_x;
    QSlider *slider_y;

    void setupUi(QWidget *MyPluginWidget)
    {
        if (MyPluginWidget->objectName().isEmpty())
            MyPluginWidget->setObjectName(QStringLiteral("MyPluginWidget"));
        MyPluginWidget->resize(538, 275);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MyPluginWidget->sizePolicy().hasHeightForWidth());
        MyPluginWidget->setSizePolicy(sizePolicy);
        horizontalLayout_4 = new QHBoxLayout(MyPluginWidget);
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        widget = new QWidget(MyPluginWidget);
        widget->setObjectName(QStringLiteral("widget"));
        widget_2 = new QWidget(widget);
        widget_2->setObjectName(QStringLiteral("widget_2"));
        widget_2->setGeometry(QRect(0, 0, 521, 131));
        layoutWidget_2 = new QWidget(widget_2);
        layoutWidget_2->setObjectName(QStringLiteral("layoutWidget_2"));
        layoutWidget_2->setGeometry(QRect(0, 0, 511, 121));
        horizontalLayout_5 = new QHBoxLayout(layoutWidget_2);
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        horizontalLayout_5->setSizeConstraint(QLayout::SetNoConstraint);
        horizontalLayout_5->setContentsMargins(0, 0, 0, 0);
        grid_X_2 = new QGridLayout();
        grid_X_2->setObjectName(QStringLiteral("grid_X_2"));
        lbl_desiredX = new QLineEdit(layoutWidget_2);
        lbl_desiredX->setObjectName(QStringLiteral("lbl_desiredX"));

        grid_X_2->addWidget(lbl_desiredX, 1, 1, 1, 1);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        lbl_X_2 = new QLabel(layoutWidget_2);
        lbl_X_2->setObjectName(QStringLiteral("lbl_X_2"));
        lbl_X_2->setContextMenuPolicy(Qt::DefaultContextMenu);
        lbl_X_2->setToolTipDuration(-1);
        lbl_X_2->setLayoutDirection(Qt::LeftToRight);
        lbl_X_2->setFrameShape(QFrame::NoFrame);
        lbl_X_2->setScaledContents(true);
        lbl_X_2->setMargin(0);
        lbl_X_2->setOpenExternalLinks(true);

        verticalLayout_3->addWidget(lbl_X_2);


        grid_X_2->addLayout(verticalLayout_3, 1, 0, 1, 1);

        lbl_posX = new QLabel(layoutWidget_2);
        lbl_posX->setObjectName(QStringLiteral("lbl_posX"));
        lbl_posX->setContextMenuPolicy(Qt::DefaultContextMenu);
        lbl_posX->setToolTipDuration(-1);
        lbl_posX->setLayoutDirection(Qt::LeftToRight);
        lbl_posX->setFrameShape(QFrame::NoFrame);
        lbl_posX->setScaledContents(true);
        lbl_posX->setMargin(0);
        lbl_posX->setOpenExternalLinks(true);

        grid_X_2->addWidget(lbl_posX, 0, 1, 1, 1);

        lbl_X_3 = new QLabel(layoutWidget_2);
        lbl_X_3->setObjectName(QStringLiteral("lbl_X_3"));
        lbl_X_3->setContextMenuPolicy(Qt::DefaultContextMenu);
        lbl_X_3->setToolTipDuration(-1);
        lbl_X_3->setLayoutDirection(Qt::LeftToRight);
        lbl_X_3->setFrameShape(QFrame::NoFrame);
        lbl_X_3->setScaledContents(true);
        lbl_X_3->setMargin(0);
        lbl_X_3->setOpenExternalLinks(true);

        grid_X_2->addWidget(lbl_X_3, 2, 0, 1, 1);

        lbl_X_4 = new QLabel(layoutWidget_2);
        lbl_X_4->setObjectName(QStringLiteral("lbl_X_4"));
        lbl_X_4->setContextMenuPolicy(Qt::DefaultContextMenu);
        lbl_X_4->setToolTipDuration(-1);
        lbl_X_4->setLayoutDirection(Qt::LeftToRight);
        lbl_X_4->setFrameShape(QFrame::NoFrame);
        lbl_X_4->setScaledContents(true);
        lbl_X_4->setMargin(0);
        lbl_X_4->setOpenExternalLinks(true);

        grid_X_2->addWidget(lbl_X_4, 3, 0, 1, 1);

        lbl_biasX = new QLineEdit(layoutWidget_2);
        lbl_biasX->setObjectName(QStringLiteral("lbl_biasX"));

        grid_X_2->addWidget(lbl_biasX, 3, 1, 1, 1);

        lbl_nowX = new QLineEdit(layoutWidget_2);
        lbl_nowX->setObjectName(QStringLiteral("lbl_nowX"));

        grid_X_2->addWidget(lbl_nowX, 2, 1, 1, 1);


        horizontalLayout_5->addLayout(grid_X_2);

        grid_Y_2 = new QGridLayout();
        grid_Y_2->setObjectName(QStringLiteral("grid_Y_2"));
        lbl_nowY = new QLineEdit(layoutWidget_2);
        lbl_nowY->setObjectName(QStringLiteral("lbl_nowY"));

        grid_Y_2->addWidget(lbl_nowY, 2, 0, 1, 1);

        lbl_posY = new QLabel(layoutWidget_2);
        lbl_posY->setObjectName(QStringLiteral("lbl_posY"));

        grid_Y_2->addWidget(lbl_posY, 0, 0, 1, 1);

        lbl_biasY = new QLineEdit(layoutWidget_2);
        lbl_biasY->setObjectName(QStringLiteral("lbl_biasY"));

        grid_Y_2->addWidget(lbl_biasY, 3, 0, 1, 1);

        lbl_desiredY = new QLineEdit(layoutWidget_2);
        lbl_desiredY->setObjectName(QStringLiteral("lbl_desiredY"));

        grid_Y_2->addWidget(lbl_desiredY, 1, 0, 1, 1);


        horizontalLayout_5->addLayout(grid_Y_2);

        grid_Yaw_2 = new QGridLayout();
        grid_Yaw_2->setObjectName(QStringLiteral("grid_Yaw_2"));
        lbl_posZ = new QLabel(layoutWidget_2);
        lbl_posZ->setObjectName(QStringLiteral("lbl_posZ"));

        grid_Yaw_2->addWidget(lbl_posZ, 0, 0, 1, 1);

        lbl_biasZ = new QLineEdit(layoutWidget_2);
        lbl_biasZ->setObjectName(QStringLiteral("lbl_biasZ"));

        grid_Yaw_2->addWidget(lbl_biasZ, 3, 0, 1, 1);

        lbl_nowZ = new QLineEdit(layoutWidget_2);
        lbl_nowZ->setObjectName(QStringLiteral("lbl_nowZ"));

        grid_Yaw_2->addWidget(lbl_nowZ, 2, 0, 1, 1);

        lbl_desiredZ = new QLineEdit(layoutWidget_2);
        lbl_desiredZ->setObjectName(QStringLiteral("lbl_desiredZ"));

        grid_Yaw_2->addWidget(lbl_desiredZ, 1, 0, 1, 1);


        horizontalLayout_5->addLayout(grid_Yaw_2);

        gridLayoutWidget = new QWidget(widget);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(0, 140, 511, 111));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        lbl_x = new QLabel(gridLayoutWidget);
        lbl_x->setObjectName(QStringLiteral("lbl_x"));

        gridLayout->addWidget(lbl_x, 0, 0, 1, 1);

        lbl_y = new QLabel(gridLayoutWidget);
        lbl_y->setObjectName(QStringLiteral("lbl_y"));

        gridLayout->addWidget(lbl_y, 1, 0, 1, 1);

        lbl_z = new QLabel(gridLayoutWidget);
        lbl_z->setObjectName(QStringLiteral("lbl_z"));

        gridLayout->addWidget(lbl_z, 2, 0, 1, 1);

        slider_z = new QSlider(gridLayoutWidget);
        slider_z->setObjectName(QStringLiteral("slider_z"));
        slider_z->setEnabled(true);
        slider_z->setMouseTracking(true);
        slider_z->setFocusPolicy(Qt::ClickFocus);
        slider_z->setAcceptDrops(true);
        slider_z->setLayoutDirection(Qt::LeftToRight);
        slider_z->setMinimum(10);
        slider_z->setMaximum(1000000000);
        slider_z->setOrientation(Qt::Horizontal);
        slider_z->setInvertedControls(true);
        slider_z->setTickPosition(QSlider::NoTicks);

        gridLayout->addWidget(slider_z, 2, 1, 1, 1);

        slider_x = new QSlider(gridLayoutWidget);
        slider_x->setObjectName(QStringLiteral("slider_x"));
        slider_x->setEnabled(true);
        slider_x->setMouseTracking(true);
        slider_x->setFocusPolicy(Qt::ClickFocus);
        slider_x->setAcceptDrops(true);
        slider_x->setLayoutDirection(Qt::LeftToRight);
        slider_x->setMinimum(10);
        slider_x->setMaximum(1000000000);
        slider_x->setOrientation(Qt::Horizontal);
        slider_x->setInvertedControls(true);
        slider_x->setTickPosition(QSlider::NoTicks);

        gridLayout->addWidget(slider_x, 0, 1, 1, 1);

        slider_y = new QSlider(gridLayoutWidget);
        slider_y->setObjectName(QStringLiteral("slider_y"));
        slider_y->setEnabled(true);
        slider_y->setMouseTracking(true);
        slider_y->setFocusPolicy(Qt::ClickFocus);
        slider_y->setAcceptDrops(true);
        slider_y->setLayoutDirection(Qt::LeftToRight);
        slider_y->setMinimum(10);
        slider_y->setMaximum(1000000000);
        slider_y->setOrientation(Qt::Horizontal);
        slider_y->setInvertedControls(true);
        slider_y->setTickPosition(QSlider::NoTicks);

        gridLayout->addWidget(slider_y, 1, 1, 1, 1);


        horizontalLayout_4->addWidget(widget);


        retranslateUi(MyPluginWidget);

        QMetaObject::connectSlotsByName(MyPluginWidget);
    } // setupUi

    void retranslateUi(QWidget *MyPluginWidget)
    {
        MyPluginWidget->setWindowTitle(QApplication::translate("MyPluginWidget", "Form", Q_NULLPTR));
        lbl_X_2->setText(QApplication::translate("MyPluginWidget", "desired", Q_NULLPTR));
        lbl_posX->setText(QApplication::translate("MyPluginWidget", "pos_x (m)", Q_NULLPTR));
        lbl_X_3->setText(QApplication::translate("MyPluginWidget", "now", Q_NULLPTR));
        lbl_X_4->setText(QApplication::translate("MyPluginWidget", "bias", Q_NULLPTR));
        lbl_posY->setText(QApplication::translate("MyPluginWidget", "pos_y (m)", Q_NULLPTR));
        lbl_posZ->setText(QApplication::translate("MyPluginWidget", "pos_z (m)", Q_NULLPTR));
        lbl_x->setText(QApplication::translate("MyPluginWidget", "desired_x", Q_NULLPTR));
        lbl_y->setText(QApplication::translate("MyPluginWidget", "desired_y", Q_NULLPTR));
        lbl_z->setText(QApplication::translate("MyPluginWidget", "desired_z", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MyPluginWidget: public Ui_MyPluginWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MY_PLUGIN_H
