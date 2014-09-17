//
//  voronoi.swift
//  VoronoySweepSwift
//
//  Created by Dmitry on 9/14/14.
//  Copyright (c) 2014 zimCo. All rights reserved.
//

import Foundation

struct Site{
    var coordinate : Point	;
    var siteNumber : Int;
    var refCount : Int;
};

struct Edge	{
    var	a,b,c :     Float;
    var ep :        [Site?] = [nil, nil];
    var reg :       [Site?] = [nil, nil];;
    var edgenbr :   Int;
};

struct	Point {
    var x, y : Float;
}

class Voronoi{
    private
    var sites: [Site] = [];
    var points: [Point] = [];
    var nextSiteIndex = 0;
    var verticesCount = 0;  //nvertices
    var edgesCount = 0;     // nedges
    var minX, minY, maxX, maxY : Float;
    
    internal
    init(points: [Point]){
        self.points = points.sorted { (p1, p2) -> Bool in
            if p1.y == p2.y {
                return p2.x > p1.x;
            }
            return p2.y > p1.y;
        };
        minX = self.points[0].x;
        maxX = self.points[-1].x;
        for point in self.points{
            if point.x > maxX{
                maxX = point.x;
            }
            if point.x < minX{
                minX = point.x;
            }
        }
        minY = self.points[0].y;
        maxY = self.points[0].y;
        
    }
}





