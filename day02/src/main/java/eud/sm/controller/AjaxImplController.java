package eud.sm.controller;

import eud.sm.dto.HotItem;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class AjaxImplController {

    // 이전 순위를 저장하기 위한 Map
    private Map<String, Integer> previousRanking = new HashMap<>();

    // 검색 키워드 목록
    private List<String> keywords = Arrays.asList(
            "날씨", "러브버그", "에어컨", "전기세", "장마", "휴가", "코로나",
            "올림픽", "아이폰", "삼성", "LG", "현대", "카카오", "네이버",
            "배달", "치킨", "피자", "커피", "넷플릭스", "유튜브", "인스타그램",
            "페이스북", "트위터", "게임", "영화", "드라마", "K팝", "BTS",
            "블랙핑크", "축구", "야구", "농구", "테니스", "골프", "주식",
            "비트코인", "부동산", "여행", "맛집", "쇼핑", "패션", "뷰티"
    );

    @RequestMapping("/gettime")
    public Object getTime(){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = sdf.format(date);
        return str;
    }

    @RequestMapping("/getdata")
    public List<HotItem> getData(){
        List<HotItem> list = new ArrayList<>();

        // 키워드 리스트를 랜덤으로 섞기
        List<String> shuffledKeywords = new ArrayList<>(keywords);
        Collections.shuffle(shuffledKeywords);

        // 상위 5개만 선택
        for(int i = 0; i < Math.min(5, shuffledKeywords.size()); i++){
            String keyword = shuffledKeywords.get(i);
            int currentRank = i + 1;
            String updown = "NEW";

            // 이전 순위와 비교
            if(previousRanking.containsKey(keyword)){
                int prevRank = previousRanking.get(keyword);
                if(currentRank < prevRank){
                    updown = "UP";
                } else if(currentRank > prevRank){
                    updown = "DOWN";
                } else {
                    updown = "SAME";
                }
            }

            list.add(HotItem.builder()
                    .cnt(currentRank)
                    .title(keyword)
                    .updown(updown)
                    .build());
        }

        // 현재 순위를 이전 순위로 업데이트
        previousRanking.clear();
        for(HotItem item : list){
            previousRanking.put(item.getTitle(), item.getCnt());
        }

        return list;
    }
}
