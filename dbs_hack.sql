CREATE TABLE cities (
   city_id SERIAL PRIMARY KEY,
   city VARCHAR(255),
   maximum_number_of_the_jewish_population INTEGER,
   period_of_maximum_jewish_population INTEGER,
   current_jewish_population INTEGER
);

CREATE TABLE famous_persons (
    person_id SERIAL PRIMARY KEY,
    city_id INTEGER REFERENCES cities(city_id),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    years_of_life VARCHAR(255),
    brief_biography TEXT
);

CREATE TABLE attractions (
    sight_id SERIAL PRIMARY KEY,
    city_id INTEGER REFERENCES cities(city_id),
    city VARCHAR(255),
    name_of_the_attraction VARCHAR(255),
    short_description TEXT,
    address VARCHAR(255)
);

INSERT INTO cities (city, maximum_number_of_the_jewish_population, period_of_maximum_jewish_population, current_jewish_population)
VALUES
('New York', 2035000, 1937, 1600000),
('Warsaw', 352660, 1931, 4000),
('Chicago', 342000, 1945, 291800),
('Moscow', 250200, 1939, 165000),
('London', 250000, 1938, 160000),
('Budapest', 246000, 1941, 80000),
('Kyiv', 224240, 1939, 111000),
('Saint-Petersburg', 201550, 1939, 40000),
('Vienna', 201520, 1925, 7000),
('Odessa', 201000, 1939, 45000),
('Berlin', 173000, 1925, 25000),
('Los Angeles', 519200, 2023, 519200),
('Paris', 277000, 2023, 277000),
('Amsterdam', 79500, 1941, 20000),
('Kharkiv', 130500, 1939, 45000),
('Minsk', 71000, 1939, 4800),
('Casablanca', 70000, 1942, 1000),
('Thessaloniki', 60000, 1935, 1200),
('Krakow', 56500, 1931, 1000),
('Prague', 56000, 1939, 3000),
('Istanbul', 55000, 1942, 24000),
('Buenos Aires', 300000, 1975, 244000),
('Toronto', 188700, 2023, 188700),
('Sao Paulo', 75000, 2023, 75000),
('Barcelona', 30000, 1390, 4000),
('Toledo', 32000, 1390, 3000),
('Marseille', 83000, 1939, 70000),
('Rio de Janeiro', 60000, 1975, 40000),
('Johannesburg', 60000, 1939, 50000),
('Antwerp', 35000, 1939, 20000);

INSERT INTO famous_persons (city_id, first_name, last_name, years_of_life, brief_biography)
VALUES
-- New York
(1, 'Barbra', 'Streisand', '1942-present', 'A legendary singer, actress, and director, one of the most successful artists in the history of the entertainment industry.'),
(1, 'Woody', 'Allen', '1935-present', 'Renowned film director, screenwriter, and actor born in Brooklyn. His works, such as "Annie Hall" and "Manhattan," are considered classics of cinema. Allen is also known for his unique sense of humor.'),
(1, 'Steven', 'Spielberg', '1946-present', 'Legendary director and producer, creator of many successful films, including Titanic and Avatar.'),
(1, 'Leonard', 'Bernstein', '1918–1990', 'An outstanding composer and conductor who became a legend of world music and was for a long time the director of the New York Philharmonic Orchestra.'),
(1, 'Mark', 'Zuckerberg', '1984-present', 'American media mogul, Internet entrepreneur, and philanthropist. Co-founder of Meta (formerly Facebook, Inc.) and Breakthrough Starshot. Became the worlds youngest billionaire in 2007 and ranked 5th in the list of the richest people in the world in October 2021 with a fortune of 122 billion US dollars.'),
-- Warsaw
(2, 'Isaac Bashevis', 'Singer', '1902–1991', 'Nobel Prize-winning author in literature, born in Poland. Became one of the greatest Yiddish and Jewish-themed writers. Moved to New York in 1935, and his works often delved into Jewish tradition and life.'),
(2, 'Maria', 'Sklodowska-Curie', '1867–1934', 'Famous physicist and chemist, the first female Nobel laureate and the only person to receive this award in two different scientific fields.'),
(2, 'Emanuel', 'Ringelblum', '1900–1944', 'Polish-Jewish historian and public figure, founder of the "Archive of War Experience," which documented life in the Warsaw ghetto during World War II.'),
-- Chicago
(3, 'Abraham', 'Zelmanov', '1910–2007', 'American composer and conductor who made significant contributions to the American music scene. Long-time conductor of the Chicago Symphony Orchestra.'),
(3, 'Saul', 'Bellow', '1915–2005', 'American writer and Nobel Prize winner in literature. Known for novels like "Adam Hodge" and considered one of the greatest American writers of the 20th century.'),
(3, 'Harold', 'Ramis', '1944–2014', 'Film director, screenwriter, and actor, best known for involvement in the creation of films such as Ghostbusters and Groundhog Day.'),
(3, 'Sam', 'Altman', '1985-present', 'American entrepreneur, investor, and programmer. President of Y Combinator since 2014, and CEO of OpenAI. Developer of the Worldcoin cryptocurrency.'),
-- Moscow
(4, 'Lev', 'Landau', '1908–1968', 'Theoretical physicist, winner of the Nobel Prize in Physics. His contribution to physics had a significant impact on the development of science.'),
(4, 'Eldar', 'Ryazanov', '1927–2015', 'Famous Russian director, screenwriter, and actor, creator of films like "Irony of Fate, or With a light steam!" and "Garage."'),
(4, 'Boris', 'Pasternak', '1890–1960', 'Russian poet and writer, born in Moscow, but spent time in Kiev. Winner of the Nobel Prize in Literature for the novel "Doctor Zhivago."'),
-- London
(5, 'Daniel', 'Radcliffe', '1989-present', 'English actor, best known for his role as Harry Potter in the film series. Born in Westminster, London.'),
(5, 'Amy', 'Winehouse', '1983–2011', 'Famous English singer and songwriter, winner of many musical awards. Her talent and bright personality left an indelible mark on world music history.'),
(5, 'Ephraim', 'Baril', '1915–2003', 'Well-known British chemist, winner of the Nobel Prize in Chemistry for research on the mechanisms of reactions in organic reactors.'),
(5, 'Sacha', 'Baron Cohen', '1971-present', 'British comedian, actor, screenwriter, and producer. Known as the creator of satirical characters such as Ali G, Borat Sagdiyev, Bruno Gehard, and Admiral General Aladin. Winner of the Golden Globe, BAFTA, MTV Movie & TV Awards, and others.'),
-- Budapest
(6, 'Theodor', 'Herzl', '1860–1904', 'One of the founders of Zionism and the leader of the movement to create a national state for Jews. Born in Budapest and is a key figure in the history of Zionism.'),
(6, 'Imre', 'Kertesz', '1929–2016', 'Hungarian writer and winner of the Nobel Prize in Literature for his novel "With Repentance." The Jewish National Museum in Budapest has dedicated a permanent exhibition to him.'),
(6, 'George', 'Soros', '1930-present', 'An American-Hungarian investor, entrepreneur, and philanthropist, known for his active involvement in financial markets and philanthropy. Born in Budapest.'),

