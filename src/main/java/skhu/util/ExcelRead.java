package skhu.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
 
 
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.PictureData;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFDrawing;
import org.apache.poi.xssf.usermodel.XSSFPicture;
import org.apache.poi.xssf.usermodel.XSSFPictureData;
import org.apache.poi.xssf.usermodel.XSSFShape;
 
 
 
public class ExcelRead {
     public static List<Map<String, String>> read(ExcelReadOption excelReadOption,String path) throws FileNotFoundException, IOException {
            //엑셀 파일 자체
            //엑셀파일을 읽어 들인다.
            //FileType.getWorkbook() <-- 파일의 확장자에 따라서 적절하게 가져온다.
            Workbook wb = ExcelFileType.getWorkbook(excelReadOption.getFilePath());
            /**
             * 엑셀 파일에서 첫번째 시트를 가지고 온다.
             */
            Sheet sheet = wb.getSheetAt(0);
            
            System.out.println("Sheet 이름: "+ wb.getSheetName(0)); 
            System.out.println("데이터가 있는 Sheet의 수 :" + wb.getNumberOfSheets());
            /**
             * sheet에서 유효한(데이터가 있는) 행의 개수를 가져온다.
             */
            int numOfRows = sheet.getPhysicalNumberOfRows();
            int numOfCells = 0;
            
            Row row = null;
            Cell cell = null;
            
            String cellName = "";
            /**
             * 각 row마다의 값을 저장할 맵 객체
             * 저장되는 형식은 다음과 같다.
             * put("A", "이름");
             * put("B", "게임명");
             */
            Map<String, String> map = null;
            /*
             * 각 Row를 리스트에 담는다.
             * 하나의 Row를 하나의 Map으로 표현되며
             * List에는 모든 Row가 포함될 것이다.
             */
            List<Map<String, String>> result = new ArrayList<Map<String, String>>(); 
            /**
             * 각 Row만큼 반복을 한다.
             */
            for(int rowIndex = excelReadOption.getStartRow() - 1; rowIndex < numOfRows; rowIndex++) {
                /*
                 * 워크북에서 가져온 시트에서 rowIndex에 해당하는 Row를 가져온다.
                 * 하나의 Row는 여러개의 Cell을 가진다.
                 */
                row = sheet.getRow(rowIndex);
                
                if(row != null) {
                    /*
                     * 가져온 Row의 Cell의 개수를 구한다.
                     */
                    //numOfCells = row.getPhysicalNumberOfCells();
                    numOfCells = 12; //못 읽어 들임.. 추가한 Cell 12로 고정.
                    /*
                     * 데이터를 담을 맵 객체 초기화
                     */
                    map = new HashMap<String, String>();
                    /*
                     * cell의 수 만큼 반복한다.
                     */
                    for(int cellIndex = 0; cellIndex < numOfCells; cellIndex++) {
                        /*
                         * Row에서 CellIndex에 해당하는 Cell을 가져온다.
                         */
                        cell = row.getCell(cellIndex);
                        /*
                         * 현재 Cell의 이름을 가져온다
                         * 이름의 예 : A,B,C,D,......
                         */
                        cellName = ExcelCellRef.getName(cell, cellIndex);
                        /*
                         * 추출 대상 컬럼인지 확인한다
                         * 추출 대상 컬럼이 아니라면, 
                         * for로 다시 올라간다
                         */
                        if( !excelReadOption.getOutputColumns().contains(cellName) ) {
                            continue;
                        }
                        /*
                         * map객체의 Cell의 이름을 키(Key)로 데이터를 담는다.
                         */
                        map.put(cellName, ExcelCellRef.getValue(cell));
                    }
                    /*
                     * 만들어진 Map객체를 List로 넣는다.
                     */
                    result.add(map);
                    
                }
                
            }
            readDrawing(result,sheet,path); //사진 등록
            System.out.println(result.get(0).toString());
            System.out.println(result.get(4).toString());
            return result;
            
        }
    public static void readDrawing(List<Map<String, String>> result,Sheet sheet,String path) throws FileNotFoundException, IOException{
    	XSSFDrawing drawing = (XSSFDrawing) sheet.createDrawingPatriarch(); // I know it is ugly, actually you get the actual instance here
        //List list = new List();
    	for (XSSFShape shape : drawing.getShapes()) {
            if (shape instanceof XSSFPicture) {
                XSSFPicture picture = (XSSFPicture) shape;
                XSSFPictureData xssfPictureData = picture.getPictureData();
                ClientAnchor anchor = picture.getPreferredSize();
                //int row1 = anchor.getRow1();
                int row2 = anchor.getRow2();
                //System.out.println("Row1: " + row1 + " Row2: " + row2);
                // Saving the file
                String ext = xssfPictureData.suggestFileExtension();                
                byte[] data = xssfPictureData.getData();
                
                try (FileOutputStream os = new FileOutputStream(path+result.get(row2-5).get("H")+"."+ext)) {
                    os.write(data);
                    os.flush();
                }
                result.get(row2-5).replace("D",result.get(row2-5).get("H")+"."+ext);
            }
       }
       //return list;
    }
}