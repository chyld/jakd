User.delete_all

urls = []
urls << 'http://www.lawyers.com/LBM_Images/Offices/law-firm-lady-justice-a-professional-law-corporation-law-offices-of-photo-860005.png'
urls << 'http://www.nexslim.com/images/ProfessionalLady.jpg'
urls << 'http://thumbs.dreamstime.com/thumblarge_427/1249988537JXMQym.jpg'
urls << 'http://www.globaltextiles.com/html/images/upload/tradeleads/562/561653.jpg'
urls << 'http://www.wholesale020.com/images/201209/thumb_img/26627_thumb_G_1347607292292.jpg'
urls << 'http://static6.businessinsider.com/image/4edd38ae69bedd366c000028-900/and-the-accompanying-one-includes-a-fully-clothed-strong-pr-professional-lady.jpg'
urls << 'http://pokerroomreview.com/wp-content/uploads/2010/06/Lady-Poker.jpg'

['sarah', 'sally', 'jenny', 'francis', 'sophia', 'belle', 'elle'].each_with_index do |person, index|
  User.create(:username => person, :password => 'a', :password_confirmation => 'a', :remote_avatar_url => urls[index])
end