-- Kyiv
(7, 'Golda', 'Meir', '1898–1978', 'Born in Kiev, she later became an Israeli politician and the first female Prime Minister of Israel.'),
(7, 'Sholom', 'Aleichem', '1859–1916', 'The famous Jewish writer was born in the village of Vorbovets (now part of Kiev). Author of many works, including stories about Tevye the sucker, on the basis of which the musical "Fiddler on the Roof" was created.'),
(7, 'Anatoli', 'Lwow', '1907–1979', 'Russian physicist and academician. Born in Kiev and made important contributions to the field of semiconductor physics.'),
(7, 'Mila', 'Kunis', '1983-present', 'A famous Hollywood actress. Born in Ukraine, and in 1991 she emigrated to Los Angeles with her parents. During her film career, the actress managed to receive many nominations and awards.'),

-- Saint-Petersburg
(8, 'Dmitri', 'Shostakovich', '1906-1975', 'The great Russian composer and pianist. Born and died in St. Petersburg (then Leningrad), he created a number of famous symphonies, operas, and other musical works.'),
(8, 'Joseph', 'Brodsky', '1940–1996', 'Russian-American poet and Nobel Prize winner in literature. Born and raised in St. Petersburg (then Leningrad). His poems are distinguished by a deep philosophical approach and colorful language.'),
(8, 'Oskar', 'Schlemmer', '1888–1943', 'German artist and choreographer, born in St. Petersburg. He was a key figure in art and design in the context of the Bauhaus school.'),

-- Vienna
(9, 'Sigmund', 'Freud', '1856–1939', 'The famous Austrian psychoanalyst, the founder of psychoanalysis. Freud moved to London in 1938, fleeing the Nazis, and spent the rest of his life here.'),
(9, 'Lise', 'Meitner', '1878–1968', 'Austrian-Swedish nuclear physicist, born in Vienna. She participated in the discovery of nuclear fission and contributed to the development of nuclear physics.'),
(9, 'Ludwig van', 'Beethoven', '1770–1827', 'A great and internationally renowned composer and pianist, he spent most of his career in Vienna.'),

-- Odessa
(10, 'Isaac', 'Babel', '1894–1940', 'The famous Soviet writer and journalist was born in Odessa. Author of works such as "Konarmiya" and "Odessa Stories."'),
(10, 'Zinaida', 'Gippius', '1869–1945', 'Russian poet, writer, and philosopher, born in Odessa. Considered a representative of symbolism and one of the leading figures of Russian literature of the early 20th century.'),
(10, 'Ilya', 'Ilf', '1897–1937', 'Together with Evgeny Petrov, he was a popular Soviet writer and humorist. They co-wrote such works as "The Twelve Chairs" and "The Golden Calf". Ilf was born in Odessa.'),

