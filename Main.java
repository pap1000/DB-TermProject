import java.util.*;
import java.sql.*;
public class Main {
    public static void main(String args[]) {
        Scanner scanner = new Scanner(System.in);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/?characterEncoding=UTF-8&serverTimezone=UTC",
                    "root","1234");
            int menu, sid, pid, umid;
            String passwd = "";
            System.out.println("우산 대여시스템입니다.");
            String query = "USE rent_umbrella";
            PreparedStatement db = con.prepareStatement(query);
            db.execute();
            System.out.println("메뉴를 입력하시오(1.대여 2.반납 3.고장신고)");
            menu = scanner.nextInt();
            switch (menu) {
                case 1:
                    System.out.println("현재 위치(번호)를 선택해주십시오.");
                    System.out.println("1.정문 2.법대 3.대학본부 4.도서관 5.학생생활관 6.생활과학대 7.동문 8.사범대 9.개신문화관 10.의대 11.공대본관 12.전자정보1관 13.수의대 14.남문 15.자연대 16.정보화본부 17.양성재 18.농대");
                    pid = scanner.nextInt();
                    System.out.println("학번, 비번을 차례대로 입력하시오.");
                    sid = scanner.nextInt();
                    passwd = scanner.next();
                    PreparedStatement check = con.prepareStatement("SELECT stid FROM student WHERE stid = " + sid + " AND passwd = " + passwd);
                    ResultSet c =check.executeQuery();
                    if(c.next()) {
                        PreparedStatement Search1 = con.prepareStatement("SELECT umid FROM umbrella WHERE rental_status = 0 AND trouble = 0 AND pid = " + pid);
                        ResultSet available_umid = Search1.executeQuery();
                        if(available_umid.next()) {
                            umid = available_umid.getInt("umid");
                            PreparedStatement rent = con.prepareStatement("UPDATE umbrella SET rental_status = 1 WHERE umid =" + umid);
                            PreparedStatement rent2 = con.prepareStatement("UPDATE student SET rent = " + umid + " WHERE stid = " + sid);
                            PreparedStatement rent3 = con.prepareStatement("UPDATE rental_place SET total_number = total_number -1 WHERE pid = " + pid);
                            rent.executeUpdate();
                            rent2.executeUpdate();
                            rent3.executeUpdate();
                            System.out.println("정상적으로 대여되었습니다.");
                        }
                        else
                            System.out.println("사용가능한 우산이 없습니다. 다음에 이용해주십시오.");
                    }
                    else
                        System.out.println("로그인 정보가 일치하지 않습니다. 다시 시도해주십시오.");
                    break;
                case 2:
                    System.out.println("현재 위치(번호)를 선택해주십시오.");
                    System.out.println("1.정문 2.법대 3.대학본부 4.도서관 5.학생생활관 6.생활과학대 7.동문 8.사범대 9.개신문화관 10.의대 11.공대본관 12.전자정보1관 13.수의대 14.남문 15.자연대 16.정보화본부 17.양성재 18.농대\n");
                    pid = scanner.nextInt();
                    System.out.println("반납할 우산의 id를 입력해주십시오.");
                    int use_umid = scanner.nextInt();
                    PreparedStatement Search2 = con.prepareStatement("SELECT stid FROM student WHERE rent = " + use_umid);
                    ResultSet c2 = Search2.executeQuery();
                    if(c2!=null) {
                        PreparedStatement Return = con.prepareStatement("UPDATE umbrella SET rental_status = 0 WHERE umid =" + use_umid);
                        PreparedStatement Return2 = con.prepareStatement("UPDATE student SET rent = " + null +  " WHERE rent = " + use_umid);
                        PreparedStatement Return3 = con.prepareStatement("UPDATE rental_place SET total_number = total_number +1 WHERE pid = " + pid);
                        Return.executeUpdate();
                        Return2.executeUpdate();
                        Return3.executeUpdate();
                        System.out.println("정상적으로 반납되었습니다.");
                    }
                    else
                        System.out.println("대여되지 않은 우산입니다.");
                    break;
                case 3:
                    System.out.println("신고할 우산의 id를 입력해주십시오.");
                    int broken = scanner.nextInt();
                    PreparedStatement Search3 = con.prepareStatement("SELECT stid FROM student WHERE rent = " + broken);
                    ResultSet c3 = Search3.executeQuery();
                    if(c3!=null) {
                        PreparedStatement report = con.prepareStatement("UPDATE umbrella SET rental_status = 0, conditon = 1 WHERE umid =" + broken);
                        PreparedStatement report2 = con.prepareStatement("UPDATE student SET rent = " + null + " WHERE rent = " + broken);
                        report.executeUpdate();
                        report2.executeUpdate();
                        System.out.println("정상적으로 신고되었습니다.");
                    }
                    else
                        System.out.println("대여되지 않은 우산입니다. 우산의 id를 다시 확인해주세요.");
                    break;
            }
            con.close();

        }catch(Exception e){ System.out.println(e);}
        scanner.close();
    }
}