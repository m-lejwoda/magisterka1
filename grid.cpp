#include<iostream>
#include "grid.h"
#include "cell.h"
using namespace std;

void Grid::generateGrid(liblas::Header header,liblas::Reader reader,Cell tab[268][180]){
    cout.precision(15);
    double cellsize = 0.5;
    double R = (cellsize * sqrt(2))/2;
    cout<<"generate grid"<<endl;
    int minx = (header.GetMaxX() - header.GetMinX())/cellsize;
    int miny = (header.GetMaxY() - header.GetMinY())/cellsize;

    for(int i=0;i<minx;i++){
        for(int j=0;j<miny;j++){
            tab[i][j].centerx = header.GetMinX() + (i*(cellsize)) + (cellsize/2);
            tab[i][j].centery = header.GetMaxY() - ((j*(cellsize))+ (cellsize/2));
        }
    }
}

void Grid::distance_beetween_points(liblas::Header header,liblas::Reader reader,Cell tab[268][180]){
    cout.precision(15);
    double cellsize = 0.5;
    double R = (cellsize * sqrt(2))/2;
    reader.ReadPointAt(1002);
    liblas::Point const& r = reader.GetPoint();
    int x = floor((r.GetX() - header.GetMinX())/cellsize);
    int y = floor((header.GetMaxY() - r.GetY())/cellsize);
    double result = sqrt(pow((tab[x][y].centerx)-r.GetX(),2)+pow((tab[x][y].centery)-r.GetY(),2));
    cout<<tab[x][y].centerx - r.GetX()<<endl;
    cout<<tab[x][y].centery - r.GetY()<<endl;
    if(result>R){

        for(int el=1;el<=ceil(1/cellsize);el++){
            for(int el2=1;el2<=ceil(1/cellsize);el2++){
                float result2 = sqrt(pow((tab[x+el][y+el2].centerx)-r.GetX(),2)+pow((tab[x+el][y+el2].centery)-r.GetY(),2));
                if(result2<=R){
                    cout<<"wynik w poprawnym for"<<result2<<"tab["<<x+el<<"]["<<y+el2<<"]"<<endl;
                    break;
                }
            }
        }
    }else{
        cout<<"wynik w pierwszym"<<result<<"tab["<<x<<"]["<<y<<"]"<<endl;
    }


    liblas::Point const& p = reader.GetPoint();
    int count = 0;
    while (reader.ReadNextPoint()) {
//        if (p.GetClassification().GetClass() == 0 or p.GetClassification().GetClass() == 2) {
//            count++;
//        } else {
//            continue;
//        }
        if(p.GetClassification().GetClass() == 2){
            count++;
        }else{
            continue;
        }
        int x = floor((p.GetX() - header.GetMinX()) / cellsize);
        int y = floor((header.GetMaxY() - p.GetY()) / cellsize);
        if(x == 268){
            x= 267;
        }
        double result = sqrt(pow((tab[x][y].centerx) - p.GetX(), 2) + pow((tab[x][y].centery) - p.GetY(), 2));
//        if (result > R) {
//            cout<<x<<" oraz "<<y<<endl;
//            for (int el = 1; el <= ceil(1 / cellsize); el++) {
//                for (int el2 = 1; el2 <= ceil(1 / cellsize); el2++) {
//                    if(x+el>268 or y+el2>180){
//                        continue;
//                    }
//                    float result2 = sqrt(pow((tab[x + el][y + el2].centerx) - p.GetX(), 2) +
//                                         pow((tab[x + el][y + el2].centery) - p.GetY(), 2));
//                    if (result2 <= R) {
//                        cout<<x + el<<" oraz "<<y + el2<<endl;
//                        tab[x + el][y + el2].points.push_back(p);
//                        tab[x + el][y + el2].distance.push_back(result2);
//                        break;
//                    }
//                }
//            }
//        } else {
            tab[x][y].points.push_back(p);
            tab[x][y].distance.push_back(result);
//        }
//        cout<<"count = "<<count<<endl;
    }
//    cout<<"liczba elementow w tab = "<<tab[56][76].points.size()<<endl;
}
double Grid::neighbours(int x,int y,Cell tab[268][180]){
    if(tab[x-1][y-1].points.size()>0){
        tab[x][y].value = tab[x-1][y-1].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x][y-1].points.size()>0){
        tab[x][y].value = tab[x][y-1].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x+1][y-1].points.size()>0){
        tab[x][y].value = tab[x+1][y-1].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x-1][y].points.size()>0){
        tab[x][y].value = tab[x-1][y].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x+1][y].points.size()>0){
        tab[x][y].value = tab[x+1][y].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x-1][y+1].points.size()>0){
        tab[x][y].value = tab[x-1][y+1].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x][y+1].points.size()>0){
        tab[x][y].value = tab[x][y+1].points[0].GetZ();
        return tab[x][y].value;
    }
    if(tab[x+1][y+1].points.size()>0){
        tab[x][y].value = tab[x+1][y+1].points[0].GetZ();
        return tab[x][y].value;
    }
    else{
        return tab[x][y].value = 77;
    }

}
void Grid::idw(Cell tab[268][180]){
    cout<<"algorytm idw"<<endl;
    for(int i=0;i<268;i++){
        for(int j=0;j<180;j++){
            cout<<"tab["<<i<<"]"<<"["<<j<<"] = "<<tab[i][j].points.size()<<endl;
            double result = 0;
            double result1 = 0;
            double result2 = 0;
            double temp = 0;
            int size = tab[i][j].points.size();
            if(size>0) {
                for (int k = 0; k < size; k++) {
                    result1 = result1 + (tab[i][j].points[k].GetZ() / tab[i][j].distance[k]);
                    result2 = result2 + (1 / tab[i][j].distance[k]);
                    if(tab[i][j].distance[k] == 0){
                        temp = tab[i][j].points[k].GetZ();
                    }
                }

                result = result1 / result2;
                if(temp != 0){
                    tab[i][j].value = temp;
                    cout << "tab[" << i << "]" << "[" << j << "] temp = " << temp << endl;
                }else {
                    tab[i][j].value = result;
                }
            }else{
                neighbours(i,j,tab);
//                tab[i][j].value = 75;
            }
        }
    }

}
void get_center_of_every_cell(Cell tab[268][180],LineCell arr[134][90]){
    printf("get_center_of_every_cell");
}