-- Berlin
(11, 'Erich', 'Fromm', '1900–1980', 'A well-known German-American psychoanalyst and sociologist.'),
(11, 'Albert', 'Einstein', '1879–1955', 'Theoretical physicist and winner of the Nobel Prize in Physics. His theory of relativity and contributions to physics had a huge impact on scientific thinking.'),
(11, 'Marlene', 'Dietrich', '1901–1992', 'German-American actress and singer. Born in Berlin, she was a star of German and Hollywood cinema. She has such famous films as Hells Angels to her credit, and her name is associated with the golden period of German cinema.'),

-- Los Angeles
(12, 'Bob', 'Dylan', '1941-present', 'The legendary American musician, poet and winner of the Nobel Prize in Literature. Born in Duluth, Minnesota, and later moved to Los Angeles, where he actively participated in the cultural revolution of the 1960s.'),
(12, 'Natalie', 'Portman', '1981-present', 'A famous actress whose filmography includes films such as "Leon," "Black Swan," and "Star Wars: Episode I - The Hidden Menace." She was born in Jerusalem, but her family moved to the United States, where she became a successful actress.'),
(12, 'Larry', 'King', '1933–2021', 'An American television presenter and journalist, known for his conversations with famous personalities on television.'),

-- Paris
(13, 'Emile', 'Zola', '1840–1902', 'A French writer and one of the leading representatives of the literary trend of naturalism.'),
(13, 'Marcel', 'Proust', '1871–1922', 'The French writer and author of In Search of Lost Time, one of the greatest literary works of the 20th century.'),
(13, 'Andre', 'Citroen', '1878–1935', 'French engineer and entrepreneur, founder of Citroen, a company known for its innovative cars. Born in Paris, he made significant contributions to the automotive industry and became one of the leading entrepreneurs of his time.'),

-- Amsterdam
(14, 'Baruch', 'Spinoza', '1632–1677', 'Dutch philosopher, one of the greatest thinkers of the Enlightenment. Born in Amsterdam, he became known for his work on philosophy, ethics, and religious issues, which made him a figure of national importance.'),
(14, 'Anne', 'Frank', '1929–1945', 'She was a Jewish girl known for her diary, in which she described her life during the Nazi occupation of the Netherlands during World War II. Her family was hiding in Amsterdam, but they were discovered, and Anne died in the Bergen-Belsen concentration camp.'),
(14, 'Eva', 'Emanuels', '1924–2017', 'Dutch journalist, writer, and activist, known for her contributions to the fight for human rights and the fight against racism. She was also a prominent figure in Dutch feminism.'),

-- Kharkiv
(15, 'Simon', 'Redlich', '1915–1999', 'Soviet and Ukrainian historian, professor, and public figure. He played an important role in the preservation and research of Jewish history and culture in Ukraine.'),
(15, 'Mendel', 'Khotimsky', '1859–1935', 'Ukrainian-Jewish poet and writer. His work had a significant impact on Jewish literature, including Yiddish.'),
(15, 'Valentin', 'Postnikov', '1929–2007', 'Soviet and Ukrainian physicist, academician, and famous scientist. He was born in Kharkiv and made important contributions to the field of theoretical physics.'),

-- Minsk
(16, 'Marc', 'Chagall', '1887–1985', 'A great surrealist artist, born in Belarus, but who worked and lived in Moscow and Paris. His works are known for their originality and bright colors.'),
(16, 'Lev', 'Kassil', '1905–1970', 'Soviet writer and screenwriter, known for his contribution to Soviet literature. Born in Minsk, he was the author of a number of novels, novellas, and films.'),
(16, 'Chaim', 'Weizmann', '1874–1952', 'Chemist, president of the World Zionist Organization and the first president of Israel. Born in Belarus, he played an important role in the creation of the state of Israel and its establishment on the world stage.'),

-- Casablanca
(17, 'Allan', 'Kan', '1916–1990', 'Moroccan philosopher and public figure. He contributed to the field of philosophy and dealt with the problems of education in Morocco.'),
(17, 'Raphael', 'El Yechieli', '1921–2008', 'A Moroccan politician and diplomat who has held various senior positions in the Government of Morocco.'),
(17, 'Esau', 'Jacobi', '1911–1993', 'A Moroccan lawyer and politician who also served in the Moroccan government. He held various important positions, including Minister of Justice.'),

-- Thessaloniki
(18, 'Raoul', 'Modiano', '1897–1943', 'Italian writer and poet of Jewish origin, born in Thessaloniki. He was an active participant in the anti-fascist movement in Italy and died in a concentration camp.'),
(18, 'Tarasios', 'Kyriakides', '1886–1944', 'A Greek Jew, an archaeologist, and researcher. He studied ancient Greek and Roman history and archaeology.'),
(18, 'David', 'Kazes', '1849–1924', 'A Greek journalist and writer who was also involved in politics. He played an important role in the Jewish community and was known for his activities in the newspaper field.'),

