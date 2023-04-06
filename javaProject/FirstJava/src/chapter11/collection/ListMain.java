package chapter11.collection;

import java.util.ArrayList;
import java.util.List;;

public class ListMain {

	public static void main(String[] args) {
		
		//나의 팀을 구성하고 싶다 -> 선수들을 저장할 수 있는 공간을 생성하고 선수들을 저장	
		
		List<FootballPlayer> listP = new ArrayList<>();
				
//		FootballPlayer f = new FootballPlayer("토트넘",7,"손흥민",31);
		listP.add(new FootballPlayer("손흥민 ",7,"토트넘",31));
		listP.add(new FootballPlayer("캉진리",18,"마요르카",20));
		listP.add(new FootballPlayer("박지성",11,"맨유",40));
		
		for(FootballPlayer player : listP) {
			player.showInfo();
		}
		
		System.out.println("--------------------------");
		
		//람다식 이걸쓰면 반복문 안써도됨 짱좋음
		listP.stream().forEach((FootballPlayer p) -> p.showInfo());
		
		listP.stream().forEach(System.out::println);
		
		

	}

}
