class BaseController < ApplicationController
  def index
    
    @array = ["data:image/png;base64,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" ,"data:image/png;base64,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",
  "http://m1.daumcdn.net/svc/image/U03/common_icon/5587C4E4012FCD0001", "http://cfile26.uf.tistory.com/image/221D4441559D5CB42FCCFA", "http://cfile1.uf.tistory.com/image/241A904E5682625E2FDBE4", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGQVqfeDaTowj6BTE97_WjPqv5mykxItCB_2dYZkiIsaFF-Pa-", "http://cfile1.uf.tistory.com/image/2627BC4B5631AA9304E40E", "http://ojsfile.ohmynews.com/STD_IMG_FILE/2015/1106/IE001890147_STD.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsnJH3sAdAPTtmvlnYmYOqlpSvQ6CPAKCV9nZQadwiR75Sru3wQ", "http://pds.joins.com/news/component/htmlphoto_mmdata/201704/24/b2b031e0-4fb4-4dda-a13b-1da1982a4b75.jpg", "http://pds26.egloos.com/pds/201506/28/58/f0068858_558fe987347ab.jpg", "http://cfile21.uf.tistory.com/image/226A8934521983E6159E70", "http://cfile2.uf.tistory.com/image/263BEB3D5427441F010CFA", "http://cfile5.uf.tistory.com/image/261F8F3355A32C402AF68F", "http://www.fashionseoul.com/wp-content/uploads/2016/03/20160317_EXID_0.jpg", "http://cfile30.uf.tistory.com/image/264E19485685FB3131D4B7", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHUpBw2dK6h7Wr-XxxtDYYSOBbahcTpwjoTy9qELUAnC_UBGfS", "http://img.tenasia.hankyung.com/webwp_kr/wp-content/uploads/2015/01/2015012817294610969-540x810.jpg", "http://image.tvdaily.co.kr/upimages/gisaimg/201504/04880905.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi6tonyhjU3dkKDG2lSreb1iOuOHHRMxruhpOd4BtCGW7zO9n2", "http://image.chosun.com/sitedata/image/201503/14/2015031401788_0.jpg", "https://pbs.twimg.com/profile_images/794820080357941250/KORpBn6w.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvfYYMClNg22umMWpEVhe9D0pnQY_zJCu807H9CrIW2VDyMbSasw", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBXrIvHdQXqDFZLNaj38_IyKKqvrnZ9MsPWM-Ho0_t18LAzU7bBg",  "https://pbs.twimg.com/profile_images/797568751784853504/2UbxW8at.jpg", "http://img.tenasia.hankyung.com/webwp_kr/wp-content/uploads/2016/02/2016021419533616149-540x812.jpg"]
    
  
  
  x = [1,2,3,4,5,6,7,8,9,10].sample(10)
  
    
    @result1 = case x[0]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result2 = case x[1]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result3 = case x[2]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result4 = case x[3]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result5 = case x[4]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result6 = case x[5]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result7 = case x[6]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result8 = case x[7]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result9 = case x[8]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
    
    @result10 = case x[9]
       when 1 then "1은1이다"
       when 2 then "2는2이다"
       when 3 then "3은3이다"
       when 4 then "4는4이다"
       when 5 then "5는5이다"
       when 6 then "6은6이다"
       when 7 then "7은7이다"
       when 8 then "8은8이다"
       when 9 then "9는9이다"
       when 10 then "10은10이다"
    end 
   
      
    
              
  end

  def write
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