-- Krakow
(19, 'Tadeusz', 'Kantor', '1915–1990', 'Polish artist, theater director, and theorist. His theatrical productions were innovative and had a profound impact on the development of contemporary art.'),
(19, 'Krzysztof', 'Penderecki', '1933–2020', 'Polish composer and conductor, one of the greatest musical figures of his time.'),
(19, 'Eva', 'Geddes', '1933–present', 'Polish artist, born in Krakow. She is known for her abstract studies in the field of fine art.'),

-- Prague
(20, 'Franz', 'Kafka', '1883–1924', 'A recognized author of Czech-Jewish origin, whose works such as "The Trial" and "The Castle" have become classics of world literature.'),
(20, 'Felix Andrae', 'Schimmel', '1865–1930', 'Czech psychiatrist and neurologist, known for his research in the field of neurology. He was also an active figure in the Jewish society of Prague.'),
(20, 'Joseph', 'Popper', '1838–1921', 'Czech Jewish engineer and physicist, known for his work in the field of physics. He also actively supported the Jewish community in Prague.'),

-- Istanbul
(21, 'Solomon', 'Maimon', '1753–1800', 'A philosopher who was born in Lithuania but later moved to Istanbul. His work has influenced Jewish philosophy and culture.'),
(21, 'Joseph', 'Nasi', '1524–1579', 'Portuguese-Jewish diplomat and a major businessman who served in the Ottoman Empire. He was a close advisor to Sultan Suleiman the Magnificent.'),
(21, 'Sara', 'Fortis', '1735–1808', 'A Jewish businesswoman and diplomat in the Ottoman Empire. She was known for her entrepreneurial activities and influence on commercial and public spheres.'),

-- Buenos Aires
(22, 'Moises', 'Ville', '1869–1934', 'Jewish entrepreneur and founder of the settlement of Moises Ville in the province of Santa Fe. He contributed to the development of Jewish agriculture in Argentina.'),
(22, 'Daniel', 'Barenboim', '1942-present', 'An outstanding Argentine-Israeli conductor and pianist, one of the greatest musicians of our time. He was born in Buenos Aires and received worldwide recognition for his musical achievements.'),
(22, 'Moises', 'Ikher', '1885–1958', 'An Argentine writer and journalist. He was one of the founders and leaders of the magazine Mundo Israelita, which played an important role in spreading information about Jewish culture and events.'),

-- Toronto
(23, 'Leonard', 'Cohen', '1934–2016', 'Canadian singer, poet, and composer. His work has had a profound impact on world music and literature.'),
(23, 'Edith', 'Snider', '1927–2011', 'Canadian writer and journalist. She was also an active member of the Jewish community in Toronto and contributed to various fields of education and social work.'),
(23, 'Frank', 'Gehry', '1929-present', 'A well-known Canadian-American architect, born in Toronto. His works, such as the Guggenheim Museum in Bilbao and the Magnificent Los Angeles Museum of Art, are considered modern architectural masterpieces.'),
(23, 'Ilya', 'Sutskever', '1986-present', 'Canadian and American scientist in the field of computer science, artificial intelligence, and machine learning. Co-founder and chief researcher at OpenAI, the company that developed the legendary ChatGPT. He was a researcher on the Google Brain team for three years.'),

-- Sao Paulo
(24, 'Gerson', 'Kinsbrunner', '1924–2009', 'Brazilian engineer and entrepreneur. He was one of the founders of Grupo Votorantim, a large Brazilian company in the field of industry and finance.'),
(24, 'Beth', 'Carvalho', '1946–2019', 'Famous samba dancer, singer, and composer. She is considered one of the key figures in the world of samba and Brazilian music.'),
(24, 'Daniel', 'Azulay', '1947–2019', 'An artist, designer, and teacher. He was known for his work in the field of art for children and adults, as well as his participation in television programs.'),

-- Barcelona
(25, 'Abraham', 'Sender', '17th century', 'A famous Kabbalist and religious leader, active at the end of the 17th century.'),
(25, 'Angel Pulido', 'Fernandez', '1878–1956', 'A Spanish Jew, a follower of the Sephardic community. He was actively involved in the study of Sephardic culture and history and was also a defender of the rights and memory of the Sephardim in Spain.'),

-- Toledo
(26, 'Maimonides (Rambam)', '--', '1135–1204', 'Maimonides, also known as Rambam, was a prominent Jewish philosopher, physician, and rabbi. Born in Cordoba, he became one of the greatest scientists of his time.'),
(26, 'Benjamin', 'de Tudela', '12th century', 'A medieval Jewish traveler and chronicler. In his guidebook, he described many cities and communities in various regions, including Spain.'),

-- Marseille
(27, 'Simone', 'Veil', '1927–2017', 'French politician and feminist, the first female president of the European Parliament. She also held senior positions in the French Government, including the position of Minister of Health.'),
(27, 'Claude', 'Levi-Strauss', '1908–2009', 'A French anthropologist, one of the great minds of his time. His work on structural anthropology is considered important in the field of social sciences.'),
(27, 'Henri', 'Bergson', '1859–1941', 'French philosopher, winner of the Nobel Prize in Literature. His philosophical works, such as Creative Evolution, had a significant impact on philosophy.'),

