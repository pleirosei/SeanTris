//
//  TShape.swift
//  SeanTrist
//
//  Created by Sean Livingston on 3/30/15.
//  Copyright (c) 2015 Sean Livingston. All rights reserved.
//

import Foundation

class TShape: Shape {
    /*

    Orientation 0*
    
      * | 0 |
    | 1 | 2 | 3 |
    
    Orientation 90*
    
      * | 1 |
        | 2 | 0 |
        | 3 |
    
    Orientation 180*
    *
    | 3 | 2 | 1 |
        | 0 |
    
    Orientation 270*
      * | 3 |
    | 0 | 2 |
        | 1 |
    
    */
    
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff:Int, rowDiff:Int)>] {
        return [
            Orientation.Zero: [(1, 0), (0, 1), (1, 1), (2, 1)],
            Orientation.Ninety: [(2, 1),  (1, 0), (1, 1), (1, 2)],
            Orientation.OneEighty: [(1, 2), (0, 1), (1, 1), (2, 1)],
            Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
    
    
}