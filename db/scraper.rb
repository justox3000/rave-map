require 'open-uri'
require 'nokogiri'
require 'rubygems'

# "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?pagenumber=1"

url1 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75107&uis=1661867530"
url2 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75178&uis=1661867530"
url3 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75193&uis=1661867530"
url4 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75220&uis=1661867530"
url5 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75129&uis=1661867530"
url6 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75145&uis=1661867530"
url7 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75182&uis=1661868199"
url8 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75194&uis=1661868199"
url9 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75040&uis=1661868199"
url10 = "https://morgengrau.net/cgi-bin/morgengrau/show_event.pl?sts=det&event_id=75172&uis=1661868199"

urls = [url1, url2, url3, url4, url5, url6, url7, url8, url9, url10]