-- Rio de Janeiro
(28, 'Fernando', 'Haddad', '1963–present', 'Brazilian politician and professor. He has held various positions in the Brazilian government, including Minister of Education, and was a presidential candidate in 2018.'),
(28, 'Ruth', 'Cardoso', '1930–2008', 'Sociologist, professor, and First Lady of Brazil, wife of President Fernando Henrique Cardoso. She actively participated in social and educational projects.'),
(28, 'Beto', 'Richa', '1965–present', 'A Brazilian politician, he was the governor of the state of Parana. His family has Lebanese roots, and he is a representative of the Jewish community in Brazil.'),

-- Johannesburg
(29, 'Gill', 'Marcus', '1949–present', 'An economist and a politician. She has held various important positions in South Africa, including head of the South African Reserve Bank.'),
(29, 'Mark', 'Shuttleworth', '1973–present', 'An entrepreneur known as the first African space tourist and the founder of Canonical, the company behind the Ubuntu operating system.'),
(29, 'Helen', 'Zille', '1951–present', 'A South African politician, primarily known as the leader of the Opposition Democratic Alliance. She was also the Prime Minister of the Western Cape.'),

-- Antwerp
(30, 'Arnold', 'Geulincx', '1624–1669', 'Philosopher and linguist, born in Antwerp. He lived in South Africa, where he was engaged in teaching.'),
(30, 'Adolphe', 'Sax', '1814–1894', 'Belgian musical instrument maker and inventor, best known as the creator of the saxophone.'),
(30, 'Rene', 'Magritte', '1898–1967', 'The famous Belgian surrealist artist. His works were often characterized by unusual and dramatic images.'),
(30, 'Marissa', 'Mayer', '1975–present', 'An American business executive born in Belgium. She was the CEO of Yahoo! and had a significant contribution to the technology industry.');
;


