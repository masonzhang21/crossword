//
//  BoardView.swift
//  crossword
//
//  Created by Mason Zhang on 6/3/20.
//  Copyright © 2020 mason. All rights reserved.
//

import SwiftUI

struct BoardView: View {
    
    
    var body: some View {
        GeometryReader{geometry in
            self.buildGrid(geometry)
        }
    }
    
    func buildGrid(_ geometry: GeometryProxy) -> some View{
        func makeTile(at loc: TileLoc) -> some View {
            Group {
            if vm.scheme.grid[loc.row][loc.col] == nil {
                Rectangle().fill(Color.black).onTapGesture {
                    self.vm.toggleBoard()
                }
            } else {
                CrosswordTile(vm: self.vm, tile: self.vm.state.grid[loc.row][loc.col]!, loc: loc)
                }
            }
        }
        
        return VStack(spacing: 0) {
            ForEach(0..<self.vm.scheme.numRows) {i in
                HStack(spacing: 0) {
                    ForEach(0..<self.vm.scheme.numCols) {j in
                        makeTile(at: TileLoc(row: i, col: j)).border(Color.gray, width: 0.5)
                    }
                }
            }
            }.border(Color.black, width: 1).frame(width: geometry.size.width, height: geometry.size.width)
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
