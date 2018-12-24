class InfoController < ApplicationController
  def result

#거리 quicksort한 결과
    def quicksort(x)
        if len(x) == 1
            return x
        end
        pivot = x[len(x)/2]
            less = []
            more = []
        for a in (x)
            if (a < pivot)
                less.append(a)
            elsif (a > pivot)
                more.append(a)
            else
                equal = [a]
            end
        end
    return quicksort(less) + equal + quicksort(more)
    end

#'적절한' 화장실 가중치 부여
    def goodness(x)
        @clean=session[:clean].to_i
        @near=session[:near].to_i
        @supply=session[:supplies].to_i

        return @clean * @near * @supply
    end
        

    @curLat=params[:curLat].to_f
    @curLon=params[:curLon].to_f

    lat = session[:lat].to_a
    lon = session[:lon].to_a

    len = []

    lat.each do |i|
        lon.each do |o|
        if lat(i) > @curLat
                dis_lat = ( lat(i) - @curLat)
        else
            dis_lat = ( @curLat - lat(i) )
        end

        if lon(o) > @curLon
                dis_lon = ( lon(o) - @curLon)
        else
            dis_lon = ( @curLon - lon(o))
        end

        goodness = goodness()

        k = (dis_lat + dis_lon) * goodness
        len << k
        
        end
    end
    
    distance = quicksort()
end
end