INSERT INTO attractions (city_id, name_of_the_attraction, short_description, address)
VALUES 
  (1, 'National Museum of Jewish Heritage', 'This museum features an extensive collection of exhibitions dedicated to the history, art, and culture of the Jewish people.', '36 Battery Place'),
  (1, 'Eldridge Street Synagogue', 'This is one of the oldest synagogues in the United States, built in 1927.', '8 5th Avenue'),
  (1, 'The Jewish Museum', 'The museum is dedicated to the history of the Jewish people with a special focus on the Holocaust.', '1109 5th Avenue'),
  (1, 'Lower East Side Quarter', 'This historical district was the center of Jewish immigration in the early 20th century. Here, you will find historical synagogues, restaurants, and other interesting places.', 'Lower East Side'),
  (2, 'The Bunker on 18 Mila Street Bunker', 'More than 100 people died on May 8, when the Nazis surrounded the bunker. Nothing remains from the bunker. It is marked by a commemorative stone engraved in Polish, Yiddish, and Hebrew.', '18 Mila Street'),
  (2, 'The Museum of the History of Polish Jews', 'In April 2013, the Museum of the History of Polish Jewry in Warsaw - built on the hallowed ground of the Warsaw Ghetto - opened to visitors interested in learning more about the Jewish community of the city.', 'Mordechaja Anielewicza 6'),
  (2, 'Memorial of the Heroes of the Warsaw Ghetto', 'Designed by sculptor Nathan Rappaport. It commemorates all who lost their lives in the Ghetto Uprising led by Mordechai Anielewicz.', 'Ludwika Zamenhofa, 00-153'),
  (2, 'Nozyk Synagogue', 'The synagogue was founded in 1902 by Zalman Nozyk. The synagogue was known for its singing and religious music and attracts visitors from around the world. The Nozyk is Warsaw’s only surviving synagogue from before the war.', 'Twarda 6'),
  (3, 'Anshe Emet Synagogue', 'One of the oldest synagogues in Chicago, founded in 1873.', '3751 N Broadway St'),
  (3, 'Jewish Museum Chicago', 'This museum offers an extensive collection of exhibits, telling the story of the Jewish people in Chicago and around the world.', '610 S Michigan Ave'),
  (3, 'Hyde Park Jewish Community', 'This area is known for its cultural heritage and Jewish community.', 'Hyde Park'),
  (4, 'Moscow Choral Synagogue', 'The Choral Synagogue is one of the oldest synagogues in Moscow and serves as a center for Jewish religious activities.', 'Bolshaya Bronnaya Street 6'),
  (4, 'Jewish Museum and Tolerance Center', 'The museum is dedicated to the history of the Jewish people, their culture, and their contribution to societal development.', 'Obraztsovy Pereulok 11'),
  (4, 'Holocaust Victims Memorial on Bessarabskaya Square', 'This memorial is erected in memory of Jews who perished during the Holocaust.', 'Bessarabskaya Square'),
  (5, 'British Library "Bloomfield"', 'This library is one of the most important Jewish cultural centers in London.', '29-33 Whitechapel Rd'),
  (5, 'The Jewish Museum London', 'The museum offers extensive collections and exhibitions telling the story of Jews in Britain.', '129-131 Albert St'),
  (5, 'Golders Green Synagogue', 'Built in the early 20th century, this synagogue is a beautiful example of architecture.', '26 Dunstan Rd'),
  (6, 'Great Synagogue in Budapest', 'It is one of the largest synagogues in the world and serves as a significant symbol of Jewish heritage in Budapest.', 'Dohany Street 2'),
  (6, 'Jewish Museum and Archives', 'The museum offers an extensive collection of exhibits reflecting the history of Jews in Hungary.', 'Dohany Street 2'),
  (6, 'Kazinczy Street District', 'This charming district in the city center is known for its Jewish architecture, cozy cafes, and restaurants.', 'Kazinczy Street'),
  (7, 'Brodsky Synagogue (Arena Synagogue)', 'This synagogue, also known as "Arena," is one of the largest in Ukraine and serves as a significant center for Jewish religious activities.', '13 Degtyarevska Street'),
  (7, 'Menorah at the Golden Gates', 'Installed in 2004, this menorah has become a symbol of the Jewish revival in Ukraine.', 'Golden Gates'),
  (7, 'Babi Yar Holocaust Memorial', 'Babi Yar is a tragic site where a mass killing by the Nazis occurred in 1941, and there is now a memorial to the Jewish victims.', 'Babi Yar'),
  (8, 'Main Synagogue of St. Petersburg', 'This is the largest synagogue in the city, built in the late 19th century, serving as a spiritual and cultural center for the Jewish community.', '18 Karpovka Street'),
  (8, 'Jewish Museum and Tolerance Center', 'The museum offers exhibitions and events telling the history and culture of Jews in St. Petersburg and Russia.', '18 Perinnaya Line Street'),
  (8, 'Holocaust Memorial "Hill of Memory"', 'The memorial is dedicated to the victims of the Holocaust, surrounded by stone slabs bearing the names of those who perished.', 'Tankistа Khrustitskogo Street'),
  (9, 'Leopoldstadt Synagogue', 'Built in the early 19th century, this is one of the oldest synagogues in Vienna, symbolizing the Jewish revival in the city.', 'Tempelgasse 3'),
  (9, 'Jewish Museum Vienna', 'The museum presents the history and culture of the Jewish population in Vienna, including exhibits on the Holocaust and Jewish art.', 'Dorotheergasse 11'),
  (9, 'Herzl Bust and Mozart Monument', 'This monument commemorates the renowned composer Mozart and Theodor Herzl, the founder of modern Zionism.', 'Judenplatz'),
  (10, 'Main Synagogue of Odessa', 'This is one of the largest synagogues in the city, built in the Moorish Renaissance style in the late 19th century.', '38 Zhukovskoho Street'),
  (10, 'Grazer Monument (Grazerovskiy Park)', 'The park is dedicated to the memory of Isaac Grazer, a prominent public figure and philanthropist whose charitable actions supported the Jewish community.', 'Grazerovskaya Street'),
  (10, 'Museum of Jewish Culture in Odessa', 'The museum presents the history and culture of Jews in Odessa through exhibits and various events.', '24 Synopskaya Street'),
  (11, 'Jewish Museum Berlin', 'This impressive museum presents the history of Jews in Germany from early times to the present day.', 'Lindenstrasse 9-14'),
  (11, 'Oranienburger Strasse Synagogue', 'Built in the Moorish Renaissance style in the mid-19th century, this synagogue is one of the few that survived the Holocaust.', 'Oranienburger Strasse 28-30'),
  (11, 'Mercy House', 'Built in 1736, this house is one of the oldest residential buildings in Berlin that belonged to the Jewish community.', 'Friedrichstrasse 185'),
  (11, 'Holocaust Memorial', 'This impressive memorial, consisting of more than 2,700 concrete slabs, is dedicated to the memory of Holocaust victims.', 'Cora-Berliner-Strasse 1'),
  (12, 'Simon Wiesenthal Center', 'This center is dedicated to the memory of Holocaust victims and the work of Simon Wiesenthal in the field of human rights.', '9786 W. Pico Blvd'),
  (12, 'Skirball Cultural Center (Jewish Museum in West Hollywood)', 'This cultural center provides unique exhibitions and programs covering Jewish culture and arts.', '2701 N Sepulveda Blvd'),
  (12, 'Wilshire Boulevard Temple', 'This historic synagogue serves as a spiritual center and features impressive architecture.', '3663 Wilshire Blvd'),
  (12, 'Jewish Quarter in Fairfax', 'This area is home to Jewish shops, restaurants, and public spaces, representing the richness of Jewish culture in the city.', 'Jewish Quarter'),
  (13, 'Agudath Israel Synagogue', 'This synagogue, built in the Moorish Revival style, is one of the largest in Paris.', '10 Rue Pavee'),
  (13, 'Museum of Jewish Art and History', 'The museum offers extensive collections related to the art and history of Jews in France.', 'Hotel de Saint-Aignan, 71 Rue du Temple'),
  (13, 'Jewish Cultural Center', 'The center provides diverse cultural and educational events related to Jewish heritage.', '119 Rue La Fayette'),
  (14, 'Anne Frank House', 'The house where Anne Frank hid during World War II is now a museum dedicated to her life and the Holocaust.', 'Prinsengracht 263-267'),
  (14, 'Portuguese Synagogue', 'Built in the 17th century, this synagogue is a beautiful example of Sephardic Jewish architecture.', 'Mr. Visserplein 3'),
  (14, 'Holocaust Memorial', 'The memorial, in the form of a broken mirror in Wertheimpark, is erected in memory of the victims of the Holocaust.', 'Wertheimpark'),
  (15, 'Great Synagogue', 'The Great Synagogue of Kharkiv was built in the early 20th century and is one of the largest in Ukraine.', '32 Pushkinska Street'),
  (15, 'Museum of the History and Culture of Kharkiv Jews', 'The museum presents the history and culture of Jews in Kharkiv through exhibits and collections.', '13 Chervonoshkilna Street'),
  (15, 'Brodsky Arts and Culture House', 'Named after the famous Jewish poet and Nobel laureate Joseph Brodsky, this center supports art and culture.', '35 Dzerzhynska Street'),
  (16, 'Synagogue in Uruchye', 'This is a new building constructed in 2009, serving as the main Jewish prayer center in Minsk.', '22 Kropotkin Street'),
  (16, 'Minsk Jewish Gymnasium', 'The historical gymnasium building where many prominent individuals of Jewish origin were educated.', '75 Myasnikov Street'),
  (16, 'Holocaust Memorial "Yama" (Minsk Ghetto "Yama" Memorial)', 'Located in the city center, dedicated to the memory of Jews killed by the Nazis during World War II.', 'Alley of the Righteous Among the Nations'),
  (17, 'Ettedgui Synagogue (Jewish Synagogue of Casablanca)', 'This is one of the oldest synagogues in Casablanca, richly adorned with historical elements.', 'J92J+Q5J, Rue Al-Aidi Ali Al-Maaroufi'),
  (17, 'Jewish Museum of Casablanca', 'A museum dedicated to the history and culture of Jews in Morocco, providing information about their lives.', '81 Rue du chasseur Jules Gros'),
  (17, 'Jewish Quarter', 'This area preserves many historical buildings and examples of Jewish architecture.', 'H9WF+865, Rue Jaber Ben Hayane'),
  (18, 'Bet Cholim Synagogue', 'This is one of the oldest synagogues in Thessaloniki, combining elements of various architectural styles.', 'Salaminos St, 9'),
  (18, 'Jewish Museum of Thessaloniki', 'The museum offers an extensive collection and exhibits that tell the story of the life and history of Jews in Thessaloniki.', '13 Agiou Mina'),
  (18, 'Jewish Quarter Market Gallery (Modiano Market)', 'This is an old market, partly founded and owned by Jewish entrepreneurs.', 'Ermou 24 and Vasileos Irakleiou 33'),
  (19, 'Kazimierz district', 'This is a historic district in Krakow that was a long-time Jewish quarter. It houses numerous synagogues, shops, and restaurants.', 'Kazimierz district'),
  (19, 'Remuh Synagogue', 'One of the oldest synagogues in Kazimierz, featuring an ancient Jewish cemetery in its courtyard.', 'Szeroka 40'),
  (19, 'Galicia Jewish Museum', 'The museum focuses on the history and culture of Jews in Galicia, including the Holocaust period.', 'Dajwor 18'),
  (20, 'Prague Jewish Town', 'This is the historic Jewish quarter where numerous monuments, including synagogues, cemeteries, and museums, are located.', 'Maiselova 18'),
  (20, 'Spanish Synagogue', 'Renowned for its luxurious architecture and interior, this synagogue is part of the Prague Jewish Town.', 'Vezenska 1'),
  (20, 'Jewish Museum in Prague', 'Comprising numerous exhibitions, documents, and artifacts related to the history of the Jewish population in Prague.', 'Maiselova 15'),
  (21, 'Galata', 'This is a historic district where several Jewish synagogues and a Jewish school are located.', 'Galata district'),
  (21, 'Neve Shalom Synagogue', 'One of the most well-known synagogues in Istanbul, serving as a religious and cultural center.', 'Bereketzade Mah. Büyük Hendek Cad. 42'),
  (21, 'Jewish Cemetery in Karakoy', 'One of the oldest Jewish cemeteries in Istanbul with a rich history.', 'Kemeraltı Caddesi'),
  (22, 'La Israelita Synagogue', 'One of the oldest synagogues in the city, combining architectural beauty and religious significance.', 'Libertad 769'),
  (22, 'Museum of the History of the Jews in Argentina', 'The museum dedicated to the history and culture of Jews in Argentina provides a fascinating look at their contribution to the country.', 'Venezuela 2672'),
  (22, 'Holocaust Memorial', 'Dedicated to the memory of Holocaust victims, this monument stands as an important symbol of solidarity.', 'Avenida Corrientes y Calle Montevideo'),
  (23, 'Jewish Quarter (Bathurst Street)', 'This area, also known as Bathurst Street, is the historic center of the Jewish community and includes synagogues, restaurants, and shops.', 'Bathurst Street'),
  (23, 'Spadina Synagogue', 'One of the oldest synagogues in the city, adorned with rich historical elements.', '467-469 Spadina Ave'),
  (23, 'Simon Wiesenthal Centre for Holocaust Studies', 'This center provides educational resources and programs related to the history of the Holocaust.', '4600 Bathurst St, North York'),
  (24, 'Kaete Synagogue', 'One of the oldest synagogues in the city, serving as a center for religious and community events.', 'R. Mordechay Anielewicz, 87 - Vila Mariana'),
  (24, 'Vila Mariana Jewish Cemetery', 'A large Jewish cemetery where many members of the Jewish community are laid to rest.', 'R. Bagé, 114 - Vila Mariana'),
  (24, 'Cultural Center of the Jewish Congregation of Sao Paulo', 'This center offers cultural and educational events related to Jewish heritage.', 'R. Estela, 515 - Vila Mariana'),
  (25, 'Gothic Quarter', 'In medieval times, this area was one with a high Jewish population. Although it is now a tourist zone, some historical elements still remain.', 'Carrer de Sant Domènec del Call'),
  (25, 'Centre for Jewish Culture', 'Located in the heart of the former Jewish quarter, this cultural center organizes exhibitions, lectures, and events dedicated to Jewish history.', 'Carrer de Sant Domenec del Call, 9'),
  (25, 'Major Synagogue', 'This medieval synagogue is one of the few preserved in Catalonia and is an important architectural monument.', 'Carrer de Marlet, 5'),
   (26, 'Santa Maria la Blanca Synagogue', 'One of the most famous synagogues in Toledo, built in the Mudéjar style in the 11th century and later converted into a Christian church.', 'C. de los Reyes Catolicos, 4'),
  (26, 'Sephardic Museum', 'The museum provides an extensive collection dedicated to the history of the Jewish population in Toledo and Spain.', 'Calle Samuel Levi, s/n'),
  (26, 'El Transito Complex', 'This complex includes the Transito Synagogue and other buildings, offering a unique insight into Jewish culture.', 'Calle Samuel Levi, s/n'),
  (27, 'Synagogue Echkol', 'This synagogue, opened in 1955, serves as one of the cultural and religious centers for the Jewish community in Marseille.', '1 Rue Saint-Dominique'),
  (27, 'Museum of Jewish History and Art', 'The museum is dedicated to the history and art of Jews in the region and offers interesting exhibitions.', '32 Rue de la Republique'),
  (27, 'Jewish Cemetery of Marseille', 'This cemetery, where generations of Marseilles Jews are buried, provides insight into their history and culture.', '77 Trav. du Commandeur'),
  (28, 'Kehilat Israel Synagogue', 'One of the oldest synagogues in the city, built in the early 20th century, serving as a center for religious and cultural events.', 'Rua Barata Ribeiro, 489 - Copacabana'),
  (28, 'Jewish Cemetery of Rio de Janeiro', 'The cemetery where members of the Jewish community, including notable figures, are buried.', 'Rua Barão de São Francisco, 326 - Vila Isabel'),
  (28, 'Museum of Jewish History and Culture', 'This museum provides extensive information about the life and history of Jews in Rio de Janeiro.', 'R. Mexico, 90 - Sala 110 - Centro'),
  (29, 'Gardens Synagogue', 'This synagogue is one of the oldest in Johannesburg and serves as a center for religious and community events.', '2 Sherborne Rd, Parktown'),
  (29, 'Jewish Museum of South Africa', 'Although the museum is located in Cape Town, it provides extensive information about the history and culture of the Jewish population in South Africa, including Johannesburg.', '88 Hatfield St, Gardens, Cape Town'),
  (29, 'Chabad House', 'The Chabad Center in Johannesburg provides religious, educational, and community services for the Jewish community.', '52 King David St, Victory Park'),
  (30, 'Synagogue Machsike Hadass', 'The art nouveau influenced Great Synagogue in Antwerp — Belgium’s largest synagogue. It is a Synagogue and therefore a meeting place that is alive and vibrant thanks to the Antwerp Jewish community', 'Bouwmeestersstraat 52'),
  (30, 'Jewish Community of Antwerp - Shomre Hadas', 'The Israelite congregation takes care of all religious needs in order to give the Jewish citizens of Antwerp the opportunity to live a full Jewish existence in the city.', 'Terliststraat 35'),
  (30, 'Diamond District', 'Known as the "Diamond District," this area is the largest Jewish quarter in Antwerp. It houses numerous jewelry stores and diamond exchanges.', 'Hoveniersstraat 53')
  ;