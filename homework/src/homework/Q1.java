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
		
		System.out.println("1.��ü ��ȸ 2.Key�� ��ȸ 3.�߰�  4.key�� ������� ���� 5.key�� ������� ����");
		
		int slc = scan.nextInt();
		Iterator<String> mapIter = map.keySet().iterator();
		
		/*
		 * String alpha = ""; //Ű int num; //value
		 */
		if(slc==1) {
			while(mapIter.hasNext()) {
				String key = mapIter.next();
				int value = map.get(key);  //value�� ��Ʈ�� Ÿ���̴ϱ�
				
				System.out.println(key+"-"+value);
				}
		}else if(slc==2){
			System.out.println("��ȸ�ϱ� ���� key �Է�");
			String key = scan.next();
			if(key==null) {
				System.out.println("ã�� ���� ����");
			}else {
				int value = map.get(key);
				System.out.println("����"+value);
			}
		
		}
		else if(slc==3) {
			System.out.println("Ű�Է�"); 
			String key = scan.next();
			if(map.containsKey(key)) {
				System.out.println("�̹�����");
			} else {
				System.out.println("����Է�"); 
				int value = scan.nextInt();
				
				map.put(key, value);	
			}
			
		}else if(slc==4) {
			System.out.println("�����ϰ���� ����� Ű�� �Է��ϼ���");
			String key = scan.next(); 
			
			System.out.println("����� �Է��ϼ���?");
			int value2 = scan.nextInt();
			
			map.put(key,value2);
			
		
			
		}else if(slc==5) {
			System.out.println("�����ϰ���� ����� Ű�� �Է��ϼ���");
			String key = scan.next();  //�� nextLine,�� �ȵɱ�
			
			if(map.containsKey(key)) {
				map.remove(key);
				System.out.println(key+"����");
			}
			else {
				System.out.println("���������ʴ´�");
			}
			
		
		}
		
		
	}
	
	

}
