# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Community.delete_all
Sport.delete_all



running = Sport.create(name: 'Running', description: 'Great way to keep fit without a gym membership', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)
football = Sport.create(name: 'Football', description: 'Great way to keep fit without a gym membership', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)
yoga = Sport.create(name: 'Yoga', description: 'Great way to keep fit without a gym membership', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)

community1 = running.communities.create(name: "Runner's Club", description: "Beginner's club", image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', post_code: 'E15')
community2 = running.communities.create(name: "Runnerzzz", description: "Intermediate club", image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', post_code: 'E17')
community3 = running.communities.create(name: "Runner's Club", description: "A beginner's club", image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', post_code: 'WC1')

community1.posts.create(title: 'Getting started', content: 'Bacon ipsum dolor amet shankle capicola corned beef sausage porchetta, prosciutto cupim landjaeger jowl spare ribs ham kielbasa fatback doner bacon. Kevin jerky sausage, pancetta chuck corned beef beef ribs meatball. Pancetta corned beef ball tip jerky kevin kielbasa, shank sausage pork chop shoulder. Chicken sausage drumstick, beef jerky tenderloin kielbasa meatball meatloaf sirloin beef ribs salami brisket cupim. Kielbasa bacon turducken, short loin brisket sausage drumstick tail tri-tip salami shoulder pork belly capicola doner shankle. Leberkas chuck spare ribs chicken shankle salami tail swine bacon flank capicola drumstick. Ribeye venison ground round turkey.Sirloin tri-tip andouille tenderloin bresaola filet mignon salami short loin landjaeger corned beef cupim doner boudin. Porchetta meatball beef jerky bresaola tail short loin venison. Corned beef swine tongue tenderloin ribeye. Biltong pork chop fatback flank andouille shank. Sausage leberkas short ribs turducken flank. Chuck cupim frankfurter filet mignon, beef leberkas chicken spare ribs corned beef meatball tri-tip short ribs turkey pork belly sirloin. Shank biltong flank meatloaf jowl, landjaeger porchetta corned beef cupim turducken.')
community1.posts.create(title: 'Energy gels: the good, the bad and the ugly', content: 'Sirloin tri-tip andouille tenderloin bresaola filet mignon salami short loin landjaeger corned beef cupim doner boudin. Porchetta meatball beef jerky bresaola tail short loin venison. Corned beef swine tongue tenderloin ribeye. Biltong pork chop fatback flank andouille shank. Sausage leberkas short ribs turducken flank. Chuck cupim frankfurter filet mignon, beef leberkas chicken spare ribs corned beef meatball tri-tip short ribs turkey pork belly sirloin. Shank biltong flank meatloaf jowl, landjaeger porchetta corned beef cupim turducken.')

puts 'Seeding is done :)'