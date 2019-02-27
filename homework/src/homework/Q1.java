package homework;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Scanner;
import java.util.Set;

public class Q1 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		HashMap<String,Integer> map = new HashMap<String,Integer>();
		
		map.put("A", 1);
		map.put("B", 2);
		map.put("C", 3);
		
		System.out.println("1.전체 조회 2.Key로 조회 3.추가  4.key를 기반으로 갱신 5.key를 기반으로 삭제");
		
		int slc = scan.nextInt();
		Iterator<String> mapIter = map.keySet().iterator();
		
		/*
		 * String alpha = ""; //키 int num; //value
		 */
		if(slc==1) {
			while(mapIter.hasNext()) {
				String key = mapIter.next();
				int value = map.get(key);  //value는 스트링 타입이니까
				
				System.out.println(key+"-"+value);
				}
		}else if(slc==2){
			System.out.println("조회하기 위해 key 입력");
			String key = scan.next();
			if(key==null) {
				System.out.println("찾는 값이 없다");
			}else {
				int value = map.get(key);
				System.out.println("값은"+value);
			}
		
		}
		else if(slc==3) {
			System.out.println("키입력"); 
			String key = scan.next();
			if(map.containsKey(key)) {
				System.out.println("이미존재");
			} else {
				System.out.println("밸류입력"); 
				int value = scan.nextInt();
				
				map.put(key, value);	
			}
			
		}else if(slc==4) {
			System.out.println("수정하고싶은 밸류의 키를 입력하세요");
			String key = scan.next(); 
			
			System.out.println("밸류를 입력하세요?");
			int value2 = scan.nextInt();
			
			map.put(key,value2);
			
		
			
		}else if(slc==5) {
			System.out.println("삭제하고싶은 밸류의 키를 입력하세요");
			String key = scan.next();  //왜 nextLine,은 안될까
			
			if(map.containsKey(key)) {
				map.remove(key);
				System.out.println(key+"삭제");
			}
			else {
				System.out.println("존재하지않는다");
			}
			
		
		}
		
		
	}
	
	

}
