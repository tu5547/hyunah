package homework;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;

public class Q2_stream {

	public static void main(String[] args) {
		
		Map<Integer,String> map = new HashMap<>();
		map.put(1, "ABC");
		map.put(2, "ABCD");
		map.put(3, "ABCDE");
		
		System.out.println("1.전체 조회 2.key로 조회 3.추가 4.수정 5.삭제 ");
		Scanner scan = new Scanner(System.in);
		int num = scan.nextInt();
		
		
		switch(num) {
		case 1:
			map.entrySet().stream().forEach(entry -> System.out.println(entry.getKey()+"/"+entry.getValue()));
			break;
		case 2:
			  System.out.println("조회할 밸류의 key입력");
			  int input = scan.nextInt();
			  
			  Map<Object, Object> collect = map.entrySet().stream() .filter(x -> x.getKey()
			  == input) .collect(Collectors.toMap(x -> x.getKey(), x ->x.getValue()));
			  
			  System.out.println("조회"+collect);
		 
			break;
		case 3:
			
			System.out.println("키를 입력하세요");
			int k = scan.nextInt();
			if(map.containsKey(k)) {
				System.out.println("이미 존재 합니다.");
			}
			else {
				System.out.println("밸류를 입력하세요");
				String v = scan.next();
				
				map.put(k,v);
				map.entrySet().stream().forEach(entry -> System.out.println(entry.getKey()+"/"+entry.getValue()));
			}
			
			break;
		case 4:
			System.out.println("수정할 key를 입력하세요");
			int kk = scan.nextInt();
			if(map.containsKey(kk)) {
				System.out.println("밸류를 입력하세요");
				String v = scan.next();
				
				map.put(kk,v);
				map.entrySet().stream().forEach(entry -> System.out.println(entry.getKey()+"/"+entry.getValue()));
			}else {
				System.out.println("없음");
			}
			break;
			
		case 5:
			System.out.println("삭제할 키를 입력하세요");
			int remove = scan.nextInt();
			map.entrySet().removeIf(entry -> entry.getKey().equals(remove));
			map.entrySet().stream().forEach(entry -> System.out.println(entry.getKey()+"/"+entry.getValue()));
			break;
			
		default:
			System.out.println("이상한거 입력하면 종료");
			break;
		}
	}

}
