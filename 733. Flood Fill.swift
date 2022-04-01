class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        var checkArr: [[Bool]] = Array(repeating: Array(repeating: false, count: image[0].count), count: image.count)
        
        floodFillValue(image: &image, checkArr: &checkArr, defaultColor: image[sr][sc], newColor: newColor, sr: sr, sc: sc)
        
        return image
    }
    
    func floodFillValue(image: inout [[Int]], checkArr: inout [[Bool]], defaultColor: Int, newColor: Int, sr: Int, sc: Int) {
        if checkArr[sr][sc] == true {
            return
        }
        
        if (image[sr][sc] == defaultColor) {
            image[sr][sc] = newColor
            checkArr[sr][sc] = true
        } else {
            return 
        }
        
        if (sr - 1 >= 0) && (checkArr[sr - 1][sc] == false){
            floodFillValue(image: &image, checkArr: &checkArr, defaultColor: defaultColor, newColor: newColor, sr: sr - 1, sc: sc)
        }
        
        if (sr + 1 < image.count) && (checkArr[sr + 1][sc] == false) {
            floodFillValue(image: &image, checkArr: &checkArr, defaultColor: defaultColor, newColor: newColor, sr: sr + 1, sc: sc)
        }
        
        if (sc - 1 >= 0) && (checkArr[sr][sc - 1] == false){
            floodFillValue(image: &image, checkArr: &checkArr, defaultColor: defaultColor, newColor: newColor, sr: sr, sc: sc - 1)
        }
        
        if (sc + 1 < image[sr].count) && (checkArr[sr][sc + 1] == false){
            floodFillValue(image: &image, checkArr: &checkArr, defaultColor: defaultColor, newColor: newColor, sr: sr, sc: sc + 1)
        }
    }
}