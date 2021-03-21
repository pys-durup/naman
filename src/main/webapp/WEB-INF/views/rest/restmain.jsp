<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
    
   <header class="main-header" style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/0776fea76b4a824ff583128cb51dd45c.jpg');">

          <div>
      <p class="title">맛있는 음식 먹으며 여행하자! </p>
      <h1 class="title">나만여행 맛집</h1>
      <p class="title"> <button class="btn btn-primary" id="btnfind"><sapn>GO 나의 숙소 근처 맛집</sapn></button></p>
       <p class="title"> <button class="btn btn-primary" id="recomendBoard"><sapn>맛집 추천 게시판</sapn></button></p>
       

      <p class="options">
        
      </p>
    
      <fieldset class="main-search" >
        <legend>전체 검색</legend>
    
        <label class="search-word" for="main-search">
          <span class="icon">검색 :</span>
          <input id="main-search" class="HomeSearchInput" name="main-search" type="text" maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off" onclick="trackEvent('CLICK_SEARCH_MAIN')">
          <span class="clear_btn">CLEAR</span>
        </label>
    
        <input class="btn-search" type="submit" value="검색" onclick="trackEvent('CLICK_KEYWORD_SEARCH');">
      </fieldset>
    
      <aside class="shortcut-app type-main">
        
      </aside>
    </div>
    

    
    
     </header>
    
          <a class="inbound_banner only-mobile is_background" href="https://www.mangoplate.com/eat_deals" onclick="common_ga('PG_MAIN', 'CLICK_SALES_LOCAL')" style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/zanmofgd-kuncgxq.png)"></a>
    

    
