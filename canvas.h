#ifndef CANVAS_H
#define CANVAS_H

#include <QDeclarativeItem>

class Canvas : public QDeclarativeItem
{
    Q_OBJECT
    Q_DISABLE_COPY(Canvas)

public:
    Canvas(QDeclarativeItem *parent = 0);
    ~Canvas();
    Q_INVOKABLE void init();

//public slots:




};

QML_DECLARE_TYPE(Canvas)

#endif // CANVAS_H

