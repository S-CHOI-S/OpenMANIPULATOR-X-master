/****************************************************************************
** Meta object code from reading C++ file 'my_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/rqt_mypkg/include/my_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'my_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin_t {
    QByteArrayData data[9];
    char stringdata0[117];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin_t qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin = {
    {
QT_MOC_LITERAL(0, 0, 23), // "rqt_mypkg_cpp::MyPlugin"
QT_MOC_LITERAL(1, 24, 3), // "run"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 14), // "where_callback"
QT_MOC_LITERAL(4, 44, 20), // "geometry_msgs::Twist"
QT_MOC_LITERAL(5, 65, 4), // "pose"
QT_MOC_LITERAL(6, 70, 8), // "callback"
QT_MOC_LITERAL(7, 79, 15), // "ros::TimerEvent"
QT_MOC_LITERAL(8, 95, 21) // "slider_moved_Callback"

    },
    "rqt_mypkg_cpp::MyPlugin\0run\0\0"
    "where_callback\0geometry_msgs::Twist\0"
    "pose\0callback\0ros::TimerEvent\0"
    "slider_moved_Callback"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rqt_mypkg_cpp__MyPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x08 /* Private */,
       3,    1,   35,    2, 0x08 /* Private */,
       6,    1,   38,    2, 0x08 /* Private */,
       8,    0,   41,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4,    5,
    QMetaType::Void, 0x80000000 | 7,    2,
    QMetaType::Void,

       0        // eod
};

void rqt_mypkg_cpp::MyPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MyPlugin *_t = static_cast<MyPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->run(); break;
        case 1: _t->where_callback((*reinterpret_cast< const geometry_msgs::Twist(*)>(_a[1]))); break;
        case 2: _t->callback((*reinterpret_cast< const ros::TimerEvent(*)>(_a[1]))); break;
        case 3: _t->slider_moved_Callback(); break;
        default: ;
        }
    }
}

const QMetaObject rqt_mypkg_cpp::MyPlugin::staticMetaObject = {
    { &rqt_gui_cpp::Plugin::staticMetaObject, qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin.data,
      qt_meta_data_rqt_mypkg_cpp__MyPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *rqt_mypkg_cpp::MyPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rqt_mypkg_cpp::MyPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rqt_mypkg_cpp__MyPlugin.stringdata0))
        return static_cast<void*>(this);
    return rqt_gui_cpp::Plugin::qt_metacast(_clname);
}

int rqt_mypkg_cpp::MyPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rqt_gui_cpp::Plugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