<div class="ad_area card_list card_list_btf only-mobile" id="web_mobile-home-card_list_btf-2" style="display: none;"><div class="ad_wrap"><div class="content" id="web_mobile-home-card_list_btf-2-content" data-google-query-id="CO6M--bnpO8CFdlDYAodlnUB3g" style="display: none;"><div id="google_ads_iframe_/395211568/production/mobile-web.main.sections.btf_0__container__" style="border: 0pt none; width: 320px; height: 100px;"></div></div></div></div><div class="ad_area card_list card_list_btf only-desktop" id="web_desktop-home-card_list_btf-2" style="display: none;"><div class="ad_wrap"><div class="content" id="web_desktop-home-card_list_btf-2-content" data-google-query-id="CNm3iZzlpO8CFZoZKgodbZoIwA" style="display: none;"><div id="google_ads_iframe_/395211568/production/desktop-web.main.sections.btf_0__container__" style="border: 0pt none; width: 728px; height: 90px;"></div></div></div></div>

    
            <section class="module popular_top_list_wrap">
      <div class="module_title_wrap">
        <h2 class="title">지역별 인기 맛집</h2>
      </div>
      <div class="slider-container toplist-slider">
        <button class="btn-nav prev slick-arrow slick-disabled" style="display: inline-block;" aria-disabled="true"></button>
        <button class="btn-nav next slick-arrow" style="display: block;" aria-disabled="false"></button>
    
        <div class="top_list_slide slick-initialized slick-slider slick-dotted" role="toolbar">
            
            
            
        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 1530px; transform: translate3d(0px, 0px, 0px);"><ul class="list-toplist-slider slick-slide slick-current slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide10" data-slick-index="0" aria-hidden="false">
                <li>
                  <img class="center-croping" alt="2021 충청도 인기 맛집 TOP 25 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/h6mcsviuzb91rjk3.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2752_chungcheongdo2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="13">2021 충청도 인기 맛집 TOP 25</span>
                          <p class="desc" data-ellipsis-id="43">"충청도 맛집도 많다구유~!"</p>
                          <p class="hash">
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#2021 </span>
                              <span>#망고인기맛집 </span>
                              <span>#충청도 </span>
                              <span>#충청북도 </span>
                              <span>#충청남도 </span>
                              <span>#당진 </span>
                              <span>#충북 </span>
                              <span>#충남 </span>
                              <span>#태안 </span>
                              <span>#천안 </span>
                              <span>#보령 </span>
                              <span>#아산 </span>
                              <span>#논산 </span>
                              <span>#서산 </span>
                              <span>#계룡 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 강북 인기 맛집 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/2xuc1gbiojvpbah5.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2736_gangbuk2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="14">2021 강북 인기 맛집 TOP 100</span>
                          <p class="desc" data-ellipsis-id="44">"원조 노포부터 핫플까지, 한강 위쪽으로 가보자!"</p>
                          <p class="hash">
                              <span>#2021강북 </span>
                              <span>#2021 강북 </span>
                              <span>#강북 </span>
                              <span>#성수 </span>
                              <span>#을지로 </span>
                              <span>#광화문 </span>
                              <span>#종로 </span>
                              <span>#북촌 </span>
                              <span>#서촌 </span>
                              <span>#대학로 </span>
                              <span>#성북 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide11" data-slick-index="1" aria-hidden="false">
                <li>
                  <img class="center-croping" alt="2021 제주 인기 맛집 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/3ektfb1atzt8vmzu.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2745_jejudo2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="15">2021 제주 인기 맛집 TOP 100</span>
                          <p class="desc" data-ellipsis-id="45">"올해 버킷리스트: #제주도 맛집 여행"</p>
                          <p class="hash">
                              <span>#제주도 </span>
                              <span>#제주 </span>
                              <span>#서귀포시 </span>
                              <span>#제주시 </span>
                              <span>#제주여행 </span>
                              <span>#제주맛집 </span>
                              <span>#고기국수 </span>
                              <span>#돔베고기 </span>
                              <span>#흑돼지 </span>
                              <span>#고등어회 </span>
                              <span>#갈치회 </span>
                              <span>#몸국 </span>
                              <span>#오겹살 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#해산물 </span>
                              <span>#서귀포 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 핫플레이스 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/017reeqhdhi-plik.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2747_hotplace2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="16">2021 핫플레이스 TOP 50</span>
                          <p class="desc" data-ellipsis-id="46">"2021년이 더욱 기대되는 이곳!"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#2021 핫플레이스 </span>
                              <span>#핫플레이스 </span>
                              <span>#신상맛집 </span>
                              <span>#핫플 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#신상 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide12" data-slick-index="2" aria-hidden="true">
                <li>
                  <img class="center-croping" alt="2021 경상도 인기 맛집 TOP 20 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/ebqbb_mbpxc4mjwv.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2749_gyeongsangdo2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="17">2021 경상도 인기 맛집 TOP 20</span>
                          <p class="desc" data-ellipsis-id="47">"포항, 경주, 통영까지 찍고 #경상도 맛집 투어"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#2021경상도 </span>
                              <span>#2021 경상도 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#포항 </span>
                              <span>#경주 </span>
                              <span>#통영 </span>
                              <span>#경상도맛집 </span>
                              <span>#경상도 맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 경기도 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/sidht9a8gyosads3.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2727_gyeonggido2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="18">2021 경기도 TOP 100</span>
                          <p class="desc" data-ellipsis-id="48">"경기도에서 맛집 찾는 건 너무 쉬워!"</p>
                          <p class="hash">
                              <span>#경기도 </span>
                              <span>#경기 </span>
                              <span>#고양시 </span>
                              <span>#고양 </span>
                              <span>#일산 </span>
                              <span>#성남시 </span>
                              <span>#성남 </span>
                              <span>#분당 </span>
                              <span>#부천시 </span>
                              <span>#부천 </span>
                              <span>#동두천시 </span>
                              <span>#동두천 </span>
                              <span>#안산시 </span>
                              <span>#안산 </span>
                              <span>#시흥시 </span>
                              <span>#시흥 </span>
                              <span>#하남시 </span>
                              <span>#하남 </span>
                              <span>#용인시 </span>
                              <span>#용인 </span>
                              <span>#파주시 </span>
                              <span>#파주 </span>
                              <span>#이천시 </span>
                              <span>#이천 </span>
                              <span>#김포시 </span>
                              <span>#김포 </span>
                              <span>#안성시 </span>
                              <span>#안성 </span>
                              <span>#광주시 </span>
                              <span>#여주시 </span>
                              <span>#여주 </span>
                              <span>#포천시 </span>
                              <span>#포천 </span>
                              <span>#화성시 </span>
                              <span>#화성 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#2021 경기 </span>
                              <span>#2021경기도 </span>
                              <span>#2021 경기도 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul></div></div><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation10" id="slick-slide10"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation11" id="slick-slide11"><button type="button" data-role="none" role="button" tabindex="0">2</button></li></ul></div>
      </div>
    </section><div class="ad_area card_list card_list_btf only-mobile" id="web_mobile-home-card_list_btf-6" style="display: none;"><div class="ad_wrap"><div class="content" id="web_mobile-home-card_list_btf-6-content" data-google-query-id="CPCM--bnpO8CFdlDYAodlnUB3g" style="display: none;"><div id="google_ads_iframe_/395211568/production/mobile-web.main.sections.btf_2__container__" style="border: 0pt none; width: 320px; height: 100px;"></div></div></div></div><div class="ad_area card_list card_list_btf only-desktop" id="web_desktop-home-card_list_btf-6" style="display: none;"><div class="ad_wrap"><div class="content" id="web_desktop-home-card_list_btf-6-content" data-google-query-id="CNu3iZzlpO8CFZoZKgodbZoIwA" style="display: none;"><div id="google_ads_iframe_/395211568/production/desktop-web.main.sections.btf_2__container__" style="border: 0pt none; width: 728px; height: 90px;"></div></div></div></div>
    


    <section class="module popular_top_list_wrap">
        <div class="module_title_wrap">
          <h2 class="title">믿고 보는 맛집 리스트</h2>
            <a class="module_more" href="/top_lists" onclick="trackEvent('CLICK_TOPLIST_LIST')">
              리스트 더보기
            </a>
        </div>
        <div class="slider-container toplist-slider">
          <button class="btn-nav prev slick-arrow slick-disabled" style="display: inline-block;" aria-disabled="true"></button>
          <button class="btn-nav next slick-arrow" style="display: block;" aria-disabled="false"></button>
      
          <div class="top_list_slide slick-initialized slick-slider slick-dotted" role="toolbar">
              
              
              
              
              
              
          <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 3060px; transform: translate3d(0px, 0px, 0px);"><ul class="list-toplist-slider slick-slide slick-current slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide00" data-slick-index="0" aria-hidden="false">
                  <li>
                    <img class="center-croping" alt="경기도 안성 맛집 베스트 10곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/75wfldldswl_fo.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/2761_Anseong" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="1">경기도 안성 맛집 베스트 10곳</span>
                            <p class="desc" data-ellipsis-id="31">"안성도 나름 맛집 많다구요!"</p>
                            <p class="hash">
                                <span>#경기도안성 </span>
                                <span>#경기도 안성 </span>
                                <span>#안성시 </span>
                                <span>#안성 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="여의도 맛집 베스트 55곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/72dbny1qwmlx_wbf.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/661_yeouido" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="2">여의도 맛집 베스트 55곳</span>
                            <p class="desc" data-ellipsis-id="32">"요즘 제일 핫한 #여의도"</p>
                            <p class="hash">
                                <span>#여의도 </span>
                                <span>#여의도증권가 </span>
                                <span>#여의도역 </span>
                                <span>#여의도공원 </span>
                                <span>#샛강역 </span>
                                <span>#IFC몰 </span>
                                <span>#국회의사당역 </span>
                                <span>#IFC </span>
                                <span>#더현대서울 </span>
                                <span>#여의도현대백화점 </span>
                                <span>#여의도현대 </span>
                                <span>#KBS </span>
                                <span>#ifc </span>
                                <span>#아이에프씨몰 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul><ul class="list-toplist-slider slick-slide slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide01" data-slick-index="1" aria-hidden="false">
                  <li>
                    <img class="center-croping" alt="마라샹궈 맛집 베스트 35곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/yovcwkrjrk2jgzhn.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/1775_marashangguo" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="3">마라샹궈 맛집 베스트 35곳</span>
                            <p class="desc" data-ellipsis-id="33">"한 번 빠지면 헤어나올 수 없어"</p>
                            <p class="hash">
                                <span>#마라 </span>
                                <span>#마라탕 </span>
                                <span>#마라 샹궈 </span>
                                <span>#마라향궈 </span>
                                <span>#마라향과 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="쌈밥 맛집 베스트 15곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/cis0ojaludd2hopb.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/1003_ssambap" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="4">쌈밥 맛집 베스트 15곳</span>
                            <p class="desc" data-ellipsis-id="34">"최고의 다이어트 요리, 쌈밥!"</p>
                            <p class="hash">
                                <span>#쌈밥 </span>
                                <span>#쌈 밥 </span>
                                <span>#쌈 </span>
                                <span>#우렁쌈밥 </span>
                                <span>#우렁된장 </span>
                                <span>#우렁 </span>
                                <span>#제육 </span>
                                <span>#제육쌈밥 </span>
                                <span>#건강 </span>
                                <span>#웰빙 </span>
                                <span>#채소 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide02" data-slick-index="2" aria-hidden="true">
                  <li>
                    <img class="center-croping" alt="경기도 양평 맛집 베스트 20곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/w9ayxqfgicsdi9h5.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/1079_yangpyeong" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="5">경기도 양평 맛집 베스트 20곳</span>
                            <p class="desc" data-ellipsis-id="35">"양평 가는 길엔 이것만 보세요!"</p>
                            <p class="hash">
                                <span>#경기도 양평 </span>
                                <span>#경기도양평 </span>
                                <span>#양평 </span>
                                <span>#현대블룸비스타 </span>
                                <span>#경기 양평 </span>
                                <span>#양평군 </span>
                                <span>#드라이브 </span>
                                <span>#서울 근교 </span>
                                <span>#용문면 </span>
                                <span>#용문 </span>
                                <span>#옥천면 </span>
                                <span>#옥천 </span>
                                <span>#양서면 </span>
                                <span>#양평읍 </span>
                                <span>#서종면 </span>
                                <span>#강하면 </span>
                                <span>#개군면 </span>
                                <span>#양서 </span>
                                <span>#서종 </span>
                                <span>#강하 </span>
                                <span>#개군 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="바지락 칼국수 맛집 베스트 15곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/q52670ivdq65kmaj.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/816_bajirakkalguksu" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="6">바지락 칼국수 맛집 베스트 15곳</span>
                            <p class="desc" data-ellipsis-id="36">"바지락이 들어가면 게임 끝이지 뭐!"</p>
                            <p class="hash">
                                <span>#바지락 칼국수 </span>
                                <span>#바지락칼국수 </span>
                                <span>#칼국수 </span>
                                <span>#손칼국수 </span>
                                <span>#해물 칼국수 </span>
                                <span>#해물칼국수 </span>
                                <span>#조개칼국수 </span>
                                <span>#조개 칼국수 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide03" data-slick-index="3" aria-hidden="true">
                  <li>
                    <img class="center-croping" alt="매운탕 맛집 베스트 15곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/kecbe87l1zk8idmw.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/maeuntang_top5" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="7">매운탕 맛집 베스트 15곳</span>
                            <p class="desc" data-ellipsis-id="37">"라면 사리 vs 수제비 여러분의 선택은?"</p>
                            <p class="hash">
                                <span>#매운탕 </span>
                                <span>#회 </span>
                                <span>#얼큰매운탕 </span>
                                <span>#얼큰 매운탕 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="샐러드 맛집 베스트 45곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/aehwz8i7jchv_7b0.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/708_salad" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="8">샐러드 맛집 베스트 45곳</span>
                            <p class="desc" data-ellipsis-id="38">"샐러드도 맛있게 먹을 수 있다구!"</p>
                            <p class="hash">
                                <span>#샐러드 </span>
                                <span>#샐러드맛집 </span>
                                <span>#웰빙 </span>
                                <span>#채식 </span>
                                <span>#채식메뉴 </span>
                                <span>#비건 </span>
                                <span>#다이어트 </span>
                                <span>#다이어트식단 </span>
                                <span>#건강식단 </span>
                                <span>#건강 </span>
                                <span>#셀러드 </span>
                                <span>#포케 </span>
                                <span>#다이어터 </span>
                                <span>#야채 </span>
                                <span>#콥샐러드 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide04" data-slick-index="4" aria-hidden="true">
                  <li>
                    <img class="center-croping" alt="일산 맛집 베스트 50곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/mnheyf29klwvzmrw.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/1256_ilsan" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="9">일산 맛집 베스트 50곳</span>
                            <p class="desc" data-ellipsis-id="39">"일산러 맛집은 우리가 책임질게!"</p>
                            <p class="hash">
                                <span>#일산 </span>
                                <span>#라페스타일산 </span>
                                <span>#롯데백화점일산점 </span>
                                <span>#일산MBC </span>
                                <span>#일산호수공원 </span>
                                <span>#풍산역 </span>
                                <span>#정발산역 </span>
                                <span>#백석역 </span>
                                <span>#마두역 </span>
                                <span>#대화역 </span>
                                <span>#주엽역 </span>
                                <span>#고양시 </span>
                                <span>#일산동구 </span>
                                <span>#일산서구 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="제주 흑돼지 맛집 베스트 20곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/c-nqunn6mfkgzv1o.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/664_jeju_blackpig" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="10">제주 흑돼지 맛집 베스트 20곳</span>
                            <p class="desc" data-ellipsis-id="40">"제주도 필수 코스, 여기 가면 성공!"</p>
                            <p class="hash">
                                <span>#제주 흑돼지 </span>
                                <span>#흑돼지 </span>
                                <span>#제주흑돼지 </span>
                                <span>#제주도 </span>
                                <span>#제주도흑돼지 </span>
                                <span>#제주도 흑돼지 </span>
                                <span>#제주 돼지고기 </span>
                                <span>#제주도 돼지고기 </span>
                                <span>#고기집 </span>
                                <span>#고깃집 </span>
                                <span>#키토제닉 </span>
                                <span>#저탄고지 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide05" data-slick-index="5" aria-hidden="true">
                  <li>
                    <img class="center-croping" alt="강릉 맛집 베스트 55곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/c96ekkuo3hup0l.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/628_gangneung" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="11">강릉 맛집 베스트 55곳</span>
                            <p class="desc" data-ellipsis-id="41">"강릉에서 유명한 건 다 여기 있네!"</p>
                            <p class="hash">
                                <span>#강릉시 </span>
                                <span>#강원도 </span>
                                <span>#정동진 </span>
                                <span>#주문진 </span>
                                <span>#주문진항 </span>
                                <span>#경포해변 </span>
                                <span>#경포대 </span>
                                <span>#강릉 </span>
                                <span>#안목해변 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
                  <li>
                    <img class="center-croping" alt="감자탕 맛집 베스트 20곳 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/-ztj2kzhwdmbuibf.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
      
                    <a href="/top_lists/859_gamjatang" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                      <figure class="ls-item">
                        <figcaption class="info">
                          <div class="info_inner_wrap">
                            <span class="title" data-ellipsis-id="12">감자탕 맛집 베스트 20곳</span>
                            <p class="desc" data-ellipsis-id="42">"보이지 않는 살코기까지 쏙쏙!"</p>
                            <p class="hash">
                                <span>#감자탕 </span>
                                <span>#뼈해장국 </span>
                                <span>#뼈다귀해장국 </span>
                                <span>#감자국 </span>
                                <span>#해장 </span>
                                <span>#해장국 </span>
                                <span>#뼈다귀 해장국 </span>
                            </p>
                          </div>
                        </figcaption>
                      </figure>
                    </a>
                  </li>
              </ul></div></div><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01"><button type="button" data-role="none" role="button" tabindex="0">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02"><button type="button" data-role="none" role="button" tabindex="0">3</button></li></ul></div>
        </div>
      </section><div class="ad_area card_list only-mobile" id="web_mobile-home-card_list-0" style="display: none;"><div class="ad_wrap"><div class="content" id="web_mobile-home-card_list-0-content" data-google-query-id="CO2M--bnpO8CFdlDYAodlnUB3g" style="display: none;"><div id="google_ads_iframe_/395211568/production/mobile-web.main.sections.atf_0__container__" style="border: 0pt none; width: 320px; height: 100px;"></div></div></div></div><div class="ad_area card_list only-desktop" id="web_desktop-home-card_list-0" style="display: none;"><div class="ad_wrap"><div class="content" id="web_desktop-home-card_list-0-content" data-google-query-id="CNi3iZzlpO8CFZoZKgodbZoIwA" style="display: none;"><div id="google_ads_iframe_/395211568/production/desktop-web.main.sections.atf_0__container__" style="border: 0pt none; width: 728px; height: 90px;"></div></div></div></div>


            <section class="module popular_top_list_wrap">
      <div class="module_title_wrap">
        <h2 class="title">메뉴별 인기 맛집</h2>
      </div>
      <div class="slider-container toplist-slider">
        <button class="btn-nav prev slick-arrow slick-disabled" style="display: inline-block;" aria-disabled="true"></button>
        <button class="btn-nav next slick-arrow" style="display: block;" aria-disabled="false"></button>
    
        <div class="top_list_slide slick-initialized slick-slider slick-dotted" role="toolbar">
            
            
            
            
            
            
        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 3060px; transform: translate3d(0px, 0px, 0px);"><ul class="list-toplist-slider slick-slide slick-current slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide20" data-slick-index="0" aria-hidden="false">
                <li>
                  <img class="center-croping" alt="2021 다이닝 인기 맛집 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/m0n_qczwz4ph8w.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2732_dining2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="19">2021 다이닝 인기 맛집 TOP 50</span>
                          <p class="desc" data-ellipsis-id="49">"처음부터 끝까지 완벽한 다이닝 코스!"</p>
                          <p class="hash">
                              <span>#다이닝 </span>
                              <span>#파인다이닝 </span>
                              <span>#컨템포러리 </span>
                              <span>#모던 </span>
                              <span>#코스 </span>
                              <span>#코스요리 </span>
                              <span>#이탈리안 </span>
                              <span>#프렌치 </span>
                              <span>#모던 한식 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 중식 인기 맛집 TOP 100  사진" src="https://mp-seoul-image-production-s3.mangoplate.com/12280/w35s8amhzzhrrz.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2742_chinese2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="20">2021 중식 인기 맛집 TOP 100 </span>
                          <p class="desc" data-ellipsis-id="50">"2021년을 강타할 중식 맛집은 여기 다 모였다!"</p>
                          <p class="hash">
                              <span>#중식 </span>
                              <span>#중국 </span>
                              <span>#중국식 </span>
                              <span>#중국집 </span>
                              <span>#마라 </span>
                              <span>#짜장 </span>
                              <span>#자장 </span>
                              <span>#짬봉 </span>
                              <span>#탕수육 </span>
                              <span>#유린기 </span>
                              <span>#깐풍 </span>
                              <span>#멘보샤 </span>
                              <span>#어향동고 </span>
                              <span>#가지 </span>
                              <span>#딤섬 </span>
                              <span>#만두 </span>
                              <span>#동파육 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide21" data-slick-index="1" aria-hidden="false">
                <li>
                  <img class="center-croping" alt="2021 양식 인기 맛집 TOP 100  사진" src="https://mp-seoul-image-production-s3.mangoplate.com/61355/zg8txoicgrx_rz.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2740_western2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="21">2021 양식 인기 맛집 TOP 100 </span>
                          <p class="desc" data-ellipsis-id="51">"고품격 레스토랑부터 캐주얼까지 총정리!"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#양식 </span>
                              <span>#이탈리안 </span>
                              <span>#스페인 </span>
                              <span>#유럽 </span>
                              <span>#퓨전 </span>
                              <span>#세계 </span>
                              <span>#브런치 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#스테이크 </span>
                              <span>#파스타 </span>
                              <span>#뇨끼 </span>
                              <span>#코스 </span>
                              <span>#다이닝 </span>
                              <span>#파인다이닝 </span>
                              <span>#프렌치 </span>
                              <span>#프랑스 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 분식 인기 맛집 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/7dox9oeq6gzf8r.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2744_bunsik2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="0">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="22">2021 분식 인기 맛집 TOP 50</span>
                          <p class="desc" data-ellipsis-id="52">"대한민국 소울 푸드 떡튀순!"</p>
                          <p class="hash">
                              <span>#2021분식 </span>
                              <span>#2021 </span>
                              <span>#떡볶이 </span>
                              <span>#떡보끼 </span>
                              <span>#떡복이 </span>
                              <span>#김밥 </span>
                              <span>#분식 </span>
                              <span>#분식집 </span>
                              <span>#돈가스 </span>
                              <span>#돈까스 </span>
                              <span>#순대 </span>
                              <span>#즉떡 </span>
                              <span>#즉석떡볶이 </span>
                              <span>#즉석 떡볶이 </span>
                              <span>#쫄면 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide22" data-slick-index="2" aria-hidden="true">
                <li>
                  <img class="center-croping" alt="2021 한식 인기 맛집 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/12280/bulzl0grxjmdcs.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2739_hansik2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="23">2021 한식 인기 맛집 TOP 100</span>
                          <p class="desc" data-ellipsis-id="53">"한식은 아무리 먹어도 질리지가 않아!"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#한식 </span>
                              <span>#2021한식맛집 </span>
                              <span>#2021한식 </span>
                              <span>#2021 한식 </span>
                              <span>#2021 한식맛집 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 세계음식 인기 맛집 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/xrdfsbcecomr2z.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2726_world2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="24">2021 세계음식 인기 맛집 TOP 100</span>
                          <p class="desc" data-ellipsis-id="54">"2021년엔 세계음식 정복하기!"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#세계음식 </span>
                              <span>#2021세계음식맛집 </span>
                              <span>#2021세계음식 </span>
                              <span>#2021 세계음식 </span>
                              <span>#2021 세계음식맛집 </span>
                              <span>#세계 음식 </span>
                              <span>#2021 세계 음식 </span>
                              <span>#2021세계 음식 </span>
                              <span>#베트남 </span>
                              <span>#태국 </span>
                              <span>#멕시칸 </span>
                              <span>#해외 </span>
                              <span>#세계 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide23" data-slick-index="3" aria-hidden="true">
                <li>
                  <img class="center-croping" alt="2021 스시 인기 맛집 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/2z1dp_ojrayqem.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2735_sushi2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="25">2021 스시 인기 맛집 TOP 50</span>
                          <p class="desc" data-ellipsis-id="55">"가성비 스시 맛집부터 하이엔드 스시야까지!"</p>
                          <p class="hash">
                              <span>#2021스시 </span>
                              <span>#2021 스시 </span>
                              <span>#스시 </span>
                              <span>#초밥 </span>
                              <span>#오마카세 </span>
                              <span>#우니 </span>
                              <span>#사시미 </span>
                              <span>#회초밥 </span>
                              <span>#회 </span>
                              <span>#초밥코스 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 일식 인기 맛집 TOP 100  사진" src="https://mp-seoul-image-production-s3.mangoplate.com/265831/jw0vfrhlyrwdre.jpg?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2728_japanese2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="26">2021 일식 인기 맛집 TOP 100 </span>
                          <p class="desc" data-ellipsis-id="56">"돈카츠부터 라멘까지, 2021 일식 먹킷리스트!"</p>
                          <p class="hash">
                              <span>#2021일식 </span>
                              <span>#일식 </span>
                              <span>#2021 </span>
                              <span>#2021스시 </span>
                              <span>#스시 </span>
                              <span>#라멘 </span>
                              <span>#덮밥 </span>
                              <span>#카츠 </span>
                              <span>#우동 </span>
                              <span>#오마카세 </span>
                              <span>#초밥 </span>
                              <span>#일본요리 </span>
                              <span>#일본음식 </span>
                              <span>#일본 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide24" data-slick-index="4" aria-hidden="true">
                <li>
                  <img class="center-croping" alt="2021 인기 베이커리 TOP 100 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/vcityk6czfpsy1hp.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2746_bakery2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="27">2021 인기 베이커리 TOP 100</span>
                          <p class="desc" data-ellipsis-id="57">"빵 없이 못 사는 분들을 위한 생존 필수 빵집 리스트"</p>
                          <p class="hash">
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#2021 </span>
                              <span>#베이커리 </span>
                              <span>#빵 </span>
                              <span>#케익 </span>
                              <span>#케잌 </span>
                              <span>#케이크 </span>
                              <span>#브레드 </span>
                              <span>#제과 </span>
                              <span>#구움과자 </span>
                              <span>#발효 </span>
                              <span>#인기베이커리 </span>
                              <span>#순례 </span>
                              <span>#타르트 </span>
                              <span>#팥 </span>
                              <span>#버터 </span>
                              <span>#치아바타 </span>
                              <span>#바게트 </span>
                              <span>#크로와상 </span>
                              <span>#식빵 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 스테이크 인기 맛집 TOP 20 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/qpm0com8cptku1kr.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2734_steak2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="28">2021 스테이크 인기 맛집 TOP 20</span>
                          <p class="desc" data-ellipsis-id="58">"미디엄 말고 라지로 구워주세요."</p>
                          <p class="hash">
                              <span>#스테이크 </span>
                              <span>#2021 </span>
                              <span>#2021스테이크 </span>
                              <span>#안심 </span>
                              <span>#등심 </span>
                              <span>#채끝 </span>
                              <span>#티본 </span>
                              <span>#T본 </span>
                              <span>#t본 </span>
                              <span>#드라이에이징 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul><ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide25" data-slick-index="5" aria-hidden="true">
                <li>
                  <img class="center-croping" alt="2021 피자 인기 맛집 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/y_w5gsl8oceppmge.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2750_pizza2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="29">2021 피자 인기 맛집 TOP 50</span>
                          <p class="desc" data-ellipsis-id="59">"미국식, 이탈리안 가리지 않는 찐 피자 맛집!"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#2021피자 </span>
                              <span>#피자 </span>
                              <span>#화덕피자 </span>
                              <span>#화덕 </span>
                              <span>#토마토소스피자 </span>
                              <span>#이탈리안 </span>
                              <span>#조각피자 </span>
                              <span>#조각 피자 </span>
                              <span>#하프 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
                <li>
                  <img class="center-croping" alt="2021 수제버거 인기 맛집 TOP 50 사진" src="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/c96669y5ywqfjew7.png?fit=around|600:400&amp;crop=600:400;*,*&amp;output-format=jpg&amp;output-quality=80">
    
                  <a href="/top_lists/2748_burger2021" onclick="trackEvent('CLICK_TOPLIST');" tabindex="-1">
                    <figure class="ls-item">
                      <figcaption class="info">
                        <div class="info_inner_wrap">
                          <span class="title" data-ellipsis-id="30">2021 수제버거 인기 맛집 TOP 50</span>
                          <p class="desc" data-ellipsis-id="60">"육즙이 폭발하는 패티와 폭신한 번, 최고의 버거 맛집은?"</p>
                          <p class="hash">
                              <span>#2021 </span>
                              <span>#2021수제버거 </span>
                              <span>#2021 수제버거 </span>
                              <span>#수제버거 </span>
                              <span>#수제 버거 </span>
                              <span>#버거 </span>
                              <span>#햄버거 </span>
                              <span>#패티 </span>
                              <span>#감자튀김 </span>
                              <span>#감튀 </span>
                              <span>#2021망고플레이트인기맛집 </span>
                              <span>#치킨버거 </span>
                              <span>#치킨 버거 </span>
                              <span>#번 </span>
                          </p>
                        </div>
                      </figcaption>
                    </figure>
                  </a>
                </li>
            </ul></div></div><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation20" id="slick-slide20"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation21" id="slick-slide21"><button type="button" data-role="none" role="button" tabindex="0">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation22" id="slick-slide22"><button type="button" data-role="none" role="button" tabindex="0">3</button></li></ul></div>
      </div>
    </section>
    
      </article>


</main>
    
</body>
</html>