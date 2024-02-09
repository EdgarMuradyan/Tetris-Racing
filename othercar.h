#ifndef OTHERCAR_H
#define OTHERCAR_H

#include <QObject>

class Othercar : public QObject
{
    Q_OBJECT
public:
    explicit Othercar(QObject *parent = nullptr);
    explicit Othercar(int x, int y, QImage* image){
        this->x = x;
        this->y = y;
        this->image = image;
    }



    //seters
    void set_x(int x){
        this->x = x;
    }
    void set_y(int y){
        this->y = y;
    }
    void set_height(int height){
        this->height = height;
    }
    void set_width(int width){
        this->width = width;
    }
    void set_coordinates(int x, int y){
        this->x = x;
        this->y = y;
    }

signals:

private:
    QImage *image = nullptr;
    int x = 0;
    int y = 0;
    int height = 0;
    int width = 0;
};

#endif // OTHERCAR_H
