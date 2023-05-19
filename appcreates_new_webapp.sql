-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 06:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appcreates_new_webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_platform` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `source_id`, `author_id`, `country`, `title`, `description`, `content`, `url`, `url_image`, `category`, `published_at`, `source_platform`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'us', 'Stock Market Today: Dow Rises Nearly 200 Points as Debt Ceiling Deal in Focus - The Wall Street Journal', 'Live coverage of stocks and financial news, including the S&P 500, Dow and Nasdaq Composite.', 'Meanwhile, regional-bank shares are jumping after Western Alliancea lender investors have worried aboutgave a positive update on deposit growth.Stocks advanced. The Dow industrials, the S&amp;P 500 a… [+1263 chars]', 'https://www.wsj.com/livecoverage/stock-market-today-dow-jones-05-17-2023', 'https://images.wsj.net/im-589547/social', 'business', '2023-05-17T16:20:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(2, 2, 2, 'us', 'Vauxhall-maker warns Brexit may force it to close UK factory - BBC', 'Vauxhall-maker Stellantis is calling on the government to renegotiate some Brexit rules or risk losing electric', 'One of the world\'s biggest carmakers has warned it may have to close UK factories if the government does not renegotiate the Brexit deal.\r\nStellantis, which owns Vauxhall, Peugeot, Citroen and Fiat, … [+5505 chars]', 'https://www.bbc.com/news/business-65612295', 'https://ichef.bbci.co.uk/news/1024/branded_news/DD95/production/_129752765_electricvan.png', 'business', '2023-05-17T16:04:11Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(3, 3, 3, 'us', 'Stocks rise as earnings, debt-ceiling talks stay in focus: Stock market news today - Yahoo Finance', 'Stocks opened in recovery mode Wednesday following Tuesday’s selloff as investors remain hopeful that the debt-ceiling talks will produce a breakthrough.', 'Stocks gained during Wednesday\'s midday trading session following Tuesdays selloff as investors remain hopeful that the debt-ceiling talks will produce a breakthrough.\r\nThe S&amp;P 500 (^GSPC) advanc… [+4082 chars]', 'https://finance.yahoo.com/news/stock-market-news-today-live-updates-may-17-115307596.html', 'https://s.yimg.com/ny/api/res/1.2/zv5Cy6umnRdBzG34UFbQGg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2023-05/87308030-f4a4-11ed-b7fb-f2f5f3845810', 'business', '2023-05-17T16:02:18Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(4, 4, 4, 'us', 'Warner Bros. Discovery 2023 Upfront Takeaways: Zaslav Sits This One Out, Talent Shifts from Stage to Screen and Max Is the Real Star - Variety', 'Warner Bros. Discovery kicked off its 2023 upfront presentation in a no-frills way, with an overall brand sizzle and ad chief Jon Steinlauf giving a few remarks on stage at the Theater at Madison S…', 'Warner Bros. Discovery kicked off its 2023 upfront presentation in a no-frills way, with an overall brand sizzle and ad chief Jon Steinlauf giving a few remarks on stage at the Theater at Madison Squ… [+5144 chars]', 'https://variety.com/2023/tv/news/warner-bros-discovery-2023-upfront-takeaways-1235616016/', 'https://variety.com/wp-content/uploads/2023/05/Warner-Bros-Discovery-Upfront.jpg?w=1000&h=563&crop=1', 'business', '2023-05-17T15:45:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(5, 5, 5, 'us', 'IRS to offer free online direct filing system for some taxpayers in 2024 - CNBC', 'The IRS is testing a free online direct filing system for some taxpayers in 2024. Here\'s what to know about the program.', 'The IRS is testing a system that would allow taxpayers to file federal tax returns for free online directly with the agency, with a pilot program launching for some filers next year.\r\nKnown as Direct… [+3201 chars]', 'https://www.cnbc.com/2023/05/17/irs-to-offer-free-online-direct-filing-system-for-some-taxpayers.html', 'https://image.cnbcfm.com/api/v1/image/104489695-taxes.jpg?v=1684337764&w=1920&h=1080', 'business', '2023-05-17T15:36:04Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(6, 6, 6, 'us', 'Joe Rogan mocks \'woke\' Miller Lite campaign: \'How many women are involved in making beer\' - New York Post ', '“I’d like to see a pie chart of how many women are actually involved in making beer or drinking beer,” Rogan said on his Spotify podcast on Tuesday.', 'Joe Rogan mocked Miller Lite after the brand’s months-old ad — in which “Broad City” actress Ilana Glazer touts women beer-makers — resurfaced on social media this week.\r\n“Id like to see a pie chart … [+2977 chars]', 'https://nypost.com/2023/05/17/joe-rogan-mocks-woke-miller-lite-ad-following-bud-light-fiasco/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/newspress-collage-27083206-1684334511895.jpg?quality=75&strip=all&1684320224&w=1024', 'business', '2023-05-17T15:25:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(7, 7, 6, 'us', 'VA renews Oracle Cerner EHR modernization contract, with renegotiated terms - Healthcare IT News', 'The modified deal now includes much bigger monetary credits to VA if the company doesn’t meet key performance accountability metrics, and resets the partnership to five one-year terms.', 'The U.S. Department of Veterans Affairs has arrived at a new electronic health record deal with Oracle, following five years marked by rollout challenges and performance problems that have impacted v… [+3361 chars]', 'https://www.healthcareitnews.com/news/va-renews-oracle-cerner-ehr-modernization-contract-renegotiated-terms', 'https://www.healthcareitnews.com/sites/hitn/files/VA-HITN_1_0.png', 'business', '2023-05-17T15:21:11Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(8, 8, 7, 'us', 'Target CEO warns rising crime, retail theft will hit profits - Fox Business', 'Target CEO Brian Cornell warned Wednesday that its stores continued to get hit by retail crime, which the company expects to result in losses of more than $500 million this year.', 'Target expects to take a more than $500 million hit in profits this year due to brazen retail theft that\'s worsening at its stores, CEO Brian Cornell warned Wednesday. \r\n<table><tr><th>Ticker</th><th… [+3202 chars]', 'https://www.foxbusiness.com/lifestyle/target-ceo-warns-rising-crime-retail-theft-will-hit-profits', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2021/10/0/0/Target-shopping-cart.jpg?ve=1&tl=1', 'business', '2023-05-17T15:02:17Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(9, 8, 8, 'us', 'Ford recalls 310,000 trucks over air bag issue - Fox Business', 'Ford is recalling more than 310,000 trucks in the U.S. because accumulating dust could prevent the driver’s front air bag from inflating during a crash.', 'Ford recalled more than 310,000 trucks during May of 2022 in the U.S. because of an issue that could prevent the driver’s front airbag from inflating during a crash.\r\nA build-up of dust inside a cabl… [+1162 chars]', 'https://www.foxbusiness.com/markets/ford-recalls-310000-trucks-air-bag-issue', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2023/01/0/0/Ford-2.jpg?ve=1&tl=1', 'business', '2023-05-17T14:50:47Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(10, 9, 8, 'us', 'Steve Cohen Says He\'s \'Pretty Bullish\' on Markets Thanks to AI - Bloomberg', NULL, 'To continue, please click the box below to let us know you\'re not a robot.', 'https://www.bloomberg.com/news/articles/2023-05-17/steve-cohen-says-he-s-pretty-bullish-on-markets-thanks-to-ai', NULL, 'business', '2023-05-17T14:37:46Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(11, 9, 9, 'us', 'India Launches $2 Billion Drive to Woo Laptop Makers Like Apple - Yahoo Finance', '(Bloomberg) -- India is unveiling a 170 billion-rupee ($2.1 billion) financial incentive plan to draw makers of laptops, tablets and other hardware to the...', '(Bloomberg) -- India is unveiling a 170 billion-rupee ($2.1 billion) financial incentive plan to draw makers of laptops, tablets and other hardware to the South Asian nation as companies look to dive… [+1705 chars]', 'https://finance.yahoo.com/news/india-launches-2-billion-drive-100523416.html', 'https://s.yimg.com/ny/api/res/1.2/32IK2VXWZwm4Ew1AQAMWGw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/bloomberg_technology_68/5ee63cb1bbd7bd2f6d1a016e9e6c1d66', 'business', '2023-05-17T14:10:02Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(12, 10, 10, 'us', 'Why Oscar Mayer renamed the iconic hot dog mobile to \'Frankmobile\' - ABC News', 'The 27-foot-long vehicle is also sporting a few new fun features.', 'Oscar Mayer is rolling into a new era, changing the name of its iconic Wienermobile to the \"Frankmobile.\"\r\nThe name change is the 27-foot-long hot dog vehicle\'s first in nearly 100 years. Kraft Heinz… [+981 chars]', 'https://goodmorningamerica.com/food/story/oscar-mayer-renames-iconic-hot-dog-wheels-frankmobile-99388901', 'https://s.abcnews.com/images/GMA/Frankmobile_1684328977775_hpMain_16x9_992.jpg', 'business', '2023-05-17T14:09:25Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(13, 11, 10, 'us', 'ChatGPT: how to get the most out of your prompt? - Hospitality Net', 'With the emergence of AI-powered chatbots such as ChatGPT, hotels and travel companies can offer personalized and efficient customer service. Furthermore, generative AI provides new avenues for creating unique experiences and engaging with guests, while prese…', 'With the emergence of AI-powered chatbots such as ChatGPT, hotels and travel companies can offer personalized and efficient customer service. Furthermore, generative AI provides new avenues for creat… [+19165 chars]', 'https://www.hospitalitynet.org/viewpoint/125000191.html', 'https://www.hospitalitynet.org/picture/social_153155592.jpg?t=1683123569', 'business', '2023-05-17T13:52:30Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(14, 12, 10, 'us', 'Google will delete your account if you haven\'t logged in for 2 years - WGN News', NULL, 'Your browser isnt supported anymore. Update it to get the best YouTube experience and our latest features. Learn more\r\nRemind me later', 'https://www.youtube.com/watch?v=hZLw7m5MrRs', NULL, 'business', '2023-05-17T13:49:40Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(15, 13, 11, 'us', 'Bud Light tries to appease fragile bigots with camo redesign amid anti-trans row - PinkNews', 'Bud Light will reportedly change its packaging following anti-trans backlash to it\'s collaboration with trans influencer Dylan Mulvaney.', 'Bud Lights parent company is said to be temporarily redesigning some of its packaging in camouflage print in response to the backlash following its collaboration with trans influencer Dylan Mulvaney.… [+1929 chars]', 'https://www.thepinknews.com/2023/05/17/bud-light-packaging-dylan-mulvaney-backlash/', 'https://www.thepinknews.com/wp-content/uploads/2023/04/Dylan_Mulvaney_Bud_Light.jpg', 'business', '2023-05-17T13:15:33Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(16, 13, 12, 'us', 'Tether buys $222 million worth of bitcoin to back its USDT stablecoin - CNBC', 'Tether said it would invest 15% of its net profit into bitcoin to \"diversify\" the reserves that back its USDT token.', 'Cryptocurrency giant Tether on Wednesday said that it\'s going to purchase hundreds of millions of dollars\' worth of bitcoin to back the world\'s largest stablecoin.\r\nThe company said it would invest 1… [+2805 chars]', 'https://www.cnbc.com/2023/05/17/tether-buys-222-million-worth-of-bitcoin-to-back-its-usdt-stablecoin.html', 'https://image.cnbcfm.com/api/v1/image/107146338-1667574008977-gettyimages-1240533023-AFP_329P2QH.jpeg?v=1684328412&w=1920&h=1080', 'business', '2023-05-17T13:00:12Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(17, 13, 13, 'us', 'US Housing Starts Rise in Sign Home Construction Is Stabilizing - Bloomberg', 'US housing starts increased in April, adding to evidence that residential real estate is gradually recovering after a yearlong slump.', 'US housing starts increased in April, adding to evidence that residential real estate is gradually recovering after a yearlong slump.\r\nBeginning home construction rose 2.2% to a 1.4 million annualize… [+237 chars]', 'https://www.bloomberg.com/news/articles/2023-05-17/us-housing-starts-rise-in-sign-home-construction-is-stabilizing', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iITis_NM9b6E/v1/1200x796.jpg', 'business', '2023-05-17T12:59:23Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(18, 14, 14, 'us', 'Tesla stock is a ‘strong buy’ as recent pullback creates opportunity for investors, CFRA says - MarketWatch', 'Shares of Tesla Inc. rose 1.3% in premarket trading Wednesday, after Chief Executive Officer Elon Musk said overnight that the electric vehicle maker would...', 'Shares of Tesla Inc. \r\n TSLA,\r\n +3.91%\r\nrose 1.3% in premarket trading Wednesday, after Chief Executive Officer Elon Musk said overnight that the electric vehicle maker would try advertising and teas… [+1127 chars]', 'https://www.marketwatch.com/story/tesla-stock-is-a-strong-buy-as-recent-pullback-creates-opportunity-for-investors-cfra-says-3d713420', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', 'business', '2023-05-17T12:59:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(19, 14, 15, 'us', 'Microsoft CEO Nadella talks concerns around A.I. and its impact on jobs, education - CNBC', 'Microsoft CEO Satya Nadella discussed AI in a wide-ranging interview with CNBC\'s Andrew Ross Sorkin Tuesday.', 'Microsoft CEO Satya Nadella said during a taped interview with CNBC\'s Andrew Ross Sorkin that what scares him most about artificial intelligence is \"the entire society\" has to come together to \"maxim… [+2628 chars]', 'https://www.cnbc.com/2023/05/17/microsoft-ceo-talks-ai-concerns-and-its-impact-on-jobs-education-.html', 'https://image.cnbcfm.com/api/v1/image/106982456-1638304310225-gettyimages-631879152-DAVOS_WEF_2017.jpeg?v=1684328249&w=1920&h=1080', 'business', '2023-05-17T12:57:29Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(20, 15, 15, 'us', 'Tesla restarts India market talks with new factory proposal - source - Reuters', 'Tesla Inc <a href=\"https://www.reuters.com/companies/TSLA.O\" target=\"_blank\">(TSLA.O)</a> has proposed setting up a factory in India to build electric cars for domestic sale and export, the carmaker told government officials on Wednesday, according to a sourc…', 'BENGALURU, May 17 (Reuters) - Tesla Inc (TSLA.O) has proposed setting up a factory in India to build electric cars for domestic sale and export, the carmaker told government officials on Wednesday, a… [+1660 chars]', 'https://www.reuters.com/business/autos-transportation/tesla-revisiting-plans-manufacture-india-cnbc-tv18-2023-05-17/', 'https://www.reuters.com/resizer/pPh0SL9ouUb8xt6spG0flc0qTZw=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/434GUWXOQRMCPO6EXUNBKA46L4.jpg', 'business', '2023-05-17T12:54:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(21, 16, 16, 'us', 'A new CEO won\'t fix Twitter\'s biggest problem - CNN', 'During his six months as Twitter’s CEO and owner, Elon Musk decimated its ad business, alienated some news publications and VIP users, and plunged the platform into a constant state of chaos. Now, a new chief executive will be tasked with trying to turn thing…', 'During his six months as Twitters CEO and owner, Elon Musk decimated its ad business, alienated some news publications and VIP users, and plunged the platform into a constant state of chaos. \r\nNow, a… [+6125 chars]', 'https://www.cnn.com/2023/05/17/tech/twitter-ceo-linda-yaccarino-elon-musk/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/230512094619-04-linda-yaccarino-lead-image.jpg?c=16x9&q=w_800,c_fill', 'business', '2023-05-17T12:37:00Z', 'newsapi.org', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(22, 17, 17, 'us', 'Oil Prices Rise Amid Expectations Of A Tightening Market - OilPrice.com', 'Oil prices edged higher early on Wednesday morning on expectations that oil markets will tighten later this year.', 'Saudi Aramco is looking into…\r\nRussias crude oil exports by…\r\nThe total number of total…\r\nBy Tsvetana Paraskova - May 17, 2023, 7:01 AM CDTOil prices reversed losses and edged higher early on Wednesd… [+2133 chars]', 'https://oilprice.com/Energy/Energy-General/Oil-Prices-Rise-Amid-Expectations-Of-A-Tightening-Market.html', 'https://d32r1sh890xpii.cloudfront.net/article/718x300/2023-05-17_yaqldgtm2w.jpg', 'business', '2023-05-17T12:01:45Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(23, 17, 18, 'us', 'Mercedes Sets Out to Make Sexy Vans With Yacht-Like Interiors - Bloomberg', 'Turning the van into an object of desire will help justify significant investment in a dedicated platform for electric commercial vehicles.', 'Vans haven’t always been objects of desire. When Fiat launched its \r\nMultipla model in the late 1990s, supporters of the soccer team Juventus — many of whom worked for the Italian carmaker — were sub… [+313 chars]', 'https://www.bloomberg.com/news/articles/2023-05-17/mercedes-sets-out-to-make-sexy-vans-with-yacht-like-interiors', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iP37mLGO_GrA/v0/1200x675.jpg', 'business', '2023-05-17T12:00:09Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(24, 18, 19, 'us', 'Ripple Buys Crypto Custody Firm Metaco for $250M - CoinDesk', 'Metaco will continue to operate as an independent business unit led by CEO and founder Adrien Treccani.', 'Blockchain firm Ripple has acquired Swiss-based crypto custody provider Metaco for $250 million, the company said in a statement on Wednesday.\r\nThe purchase will allow Ripple to expand its offerings … [+1692 chars]', 'https://www.coindesk.com/business/2023/05/17/ripple-buys-crypto-custody-firm-metaco-for-250m/', 'https://www.coindesk.com/resizer/l2zxx51297WL-UI-T5M9TJeBF9I=/1200x628/center/middle/cloudfront-us-east-1.images.arcpublishing.com/coindesk/D7OJXH6Y55BEPFWV7B76ZESO3Q.jpg', 'business', '2023-05-17T12:00:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(25, 19, 20, 'us', 'Mild price pressure on gold, silver as USDX strengthens - Kitco NEWS', 'Senior Technical Analyst Jim Wyckoff prepares investors with an overview of how the markets opened and closed. What moved metal prices? How do the technicals look? By looking at important developments', '(Kitco News) - Gold and silver prices are modestly lower in early U.S. dealings Wednesday. A resurgent U.S. dollar index that hit a six-week high overnight and is trending higher is a significantly b… [+2562 chars]', 'https://www.kitco.com/news/2023-05-17/Mild-price-pressure-on-gold-silver-as-USDX-strengthens.html', 'https://www.kitco.com/news/2023-05-17/images/goldchart_0517_am.png', 'business', '2023-05-17T11:56:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(26, 20, 21, 'us', 'Target Warns Inventory Theft To Weigh On Guidance. Why Does Walmart Have An Edge Over Its Rival? - Investor\'s Business Daily', NULL, NULL, 'https://www.investors.com/news/why-does-walmart-have-the-edge-on-target-walmart-stock/', NULL, 'business', '2023-05-17T11:53:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(27, 20, 21, 'us', 'Elon Musk Teases Products; Warns Of \'Challenging 12 Months\' - Investor\'s Business Daily', NULL, NULL, 'https://www.investors.com/news/tesla-stock-lost-46-since-its-2022-annual-shareholder-meeting-will-this-event-change-its-course/', NULL, 'business', '2023-05-17T11:35:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(28, 20, 21, 'us', 'Sam Altman: CEO of OpenAI calls for US to regulate artificial intelligence - BBC', 'Sam Altman says government regulation is \"critical\" to control the risks of artificial intelligence.', 'The creator of advanced chatbot ChatGPT has called on US lawmakers to regulate artificial intelligence (AI). \r\nSam Altman, the CEO of OpenAI, the company behind ChatGPT, testified before a US Senate … [+2711 chars]', 'https://www.bbc.com/news/world-us-canada-65616866', 'https://ichef.bbci.co.uk/news/1024/branded_news/2715/production/_129750001_1dd1b383d243c38a83f27d131f562f525931fc1f.jpg', 'business', '2023-05-17T11:26:22Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(29, 20, 22, 'us', 'Mortgage demand drops as interest rates hit a 2-month high - CNBC', 'Mortgage applications to purchase a home dropped 4.8% last week compared with the previous week, according to the Mortgage Bankers Association.', 'Higher mortgage rates and a severe shortage of homes for sale are taking their toll on mortgage demand.\r\nMortgage applications to purchase a home dropped 4.8% last week, compared with the previous we… [+1570 chars]', 'https://www.cnbc.com/2023/05/17/mortgage-demand-drops-as-interest-rates-hit-a-2-month-high.html', 'https://image.cnbcfm.com/api/v1/image/107078767-1655849251148-gettyimages-1404270422-031a4288_746e5b0f-dc80-459e-a8a5-6010c1575964.jpeg?v=1684321201&w=1920&h=1080', 'business', '2023-05-17T11:00:01Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(30, 21, 23, 'us', 'Competitive housing trends hit Chicago rental market - Chicago Tribune', 'While prices are tempering compared with 2021 and 2022, the rental market is experiencing its usual spring and summer tail winds.', 'Bidding wars. Lack of inventory. Offers above asking price. All characteristics of the hot local housing market, these trends are now also showing up in Chicagos rental market.\r\nWhile rents are stabi… [+7222 chars]', 'https://www.chicagotribune.com/real-estate/ct-biz-rental-market-spring-2023-20230517-ifnesiwvsfaarfugzian3ql6em-story.html', 'https://www.chicagotribune.com/resizer/y1FfEualdH2fLErnltz8hdB_XrU=/1200x630/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/tronc/BIHUMF4OBVFSHGS6J5T6ZOYXUM', 'business', '2023-05-17T11:00:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(31, 22, 23, 'us', 'Virgin Galactic is a Go for Launch: Unity 25 Flight Window Opens May 25, 2023 - Virgin Galactic - Investor Relations', 'Virgin Galactic Holdings, Inc. (NYSE: SPCE) today announced that the flight window for its upcoming spaceflight will open on May 25, 2023. The Unity 25 mission specialists will begin astronaut training on May 22, 2023. Please visit the Virgin Galactic website…', 'ORANGE COUNTY, Calif.--(BUSINESS WIRE)-- \r\nVirgin Galactic Holdings, Inc. (NYSE: SPCE) today announced that the flight window for its upcoming spaceflight will open on May 25, 2023. The Unity 25 miss… [+789 chars]', 'https://investors.virgingalactic.com/news/news-details/2023/Virgin-Galactic-is-a-Go-for-Launch-Unity-25-Flight-Window-Opens-May-25-2023/default.aspx', NULL, 'business', '2023-05-17T10:58:24Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(32, 23, 24, 'us', 'Kinzhal-killing Patriot not hard to find, and Russia is gunning for it - Business Insider', 'Everything has limits though, and the US-made Patriot has the best chance of killing Russia\'s Kinzhal missile when it\'s the target, one expert said.', 'Russia\'s hunting the newest addition to Ukraine\'s air defenses with its advanced Kinzhal missiles, a weapon until recently hailed as unbeatable, in a major test of the US-made systems.\r\nThough they a… [+11051 chars]', 'https://www.businessinsider.com/kinzhal-killing-patriot-detection-russia-gunning-for-system-losses-2023-5', 'https://i.insider.com/6463a719785af800192b84b8?width=1200&format=jpeg', 'business', '2023-05-17T10:30:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(33, 23, 24, 'us', 'Morning bid: Fed rates to stay higher for longer, debt drama goes on - Reuters', 'A look at the day ahead in U.S. and global markets from Samuel Indyk.', 'May 17 (Reuters) - A look at the day ahead in U.S. and global markets from Samuel Indyk.\r\nThe Federal Reserve is saying something and markets might finally be starting to listen.\r\nTuesday\'s plethora … [+2655 chars]', 'https://www.reuters.com/markets/global-markets-view-usa-2023-05-17/', 'https://www.reuters.com/resizer/BgUtKZsy4uIpy7eQQJ_j2va_06w=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/JEQ2PTMXOFM4VGW6AB2VRG2NZ4.jpg', 'business', '2023-05-17T10:01:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(34, 23, 25, 'us', 'Ketchup from the cloud: Kraft Heinz debuts \'Remix,\' its personalized sauce dispenser - Yahoo Finance', 'On Tuesday, Kraft Heinz introduced the HEINZ Remix, a customizable and IoT-enabled digital sauce dispenser.', 'Take me out to the ballgame if only to try this new innovation from Kraft Heinz (KHC), the \"Heinz Remix.\"\r\nOn Tuesday, Kraft Heinz introduced its customizable, futuristic digital sauce dispenser that… [+3113 chars]', 'https://finance.yahoo.com/news/ketchup-from-the-cloud-kraft-heinz-debuts-remix-its-personalized-sauce-dispenser-100022983.html', 'https://s.yimg.com/ny/api/res/1.2/tCQaR7Bnbed3PWoZQX5jVw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD05MDM-/https://s.yimg.com/os/creatr-uploaded-images/2023-05/bcb90d30-f418-11ed-bb7a-d16c8a740b7d', 'business', '2023-05-17T10:00:22Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(35, 24, 26, 'us', 'Brightline Orlando to Miami tickets go on sale - Palm Beach Post', NULL, NULL, 'https://www.palmbeachpost.com/story/news/2023/05/17/brightline-tickets-orlando-miami-on-sale-high-speed-train-florida/70223489007/', NULL, 'business', '2023-05-17T09:58:14Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(36, 25, 27, 'us', 'Rich nations urged to pay $13 trillion in pledges to Global South - Al Jazeera English', 'Developed countries promised in 2009 to transfer $100bn annually to climate-vulnerable states, but that hasn’t happened.', 'Rich G7 nations owe poor ones an estimated $13 trillion in unpaid development aid as well as support in the fight against climate change, British charity Oxfam says.\r\nInstead of fulfilling their obli… [+2143 chars]', 'https://www.aljazeera.com/news/2023/5/17/rich-nations-told-to-honour-aid-climate-pledges-to-global-south', 'https://www.aljazeera.com/wp-content/uploads/2023/01/2023-01-15T164408Z_1868446186_RC21RY9L82K1_RTRMADP_3_DAVOS-MEETING-DEMONSTRATION.jpg?resize=1920%2C1440', 'business', '2023-05-17T09:46:02Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(37, 25, 28, 'us', 'Elon Musk says the ‘laptop class’ needs to ‘get off their moral high horse’ when it comes to remote work - Yahoo Finance', 'Musk argued that professional workers were being unfair in asking to work-from-home while factory and service workers still had to work in-person.', 'Chief executives, trying to bring employees back to the office, argue that working-from-home leads to less engaged and less productive workers. But Tesla CEO Elon Musk is going one step further, call… [+4692 chars]', 'https://finance.yahoo.com/news/elon-musk-says-laptop-class-093309660.html', 'https://s.yimg.com/ny/api/res/1.2/lV6C7RH7.TKaIVzomtcgSw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/fortune_175/7840c0315a3431d621831ec561f11e32', 'business', '2023-05-17T09:33:09Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(38, 26, 29, 'us', 'Last-minute deal on debt ceiling could still spark recession even if US avoids default - USA TODAY', 'A last-minute deal that raises debt ceiling could roil markets and cause a recession even if default is averted if borrowing costs rise, stocks tank', 'A deal in the coming days to raise the nations debt limit wont necessarily sound an all-clear signal for the U.S. economy.\r\nSure, it would avert the economic and financial catastrophe envisioned by T… [+7889 chars]', 'https://www.usatoday.com/story/money/2023/05/17/last-minute-debt-ceiling-deal-could-still-trigger-recession/70221407007/', 'https://www.gannett-cdn.com/presto/2023/05/08/USAT/b351fa88-90ee-465d-9d7f-ce1651deea92-biden_debt_topper.jpg?auto=webp&crop=2548,1433,x0,y0&format=pjpg&width=1200', 'business', '2023-05-17T09:28:24Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(39, 27, 30, 'us', 'Watch these BTC price levels as Bitcoin threatens to lose $27K support - Cointelegraph', 'Bitcoin sees fresh downside targets as BTC price risks losing $27,000.', 'Bitcoin (BTC) looked poised to give up $27,000 as support on May 17, with traders waiting for new lows.\r\nBTC/USD 1-hour candle chart on Bitstamp. Source: TradingView\r\nWhales meet low liquidity\r\nData … [+3475 chars]', 'https://cointelegraph.com/news/watch-these-btc-price-levels-as-bitcoin-threatens-to-lose-27k-support', 'https://images.cointelegraph.com/cdn-cgi/image/format=auto,onerror=redirect,quality=90,width=1200/https://s3.cointelegraph.com/uploads/2023-05/0decf1ae-2142-4e3c-af3d-b338b5ac0438.jpg', 'business', '2023-05-17T09:04:25Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(40, 27, 31, 'us', 'UBS flags $17 billion hit from Credit Suisse takeover - New York Post ', 'UBS estimates a negative impact of $13 billion from fair value adjustments of the combined group’s assets and liabilities. It also sees $4 billion in potential litigation and regulatory costs…', 'UBS Group AG expects a financial hit of about $17 billion from the takeover of Credit Suisse Group AG, the bank said in a regulatory presentation as it prepares to complete the rescue of its struggli… [+4549 chars]', 'https://nypost.com/2023/05/17/ubs-flags-17-billion-hit-from-credit-suisse-takeover/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/newspress-collage-27081820-1684311802046.jpg?quality=75&strip=all&1684297444&w=1024', 'business', '2023-05-17T08:31:00Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(41, 27, 31, 'us', 'Siemens raises full-year outlook after second-quarter sales beats forecasts - CNBC', 'Siemens raised its full year sales and profit guidance on Wednesday after the German engineering and technology group beat sales forecasts during its second quarter.', 'Siemens raised its full year sales and profit guidance on Wednesday after the German engineering and technology group beat sales forecasts during its second quarter.\r\nThe maker of products ranging fr… [+2244 chars]', 'https://www.cnbc.com/2023/05/17/siemens-raises-full-year-outlook-after-second-quarter-sales-beats-forecasts.html', 'https://image.cnbcfm.com/api/v1/image/107119025-1663239061384-gettyimages-1232733638-20090101210507-99-501020.jpeg?v=1684301911&w=1920&h=1080', 'business', '2023-05-17T05:38:31Z', 'newsapi.org', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(42, 27, 32, 'us', 'Fetterman suggests work requirements for bailed-out bank execs in choppy Senate hearing remarks - New York Post ', 'Sen. John Fetterman floated the idea of work requirements for banking executives that receive taxpayer bailouts in remarks during a Senate Banking Committee hearing on Tuesday that some conservativ…', 'Sen. John Fetterman floated the idea of work requirements for banking executives that receive taxpayer bailouts in remarks during a Senate Banking Committee hearing on Tuesday that some conservative … [+4573 chars]', 'https://nypost.com/2023/05/17/fetterman-suggests-work-requirements-for-bailed-out-bank-execs/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/fetterman.jpg?quality=75&strip=all&1684287161&w=1024', 'business', '2023-05-17T05:36:00Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(43, 27, 32, 'us', 'Taco Bell wants to cancel \'Taco Tuesday\' trademark - KTLA 5', 'Taco Bell has petitioned the US Patent and Trademark Office in an attempt to cancel the \'Taco Tuesday\' trademark which is owned by competitor, Taco John\'s. T...', NULL, 'https://www.youtube.com/watch?v=8tk_m7YsW4w', 'https://i.ytimg.com/vi/8tk_m7YsW4w/maxresdefault.jpg', 'business', '2023-05-17T04:01:02Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(44, 27, 32, 'us', 'US debt crisis: First-ever US debt default on cards? | World DNA - WION', 'U.S. stocks slouched to a higher close on Monday, and benchmark Treasury yields rose amid flickering optimism that Washington will get past partisan wranglin...', NULL, 'https://www.youtube.com/watch?v=9o4rzma7EwE', 'https://i.ytimg.com/vi/9o4rzma7EwE/maxresdefault.jpg', 'business', '2023-05-17T03:41:06Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(45, 27, 33, 'us', '\'Foreign investors are back\': Japan stocks surge to their highest since 1990 - CNBC', 'Japan\'s Topix marked a 33-year high on revived hopes for Japanese equities, with the index outperforming its regional peers year-to-date.', 'A general view shows the skyline of the city as people stand on the observation deck of Roppongi Hills to watch the full moon, in Tokyo on September 21, 2021. (Photo by Philip FONG / AFP) (Photo by P… [+4118 chars]', 'https://www.cnbc.com/2023/05/17/stocks-in-tokyo-highest-since-1990.html', 'https://image.cnbcfm.com/api/v1/image/107242277-1684282208981-gettyimages-1235399600-AFP_9N97TN.jpeg?v=1684293789&w=1920&h=1080', 'business', '2023-05-17T03:23:00Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(46, 27, 33, 'us', 'Court denies Elizabeth Holmes\' motion to stay out of prison as she appeals her conviction - ABC7 News Bay Area', NULL, 'Your browser isnt supported anymore. Update it to get the best YouTube experience and our latest features. Learn more\r\nRemind me later', 'https://www.youtube.com/watch?v=0RaYP9o-epU', NULL, 'business', '2023-05-17T01:51:36Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(47, 28, 33, 'us', 'Tagrisso plus chemotherapy demonstrated strong improvement in progression-free survival for patients with EGFR-mutated advanced lung cancer in FLAURA2 Phase III trial - AstraZeneca', '', 'Positive high-level results from the FLAURA2 Phase III trial showed AstraZenecas Tagrisso (osimertinib) in combination with chemotherapy demonstrated a statistically significant and clinically meanin… [+7669 chars]', 'https://www.astrazeneca.com/media-centre/press-releases/2023/tagrisso-plus-chemo-improved-pfs-in-lung-cancer.html', '', 'business', '2023-05-17T01:30:00Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(48, 28, 33, 'us', 'Ex-Apple engineer accused of stealing self-driving car secrets - BBC', 'The 35-year-old suspect allegedly downloaded large amounts of data before fleeing to China.', 'A former Apple engineer has been charged with stealing the company\'s self-driving car technology, almost five years after he fled to China.\r\nProsecutors accuse Weibao Wang, 35, of stealing thousands … [+2010 chars]', 'https://www.bbc.com/news/world-us-canada-65616384', 'https://ichef.bbci.co.uk/news/1024/branded_news/697D/production/_129750072_gettyimages-1236193308.jpg', 'business', '2023-05-17T00:06:16Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(49, 29, 34, 'us', 'Your Georgia Power bill will start going up soon. Here’s how much - WSB Atlanta', 'If you’re a Georgia Power customer, expect to see a rate hike reflected in your bill soon.', 'DEKALB COUNTY, Ga. — If youre a Georgia Power customer, expect to see a rate hike reflected in your bill soon.\r\nOn June 1, the average customer will see their electricity bill increase by around $16 … [+1802 chars]', 'https://www.wsbtv.com/news/local/dekalb-county/georgia-power-rate-hike-is-coming-june/VMGNTHGI6NAXZO2EEJPSI6QFJQ/', 'https://cmg-cmg-tv-10010-prod.cdn.arcpublishing.com/resizer/L-xqFIrQHCeMcH_Q77oo6QN4ojU=/1440x810/filters:format(jpg):quality(70)/d1hfln2sfez66z.cloudfront.net/05-16-2023/t_38a24d2219944b9a9f80fe24982b6500_name_https___www_wsbradio_com__rw_Pub_p10_AJC_2019_12_13_Images_newsEngin_25089256_20171106_093530_scaled.jpg', 'business', '2023-05-16T23:09:12Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(50, 29, 35, 'us', 'Wall Street\'s Biggest Banks Face a Harsh Reality Check in China - Yahoo Finance', '(Bloomberg) -- More than three years after China’s grand financial opening, it’s becoming clear to Wall Street giants that their dreams of windfall profits...', '(Bloomberg) -- More than three years after Chinas grand financial opening, its becoming clear to Wall Street giants that their dreams of windfall profits from the $60 trillion market are more elusive… [+9849 chars]', 'https://finance.yahoo.com/news/wall-streets-biggest-banks-face-230009903.html', 'https://s.yimg.com/ny/api/res/1.2/C25TfN8qoChPV3yMCWBnag--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/bloomberg_markets_842/2ca32d87f7ce1d55ec4c4dffa0f1010b', 'business', '2023-05-16T23:00:09Z', 'newsapi.org', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(51, 29, 35, 'us', 'EU states approve world\'s first comprehensive crypto rules - Reuters', 'European Union states on Tuesday gave the final nod to the world\'s first comprehensive set of rules to regulate cryptoassets on Tuesday, piling pressure on countries such as Britain and the United States to play catch up.', 'May 16 (Reuters) - European Union states on Tuesday gave the final nod to the world\'s first comprehensive set of rules to regulate cryptoassets on Tuesday, piling pressure on countries such as Britai… [+2298 chars]', 'https://www.reuters.com/technology/eu-states-approve-worlds-first-comprehensive-crypto-rules-2023-05-16/', 'https://www.reuters.com/resizer/osT0UXOZpv5n5wDnqLY2oqhLFkA=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/NQZBLEKYINIZNKMH64XXMQVLFE.jpg', 'business', '2023-05-16T21:24:00Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(52, 30, 36, 'us', 'This Just In: Forcing Successful People To Work Under Conditions They Don\'t Like Can Get Them To Lateral - Above the Law', 'Firms better add better snacks to the breakroom if they want to keep their key talent in the office.', 'Adapting to COVID was a time. Now that the smoke and lawyer cat videos have cleared, there have been two competing takes on what the “new normal” will mean for the industry. The first is the “fall in… [+4482 chars]', 'https://abovethelaw.com/2023/05/this-just-in-forcing-successful-people-to-work-under-conditions-they-dont-like-can-get-them-to-lateral/', 'https://abovethelaw.com/uploads/2021/05/lawyer-work-from-home-GettyImages-1247903569.jpg', 'business', '2023-05-16T21:18:29Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(53, 30, 36, 'us', 'Pfizer Gets $85 Billion in Orders for Bond Sale to Buy Seagen - Bloomberg', NULL, 'To continue, please click the box below to let us know you\'re not a robot.', 'https://www.bloomberg.com/news/articles/2023-05-16/pfizer-kicks-off-jumbo-bond-deal-to-help-fund-seagen-purchase', NULL, 'business', '2023-05-16T21:07:19Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(54, 30, 37, 'us', 'Yellen meeting with Bank of America, JPMorgan, Citi CEOs Thursday: report - Fox Business', 'Treasury Secretary Janet Yellen will reportedly meet with the CEOs of Bank of America, Citigroup, JPMorgan and other big banks amid debt ceiling threat and bank crisis.', 'U.S. Treasury Secretary Janet Yellen will reportedly meet with the chief executives of some of America\'s largest banks this week as the country grapples with ongoing jitters over the banking system a… [+3470 chars]', 'https://www.foxbusiness.com/politics/yellen-meeting-bank-america-jpmorgan-citi-ceos-thursday-report', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2023/05/0/0/janet-yellen.jpg?ve=1&tl=1', 'business', '2023-05-16T20:55:44Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(55, 30, 37, 'us', '\'Bloomberg Technology\' Full Show (05/16/2023) - Bloomberg Technology', '\"Bloomberg Technology\" is our daily news program focused exclusively on technology, innovation and the future of business hosted by Caroline Hyde in New York...', NULL, 'https://www.youtube.com/watch?v=WiMcEYf2r-s', 'https://i.ytimg.com/vi/WiMcEYf2r-s/maxresdefault.jpg', 'business', '2023-05-16T20:17:56Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(56, 31, 38, 'us', 'Calling all Generative AI disruptors of the enterprise! Apply now to present at VB Transform 2023 - VentureBeat', 'We’re on the hunt for the 10 generative AI products most likely to disrupt the enterprise right now, and if you have such a product we’d like to invite you to present the impact of this technology on the main stage.', 'Join top executives in San Francisco on July 11-12, to hear how leaders are integrating and optimizing AI investments for success. Learn More\r\nThe Innovation Showcase is back at VB Transform: Get ahe… [+1088 chars]', 'https://venturebeat.com/ai/calling-all-generative-ai-disruptors-of-the-enterprise-apply-now-to-present-at-transform-2023/', 'https://venturebeat.com/wp-content/uploads/2023/05/2VB_9896.jpg?w=1200&strip=all', 'business', '2023-05-16T19:56:19Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(57, 32, 39, 'us', 'Top CD Rates Today, May 16 - Investopedia', 'See what today\'s top nationwide rate is for every CD term, and how it compares to the previous business day\'s top rate. We collect data from more than 200 financial institutions.', 'CD shoppers looking to score a great short-term rate have a new top option today: You can now earn 5.10% APY on a 3-month certificate, up from yesterday\'s term high of 5.01% APY.\r\nIf you\'re willing t… [+5172 chars]', 'https://www.investopedia.com/top-cd-rates-today-may-16-7498992', 'https://www.investopedia.com/thmb/UYU2WuGLSJqLj7OgubHRuo3Mo3A=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20Seniorcouple-Maskot-475e3f1ea40d40ad8427db6ebdfb9adf.jpeg', 'business', '2023-05-16T19:30:13Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(58, 33, 40, 'us', 'FTC sues to stop drugmaker Amgen from completing $27.8 billion deal - The Washington Post', 'The Federal Trade Commission is seeking to block Amgen\'s $27.8 billion deal to acquire Horizon Therapeutics, the regulator\'s first challenge to a pharmaceutical merger in years.', 'Comment on this story\r\nComment\r\nThe Federal Trade Commission sued to block drugmaker Amgens proposed $27.8 billion deal to acquire a smaller rival, the regulators first challenge to a pharmaceutical … [+2680 chars]', 'https://www.washingtonpost.com/business/2023/05/16/ftc-lawsuit-amgen-pharmaceutical-deal/', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/L7IPQHXUAII63EMNAESXFVSJGA.jpg&w=1440', 'business', '2023-05-16T19:13:00Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(59, 33, 40, 'us', 'Home Depot is facing a headwind from low home sales, says Bleakley\'s Peter Boockvar - CNBC Television', 'Peter Boockvar, Bleakley Financial Group CIO, joins \'Power Lunch\' to discuss Home Depot\'s weak consumer forecast and what it means for the economy.', NULL, 'https://www.youtube.com/watch?v=xiJCO4b_QQc', 'https://i.ytimg.com/vi/xiJCO4b_QQc/maxresdefault.jpg', 'business', '2023-05-16T18:37:23Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(60, 34, 41, 'us', 'Recalled Gerber baby formula was sent to US retailers after recall began, wholesaler says - ABC News', 'A Gerber infant formula was recalled earlier this year over potential contamination of Cronobacter sakazakii, a bacteria that could cause life-threatening infections in infants', 'NEW YORK -- An infant formula recalled over potential bacteria contamination was distributed to retailers across eight states after the recall began, according to a release published by the U.S. Food… [+2812 chars]', 'https://abcnews.go.com/US/wireStory/recalled-gerber-baby-formula-us-retailers-after-recall-99363937', 'https://s.abcnews.com/images/US/wirestory_7c31c0b8962ee31bd224f7358e351a6f_16x9_992.jpg', 'business', '2023-05-16T18:33:45Z', 'newsapi.org', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(61, NULL, NULL, 'us', 'Ashfall - Official Game Overview Trailer - IGN', 'Enjoy this action-packed game overview trailer for Ashfall, the upcoming post-apocalyptic massively multiplayer online shooter/RPG from Legendary Star Studio...', NULL, 'https://www.youtube.com/watch?v=uGHrNUgnWVY', 'https://i.ytimg.com/vi/uGHrNUgnWVY/maxresdefault.jpg', 'technology', '2023-05-17T15:00:41Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(62, NULL, NULL, 'us', 'The Legend of Zelda: Tears of the Kingdom - 5 PRO Shield Surfing (and Skating!) Tips - IGN', 'Link may be missing his right arm, but his feet haven’t forgotten how to shield surf since Breath of the Wild. Riding down slopes is as fun as ever, but with...', NULL, 'https://www.youtube.com/watch?v=a-7htAN5144', 'https://i.ytimg.com/vi/a-7htAN5144/maxresdefault.jpg', 'technology', '2023-05-17T15:00:00Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(63, 35, 42, 'us', 'This is catfishing on an industrial scale - Ars Technica', 'Hired as customer service reps, they lure the lovestruck through a network of dating sites.', '40 with \r\nThis wasnt supposed to happen. In 2020, in a house surrounded by fields in the Irish countryside, Liam, 19, sat at his laptop, an energy drink fizzing at his elbow. He leaned in for a bette… [+3407 chars]', 'https://www.wired.com/story/catfishing-customer-support-love/', 'https://cdn.arstechnica.net/wp-content/uploads/2023/05/catfishing-list-760x380.jpg', 'technology', '2023-05-17T14:43:15Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(64, 36, 43, 'us', 'Google Docs adding collapsible headings, custom building blocks - 9to5Google', 'Following its big redesign, Google Docs is expanding its Smart Canvas push with user-created building blocks and collapsible headings...', 'Following its big redesign, Google Docs is expanding its Smart Canvas effort with user-created building blocks and collapsible headings.\r\nGoogle Docs on the web will now let you minimize and expand h… [+2427 chars]', 'https://9to5google.com/2023/05/17/google-docs-collapsible-headings/', 'https://i0.wp.com/9to5google.com/wp-content/uploads/sites/4/2023/03/google-docs-logo-circle-4.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', 'technology', '2023-05-17T14:35:00Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(65, 37, 44, 'us', 'Zelda: Tears of the Kingdom: How To Get Infinite Items - Kotaku', 'Zelda players can now create endless supplies of rupees and rare items, like diamonds', 'Players have discovered a new duplication glitch in The Legend of Zelda: Tears of the Kingdom, that lets you infinitely duplicate almost all of the items in your inventory, from diamonds to star frag… [+2517 chars]', 'https://kotaku.com/tears-of-the-kingdom-how-to-infinite-items-duplication-1850445005', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/a3b3b5c19a82ff4678e926b60e914810.jpg', 'technology', '2023-05-17T14:30:42Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(66, 38, 45, 'us', 'Sony is holding an hour-long PlayStation Showcase next week - The Verge', 'Sony is holding a PlayStation Showcase event on May 24th, which will be streamed on Twitch and YouTube and focus on games for the PS5 and PS VR2.', 'Sony is holding an hour-long PlayStation Showcase next week\r\nSony is holding an hour-long PlayStation Showcase next week\r\n / Expect news on upcoming games for both the PS5 and PS VR2.\r\nByAndrew Webst… [+1140 chars]', 'https://www.theverge.com/2023/5/17/23726889/playstation-showcase-2023-date-ps5-vr-stream', 'https://cdn.vox-cdn.com/thumbor/bzPXSkptg2uE3JUVBy9jmLDKI8w=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/22015304/vpavic_4278_20201030_0247.jpg', 'technology', '2023-05-17T14:14:56Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(67, 38, 46, 'us', 'Amazon announces new Echo with funky design and revamped earbuds - CNBC', 'Amazon unveiled the Echo Pop, which sports a new semisphere design with a front-facing speaker and costs $39.99.', 'Amazon announced the Echo Pop, which sports a semi-sphere design and a front-facing speaker.\r\nAmazon on Wednesday announced two new Echo smart speakers, including one with a funky, semisphere design,… [+1235 chars]', 'https://www.cnbc.com/2023/05/17/amazon-echo-pop-price-release-date.html', 'https://image.cnbcfm.com/api/v1/image/107242183-1684271301661-Echo_Pop_in_Midnight_Teal.png?v=1684332001&w=1920&h=1080', 'technology', '2023-05-17T14:00:01Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(68, 38, 47, 'us', 'Beats Studio Buds Plus review: it\'s cool to be clear - The Verge', 'The new $149.99 Beats Studio Buds Plus improve upon the original model with better sound, more effective noise cancellation, and a unique translucent design. They also work better with Android than AirPods or the Beats Fit Pro.', 'With better sound, improved noise cancellation, and a standout translucent design, these are everything the original Beats Studio Buds shouldve been.\r\nByChris Welch, a reviewer specializing in person… [+9893 chars]', 'https://www.theverge.com/23725921/beats-studio-buds-plus-earbuds-review-translucent-clear', 'https://cdn.vox-cdn.com/thumbor/s8tP7IJg_n8INoJWKTcmy9PDS1g=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24662269/DSCF0790_Enhanced_NR_2.jpg', 'technology', '2023-05-17T14:00:00Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04');
INSERT INTO `articles` (`id`, `source_id`, `author_id`, `country`, `title`, `description`, `content`, `url`, `url_image`, `category`, `published_at`, `source_platform`, `created_at`, `updated_at`) VALUES
(69, 38, 47, 'us', 'Startup creates new novel solution to catch falling satellites for their materials - The Sun', 'A mini-manufacturing satellite that can return to Earth aboard a heat shield could help revolutionise the manufacture of super-materials in space, according ...', NULL, 'https://www.youtube.com/watch?v=dwMq43cRk3k', 'https://i.ytimg.com/vi/dwMq43cRk3k/maxresdefault.jpg', 'technology', '2023-05-17T13:15:05Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(70, 39, 48, 'us', 'Rimac Nevera electric hypercar sets 23 records in single day, including fastest 0-249 mph time - Electrek.co', 'Times of 0-60 mph simply aren’t enough when you get into the peak-performance, hypercar segment of electric vehicles. The Rimac...', 'Times of 0-60 mph simply arent enough when you get into the peak-performance, hypercar segment of electric vehicles. The Rimac Nevera has already done an excellent job demonstrating that its one of t… [+3116 chars]', 'https://electrek.co/2023/05/17/rimac-nevera-electric-hypercar-sets-records-single-day-fastest-time/', 'https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2023/05/Rimac-records-Nevera-Rear.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', 'technology', '2023-05-17T13:06:00Z', 'newsapi.org', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(71, 40, 49, 'us', 'Stability AI\'s StableStudio Wants to Be the One-Stop-Shop for \'Open Source\' AI - Gizmodo', 'The new StableStudio interface integrates the company’s latest AI image generator and its language model alongside a call for community plugins.', 'Despite the expanding cost of Artificial Intelligence and increasingly business-minded implementation of AI, Stability AI has continued to hitch its car on the open source train, for better or worse.… [+3133 chars]', 'https://gizmodo.com/stability-ai-ai-image-generator-stablestudio-dall-e-1850442577', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/7bec824e4deb43d3c6c51886e85d3599.png', 'technology', '2023-05-17T13:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(72, 40, 50, 'us', 'Unistellar\'s New Smart Telescope Turns Anyone Into a Backyard Astrophotographer - Gizmodo', 'The telescope makes it possible for amateurs to capture fantastic views of space, even in densely lit environments.', 'Unistellars automated eQuinox 2 is the latest addition to the growing family of smart telescopes, making it possible for backyard astronomers to easily capture clear views of space, even in severely … [+13570 chars]', 'https://gizmodo.com/unistellar-smart-telescope-equinox-2-astronomy-app-astr-1850420857', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/e347b76321e17f99c0f2b3eb9c111e04.png', 'technology', '2023-05-17T13:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(73, 41, 50, 'us', 'Google\'s latest AI tackles long and costly drug discovery | Engadget - Engadget', 'Google\'s Cloud division has launched two new suites aimed at addressing drug discovery while advancing precision medicine..', 'It can cost billions of dollars to develop drugs and a large percentage fail at the trial stage, so a number of companies are deploying AI to help in that area. Google\'s Cloud division is the latest … [+1587 chars]', 'https://www.engadget.com/googles-latest-ai-tackles-long-and-costly-drug-discovery-121959099.html', 'https://s.yimg.com/uu/api/res/1.2/zlQRK.A4pzt6pMZYOwK80A--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-05/ed10ec00-f49f-11ed-b768-bf9d05d263a8.cf.jpg', 'technology', '2023-05-17T12:22:47Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(74, 42, 51, 'us', 'iPhone 15 Pro Max to Feature Rearranged Camera Layout to Accommodate Periscope Lens - MacRumors', 'Apple is set to rearrange the layout of the rear triple-lens camera system on the iPhone 15 Pro Max to accommodate the new periscope camera...', 'Apple is set to rearrange the layout of the rear triple-lens camera system on the iPhone 15 Pro Max to accommodate the new periscope camera technology that will be exclusive to the larger handset. \r\n… [+2989 chars]', 'https://www.macrumors.com/2023/05/17/iphone-15-pro-max-camera-redesign-periscope/', 'https://images.macrumors.com/t/lHvdCB520pd4207xysEPWU2jpas=/1920x/article-new/2023/02/iPhone-15-Pro-Periscope-Mock-Feature.jpg', 'technology', '2023-05-17T12:09:21Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(75, 43, 52, 'us', 'Nintendo Switch Online\'s Pac-Man 99 Is Being Delisted in October - IGN', 'Online services for Pac-Man 99 will be discontinued later this year, though some game modes will continue to be available for some past October.', 'Online services for Pac-Man 99 will be discontinued later this year, though some game modes will continue to be available for some past the October 8 deadline.\r\nPac-Man 99 is currently available for … [+1501 chars]', 'https://www.ign.com/articles/nintendo-switch-onlines-pac-man-99-is-being-delisted-in-october', 'https://assets1.ignimgs.com/2021/04/07/screenshot02-1617762413671.jpg?width=1280', 'technology', '2023-05-17T11:27:03Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(76, 43, 53, 'us', 'Call of Duty Devs Respond to Backlash Over Modern Warfare 2\'s Santa Sena Border Crossing Map - IGN', NULL, NULL, 'https://www.ign.com/articles/call-of-duty-devs-respond-to-backlash-over-modern-warfare-2s-santa-sena-border-crossing-map', NULL, 'technology', '2023-05-17T11:23:03Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(77, 43, 54, 'us', 'These High-End Water Guns Aren\'t for Kids - WIRED', 'Brands around the world are launching blasters with gaming modes, tactical display screens, and USB connectivity—all geared toward grown-ups.', 'Here comes summer, and with it, the latest wave of groundbreaking, splash-making toys. But these electronically enhanced blasters and shooters arent the leaky plastic pistols of our childhoods. These… [+1909 chars]', 'https://www.wired.com/story/water-guns-for-adults-spyra-three-mijia-pulse/', 'https://media.wired.com/photos/646427730227ed23db8041b6/191:100/w_1280,c_limit/Adult-Water-Guns-Gear.jpg', 'technology', '2023-05-17T11:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(78, 43, 55, 'us', 'Logitech teams up with iFixit on a self-repair program - The Verge', 'Logitech and iFixit are working together to help customers repair their own out-of-warranty Logitech hardware by creating repair guides, spare parts, and batteries for “select products.”', 'Logitech partners with iFixit for self-repairs\r\nLogitech partners with iFixit for self-repairs\r\n / Official spare parts, batteries, and repair guides for select Logitech hardware will be available th… [+3061 chars]', 'https://www.theverge.com/2023/5/17/23726681/logitech-ifixit-self-repair-program-announcement-mx-master-anywhere', 'https://cdn.vox-cdn.com/thumbor/VhVYzZYtwzu0n5uDZTVZLRXbX_U=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/23578034/jporter_220516_5225_0012.jpg', 'technology', '2023-05-17T10:33:46Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(79, 44, 56, 'us', 'Zelda: TotK is only the 6th game in 30 years to get both a \'Famitsu 40\' and \'Edge 10\' - Video Games Chronicle', 'It\'s also the fourth Zelda game to achieve the rare milestone…', 'The Legend of Zelda: Tears of the Kingdom has become only the sixth game in 30 years to receive the highest score in both Famitsu and Edge magazines.\r\nA 40/40 score in Japanese magazine Famitsu (whic… [+1806 chars]', 'https://www.videogameschronicle.com/news/zelda-totk-is-only-the-6th-game-in-30-years-to-get-both-a-famitsu-40-and-edge-10/', 'https://www.videogameschronicle.com/files/2023/05/zelda-totk-link.jpg', 'technology', '2023-05-17T10:06:32Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(80, 44, 57, 'us', 'ChatGPT Scams Are Infiltrating Apple\'s App Store and Google Play - WIRED', 'An explosion of interest in OpenAI’s sophisticated chatbot means a proliferation of “fleeceware” apps that trick users with sneaky in-app subscriptions.', 'Any major trend or world event, from the coronavirus pandemic to the cryptocurrency frenzy, will quickly be used as fodder in digital phishing attacks and other online scams. In recent months, it has… [+2783 chars]', 'https://www.wired.com/story/chatgpt-scams-apple-app-store-google-play/', 'https://media.wired.com/photos/646414a906bd08d2f808af1b/191:100/w_1280,c_limit/ChatGPT%20Scams%20Are%20Infiltrating%20the%20App%20Store%20and%20Google%20Play%20Security%20GettyImages-857739190.jpg', 'technology', '2023-05-17T10:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(81, 44, 57, 'us', 'Valve is the latest company to be sued by Immersion over its Steam Deck rumble tech - Engadget', 'Immersion Corporation has been suing companies over its rumble technology since at least (checks archives) 2004, and now it has a new company in its sights..', 'Immersion Corporation has been suing companies over its rumble haptic technology since at least (checks archives) 2004, and now it has a new company in its sights. Immersion has accused Valve of infr… [+1099 chars]', 'https://www.engadget.com/valve-is-the-latest-company-to-be-sued-by-immersion-over-its-steam-deck-rumble-tech-095043279.html', 'https://s.yimg.com/uu/api/res/1.2/wb8.IoCU4f_x9idL0Zu6zg--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-05/2c684e00-f48e-11ed-9af8-825bb439bc8c.cf.jpg', 'technology', '2023-05-17T09:51:20Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(82, 45, 58, 'us', 'Your Google Pixel is bringing back a time-saving option to open apps - Android Police', 'The option to hit enter to directly launch an app from search is rolling out again', 'Not too long ago, it was possible to use the Pixel Launcher to open apps right from the app drawer search by hitting the enter button, with no need to stretch your thumb to the top of the results to … [+1558 chars]', 'https://www.androidpolice.com/google-pixel-launcher-search-open-apps/', 'https://static1.anpoimages.com/wordpress/wp-content/uploads/2022/08/Android-13-home-screen-search-interface.jpg', 'technology', '2023-05-17T09:40:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(83, 46, 58, 'us', 'PowerColor RX 7900 XTX Red Devil cards may suffer from high GPU temperatures due to incorrect application of thermal compound - VideoCardz.com', 'PowerColor reacts to Radeon RX 7900 XTX Red Devil hotspot issue Igor’sLAB discovered an issue with PowerColor Radeon RX 7900 XTX Red Devil.  The Red Devil is PowerColor’s flagship model based on an air-cooler. The company also offers a water-cooled version ca…', 'IgorsLAB discovered an issue with PowerColor Radeon RX 7900 XTX Red Devil. \r\nThe Red Devil is PowerColors flagship model based on an air-cooler. The company also offers a water-cooled version called … [+2507 chars]', 'https://videocardz.com/newz/powercolor-rx-7900-xtx-red-devil-cards-may-suffer-from-high-gpu-temperatures-due-to-incorrect-application-of-thermal-compound', 'https://cdn.videocardz.com/1/2023/05/POWERCOLOR-RX-7900-XTX-RED-DEVIL-HOTSPOT-ISSUE.jpg', 'technology', '2023-05-17T08:46:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(84, 47, 59, 'us', 'Google could transform your Android phone into a dashcam with future update - XDA Developers', 'If everything falls into place, your Android smartphone is going to be able to double as your car\'s dashcam.', 'Google\'s constantly introducing new features to its Pixel smartphones like Magic Eraser, Magic Editor, and even cinematic wallpapers generated by AI. These are just some examples of features that giv… [+2388 chars]', 'https://www.xda-developers.com/pixel-phone-dashcam-update/', 'https://static1.xdaimages.com/wordpress/wp-content/uploads/2022/10/Google-Pixel-7-Pro-6-Watermarked-1.jpg', 'technology', '2023-05-17T06:25:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(85, 48, 60, 'us', 'Horizon Forbidden West Patch Finally Allows Completionists to 100% the PS5 DLC - Push Square', 'Time to finish this', 'Horizon Forbidden West\'sBurning Shores expansion has been out in the wild for a while now, and though plenty of players will have seen credits roll, none have achieved true 100% completion... althoug… [+785 chars]', 'https://www.pushsquare.com/news/2023/05/horizon-forbidden-west-patch-finally-allows-completionists-to-100percent-the-ps5-dlc', 'https://images.pushsquare.com/a952cc71f3a80/1280x720.jpg', 'technology', '2023-05-17T04:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(86, 49, 61, 'us', 'Random: Zelda: Tears Of The Kingdom Player Creates Insane \"Orbital Strike Laser Cannon\" - Nintendo Life', 'The game hasn\'t even been out for a week yet...', 'Image: Nintendo Life / Nintendo\r\nThe Legend of Zelda: Tears of the Kingdom hasn\'t even been available for a week yet and already players are crafting some absolutely mind-blowing creations with the n… [+1037 chars]', 'https://www.nintendolife.com/news/2023/05/random-zelda-tears-of-the-kingdom-player-creates-insane-orbital-strike-laser-cannon', 'https://images.nintendolife.com/761a77f7b5333/1280x720.jpg', 'technology', '2023-05-17T03:25:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(87, 49, 61, 'us', 'Overwatch 2 Fans Can\'t Believe What Blizzard Has Done to PS5, PS4 Sequel\'s Promised Co-Op Mode - Push Square', 'Gone, but not forgotten', 'In another twist in the ongoing Overwatch 2 metanarrative, Blizzard has announced that the hero shooter\'s highly-anticipated cooperative PvE mode has been scrapped. That\'s despite promising for years… [+1604 chars]', 'https://www.pushsquare.com/news/2023/05/overwatch-2-fans-cant-believe-what-blizzard-has-done-to-ps5-ps4-sequels-promised-co-op-mode', 'https://images.pushsquare.com/17ccedb04c762/1280x720.jpg', 'technology', '2023-05-17T02:00:00Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(88, 50, 62, 'us', 'Instagram Adds GIFs in Comments - Social Media Today', 'A long-awaited update for IG.', 'This is either an exciting or annoying update, depending on your personal perspective.\r\nToday, in a Broadcast Channels chat with Meta CEO Mark Zuckerberg, Instagram chief Adam Mosseri announced that … [+1118 chars]', 'https://www.socialmediatoday.com/news/instagram-adds-gifs-in-comments/650462/', 'https://www.socialmediatoday.com/imgproxy/e-734c3Rqw3yxB2aZ4TWRJeVcsXVLH5Iee9v-oii5FM/g:ce/rs:fill:770:435:0/bG9jYWw6Ly8vZGl2ZWltYWdlL2luc3RhZ3JhbV9naWZzX2luX2NvbW1lbnRzLnBuZw.png', 'technology', '2023-05-17T01:04:11Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(89, 51, 63, 'us', 'Malware turns home routers into proxies for Chinese state-sponsored hackers - Ars Technica', 'Following in the footsteps of VPNFilter, new firmware obscures hackers\' endpoints.', '70 with \r\nResearchers on Tuesday unveiled a major discoverymalicious firmware that can wrangle a wide range of residential and small office routers into a network that stealthily relays traffic to co… [+3475 chars]', 'https://arstechnica.com/information-technology/2023/05/malware-turns-home-routers-into-proxies-for-chinese-state-sponsored-hackers/', 'https://cdn.arstechnica.net/wp-content/uploads/2020/10/malware-760x380.jpg', 'technology', '2023-05-17T00:25:09Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(90, 52, 63, 'us', 'How to pre-order the Pixel Fold and get a Pixel Watch for free - Android Authority', 'The Google Pixel Fold pre-order period is now live. Find out how to do it, how much you can get for your old phone, and more.', 'Google may have arrived late to the foldable party, but it looks to have been worth the wait. The Google Pixel Fold was announced at Google I/O last week and it appears to be a polished, if pricey, n… [+5570 chars]', 'https://www.androidauthority.com/pixel-fold-pre-order-3325399/', 'https://www.androidauthority.com/wp-content/uploads/2023/05/Google-Pixel-Fold-on-hand-1.jpg', 'technology', '2023-05-16T23:08:51Z', 'newsapi.org', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(91, 53, 64, 'us', 'Steam dabbling with 90-minute game trials, starting with Dead Space remake - Eurogamer.net', 'Valve has quietly introduced 90-minute game trials to Steam, with the feature making its debut in conjunction with EA\'s…', 'Valve has quietly introduced 90-minute game trials to Steam, with the feature making its debut in conjunction with EA\'s Dead Space remake.\r\nAccessible via the Dead Space remake\'s Steam page, the new … [+1379 chars]', 'https://www.eurogamer.net/steam-dabbling-with-90-minute-game-trials-starting-with-eas-dead-space-remake', 'https://assetsio.reedpopcdn.com/Dead-Space-PC-Site.jpg?width=1200&height=630&fit=crop&enable=upscale&auto=webp', 'technology', '2023-05-16T22:51:33Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(92, 53, 65, 'us', 'Google\'s newest A.I. model uses nearly five times more text data for training than its predecessor - CNBC', 'In announcing its PaLM 2 large language model, Google neglected to say how much training data was used for its most advanced LLM.', 'Google\'s new large language model, which the company announced last week, uses almost five times as much training data as its predecessor from 2022, allowing its to perform more advanced coding, math… [+3669 chars]', 'https://www.cnbc.com/2023/05/16/googles-palm-2-uses-nearly-five-times-more-text-data-than-predecessor.html', 'https://image.cnbcfm.com/api/v1/image/107239360-1683754310776-gettyimages-1253650136-GOOGLE_DEVELOPERS.jpeg?v=1684276802&w=1920&h=1080', 'technology', '2023-05-16T22:40:02Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(93, 53, 66, 'us', 'Blizzard \'Confident\' Diablo IV Won\'t Be Broken At Launch - Kotaku', 'The Overwatch 2 developer is feeling good that its next big ARPG will work come June 6', 'Players are more nervous than ever these days about games launching in poor states. And with a not-so-great history of busted Diablo launches, Blizzard knows a lot of people are worried that its upco… [+3354 chars]', 'https://kotaku.com/diablo-4-launch-release-day-servers-account-necromancer-1850443293', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/6e7140dcba1e2271e3f296a94c4ae2c8.jpg', 'technology', '2023-05-16T22:40:00Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(94, 54, 67, 'us', 'ChatGPT Adds Web Browsing Feature to Rival Google Bard and Microsoft Bing - Decrypt', 'ChatGPT has one less boundary. OpenAI\'s model can now access the internet—just like Google’s new Bard and Microsoft Bing AI.', 'OpenAI recently leveled the playing field in the realm of artificial intelligence (AI) chatbots with a notable update to its ChatGPT model. Whats new? Internet connectivity. Previously, this was a di… [+2915 chars]', 'https://decrypt.co/140369/chatgpt-web-browsing-google-bard-microsoft-bing', 'https://img.decrypt.co/insecure/rs:fill:1024:512:1:0/plain/https://cdn.decrypt.co/wp-content/uploads/2023/05/Leonardo_Diffusion_AI_robot_discovering_the_internet_futuristi_0-gID_7.png@png', 'technology', '2023-05-16T21:59:53Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(95, 54, 67, 'us', 'Sega Sounds Like It\'s Jumping On The $70 Game Bandwagon - Kotaku', 'The Japanese publisher says it’s looking at raising its prices', 'The shift to $70 games for the next-gen consoles has been slow but steady, and another major publisher could soon be making the jump. Sega said in its latest earnings report that its currently review… [+1884 chars]', 'https://kotaku.com/sega-sonic-yakuza-like-a-dragon-8-70-game-prices-1850443102', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/d4cee1b56eacb82d845a117f856bc649.jpg', 'technology', '2023-05-16T21:29:02Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(96, 54, 68, 'us', 'Apple details upcoming AI-driven iOS 17 accessibility features - Ars Technica', 'You\'ll be able to create an AI voice for yourself and more.', '31 with \r\n<ul><li>\r\n Apple plans to roll out new accessibility features to its devices in iOS 17. \r\n</li><li>\r\n This is what the Photos app looks like in Assistive Access mode. \r\n</li></ul>\r\nAround t… [+2117 chars]', 'https://arstechnica.com/gadgets/2023/05/apple-details-upcoming-ai-driven-ios-17-accessibility-features/', 'https://cdn.arstechnica.net/wp-content/uploads/2023/05/Apple-accessibility-iPad-iPhone-14-Pro-Max-Home-Screen-760x380.jpg', 'technology', '2023-05-16T21:11:44Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(97, 55, 69, 'us', 'Crowd control puzzler Humanity is out now - Rock Paper Shotgun', 'Humanity, a puzzle game published by the maker of Rez and Tetris Effect, about steering crowds around abstract levels, is out now.', 'Humanity has been released. Not from our inevitable march towards eternal slumber, but the puzzle game wahey. It\'s being published by Tetsuya Mizuguchi\'s Enhance and it seems shot through with the sa… [+1299 chars]', 'https://www.rockpapershotgun.com/crowd-control-puzzler-humanity-is-out-now', 'https://assetsio.reedpopcdn.com/humanity-header.jpg?width=1200&height=630&fit=crop&enable=upscale&auto=webp', 'technology', '2023-05-16T20:47:25Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(98, 56, 70, 'us', 'God of War creator calls Tears of the Kingdom ‘bland’ and ‘old-looking’ - Dexerto', 'God of War creator David Jaffe has blasted Tears of the Kingdom for its \'bland\' and \'old-looking\' graphics.', 'God of War creator David Jaffe has slammed The Legend of Zelda: Tears of the Kingdom for its old-looking graphics. \r\nThe Breath of the Wild sequel has earned excellent reviews from both fans and crit… [+2292 chars]', 'https://www.dexerto.com/legend-of-zelda/god-of-war-creator-david-jaffe-slams-tears-of-the-kingdom-bland-2147096/', 'https://editors.dexerto.com/wp-content/uploads/2023/05/10/Copy-of-dexerto-feature-images-with-correct-dimensions-30.jpg', 'technology', '2023-05-16T18:35:09Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(99, 56, 71, 'us', 'Microsoft researchers say GPT-4 shows \'sparks\' of human-level performance - Fox Business', 'Researchers at Microsoft released a paper that claims GPT-4 is part of a new cohort of large language models that show more general intelligence than previous AI models.', 'Microsoft researchers recently released a paper that claims artificial intelligence technology has exhibited ability that is \"strikingly close to human-level performance.\" \r\nThe 155-page work was pub… [+5731 chars]', 'https://www.foxbusiness.com/technology/microsoft-researchers-gpt4-sparks-human-level-performance', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2023/01/0/0/Microsoft-2-1.jpg?ve=1&tl=1', 'technology', '2023-05-16T18:21:26Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(100, 57, 72, 'us', 'Telly, the ‘free’ smart TV with ads, has privacy policy red flags - TechCrunch', 'The smart television startup left behind annotations in its company\'s privacy policy that raise red flags about its data practices.', 'Yesterday, we looked at a new hardware startup called Telly that’s giving away half a million of its new smart televisions for free. The catch is that the 55-inch smart television is fitted with a se… [+4853 chars]', 'https://techcrunch.com/2023/05/16/telly-free-smart-tv-privacy-policy/', 'https://techcrunch.com/wp-content/uploads/2023/05/pluto-ads-tv-free-telly.jpg?resize=1200,792', 'technology', '2023-05-16T18:20:32Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(101, 57, 73, 'us', 'Ubisoft Intends to Assign Even More Developers to Assassin\'s Creed Games - Push Square', 'French firm doubles down', 'Ubisoft, one of the most prolific publishers in the industry, has dried up of late thats probably fair to say, after a year where it barely released anything of note. Things should pick up later this… [+1729 chars]', 'https://www.pushsquare.com/news/2023/05/ubisoft-intends-to-assign-even-more-developers-to-assassins-creed-games', 'https://images.pushsquare.com/c3596d1fcf3a2/1280x720.jpg', 'technology', '2023-05-16T18:15:00Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(102, 57, 74, 'us', 'Deal Alert: Save Up to 40% Off These Razer Limited Edition Xbox Series X|S Boba Fett and Captain America Wireless Controllers - IGN', 'comes with matching themed magnetic charging stands', 'Here\'s a rare deal on a pair of Xbox controllers you don\'t see every day. Amazon is offering the Razer Limited Edition Xbox Series X wireless controllers in both Boba Fett and Captain America themes … [+1519 chars]', 'https://www.ign.com/articles/deal-alert-razer-limited-edition-xbox-series-x-s-boba-fett-and-captain-america-wireless-controllers', 'https://assets-prd.ignimgs.com/2023/05/16/razercontrollers-1684257915743.jpg?width=1280', 'technology', '2023-05-16T17:45:28Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(103, 58, 75, 'us', 'Game developers are creating new options for people with phobias - Axios', NULL, NULL, 'https://www.axios.com/2023/05/15/video-games-phobias', NULL, 'technology', '2023-05-16T17:36:28Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(104, 59, 76, 'us', 'The Galaxy S23 and XCover6 Pro join Samsung\'s Tactical Edition lineup - Android Central', 'The military in mind: tough, intelligent, and secure.', '<ul><li>Samsung introduces two new phones: the Galaxy S23 and the XCover6 Pro to its Tactical Edition portfolio.</li><li>TE devices are aimed at military personnel with custom-built software and feat… [+3125 chars]', 'https://www.androidcentral.com/phones/galaxy-s23-xcover6-pro-tactical-edition', 'https://cdn.mos.cms.futurecdn.net/VsZawHiDiXaJxs4QCTw8yi-1200-80.png', 'technology', '2023-05-16T17:34:55Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(105, 59, 77, 'us', 'Deals: New Discover Samsung Event Offers Savings on Monitors and TVs This Week Only - MacRumors', 'A new Discover Samsung event has kicked off this week on the retailer\'s website, discounting a wide selection of monitors, TVs, and more home...', 'A new Discover Samsung event has kicked off this week on the retailer\'s website, discounting a wide selection of monitors, TVs, and more home electronics for a limited time. Specifically, this sale r… [+2124 chars]', 'https://www.macrumors.com/2023/05/16/deals-new-discover-samsung-event/', 'https://images.macrumors.com/t/Mm0hGnjYP-OWHhlUbL5a6azXvuU=/2500x/article-new/2023/05/M80B-Smart-Monitor-Deals-Feature.jpg', 'technology', '2023-05-16T17:03:55Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(106, 59, 78, 'us', 'Motorola Razr event confirmed for June 1 - 9to5Google', 'Motorola just confirmed a June 1 event for new Razr foldables, which have leaked extensively in the past few weeks.', 'The Razr is coming. After a ton of leaks in recent weeks regarding Motorolas new Razr 40 series of foldables, the company has just posted a teaser that hints at two devices and confirms a June 1 laun… [+916 chars]', 'https://9to5google.com/2023/05/16/motorola-razr-2023-event-confirmed/', 'https://i0.wp.com/9to5google.com/wp-content/uploads/sites/4/2023/05/motorola-razr-40-ultra-ev-12.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', 'technology', '2023-05-16T16:42:00Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(107, 59, 79, 'us', 'Samsung\'s leaked Galaxy Z Fold 5 and Flip 5 launch date is sounding more and more likely - Android Police', 'Previous leaks already suggested an earlier-than-usual release date for the two Galaxy Z foldables', 'It’s only been a few months since Samsung’s big Galaxy S23 launch earlier this year, and we’re already close to the company\'s second major event of 2023. Samsung is expected to refresh its Galaxy Z f… [+2151 chars]', 'https://www.androidpolice.com/samsung-galaxy-z-fold-5-flip-5-launch-date-leak/', 'https://static1.anpoimages.com/wordpress/wp-content/uploads/2020/06/29/Galaxy-Z-Flip-fold-maco-hero-scaled.jpg', 'technology', '2023-05-16T16:38:00Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(108, 60, 80, 'us', 'Amazon Is Offering Big Discounts On Samsung Gaming Monitors - GameSpot', 'Whether you want something ultra-affordable or ultra-luxurious, Amazon is discounting a wide range of Samsung monitors right now.', 'Samsung is currently running a huge promotion on its own website, but it looks like Amazon didnt want to be left out of the fun. Head over to Amazon\'s deals page right now, and youll find tons of gre… [+1280 chars]', 'https://www.gamespot.com/articles/amazon-is-offering-big-discounts-on-samsung-gaming-monitors/1100-6514224/', 'https://www.gamespot.com/a/uploads/screen_kubrick/1702/17023653/4138591-samsungmonitor%281%29.jpg', 'technology', '2023-05-16T16:35:47Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(109, 61, 81, 'us', 'Deals: M2 Mac mini starts from $500, Samsung M8 AirPlay 2 monitor $471, Beats Studio Buds $94, more - 9to5Mac', 'Tuesday is ushering in a fresh batch of discounts, and 9to5Toys has done the work to get the best of...', 'Tuesday is ushering in a fresh batch of discounts, and 9to5Toys has done the work to get the best of the best all rounded up below. On tap today, we have all-time lows on Apples latest M2 Mac mini th… [+6427 chars]', 'https://9to5mac.com/2023/05/16/deals-m2-mac-mini-beats-studio-buds-more/', 'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2023/03/Mac-mini-M2-Pro-four-Thunderbolt-3-ports.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', 'technology', '2023-05-16T15:47:00Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(110, 62, 82, 'us', 'Amazon\'s second attempt at making one MMO to rule them all - GamesIndustry.biz', 'Sign up for the GI Daily here to get the biggest news straight to your inbox Stop us if you\'ve heard this one before: A…', 'Sign up for the GI Daily here to get the biggest news straight to your inbox\r\nStop us if you\'ve heard this one before: Amazon is making an MMO based on The Lord of the Rings. \r\nIf that sounds familia… [+10499 chars]', 'https://www.gamesindustry.biz/amazons-second-attempt-at-making-one-mmo-to-rule-them-all', 'https://assetsio.reedpopcdn.com/lord-of-the-rings-the-one-ring.jpg?width=1200&height=630&fit=crop&enable=upscale&auto=webp', 'technology', '2023-05-16T15:10:21Z', 'newsapi.org', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(111, 62, 83, 'us', 'Google\'s Pixel 6A is $100 off - The Verge', 'Google’s Pixel 6A is $100 off. You can also save money on the Ember Smart Mug 2, the Apple Watch Ultra, Samsung’s Galaxy Z Fold 4, and the Tribit StormBox Micro portable Bluetooth speaker.', 'Googles Pixel 6A is $100 off\r\nGoogles Pixel 6A is $100 off\r\n / Plus, we found deals on the self-heating Ember Mug 2, the Apple Watch Ultra, and a handlebar-ready Bluetooth speaker from Tribit.\r\nByShe… [+6010 chars]', 'https://www.theverge.com/2023/5/16/23723954/google-pixel-6a-ember-smart-mug-apple-watch-ultra-deal-sale', 'https://cdn.vox-cdn.com/thumbor/6-ec3-WHBse7C7aUFu8--_REp-g=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/23795420/vpavic_220708_5335_0001.jpg', 'technology', '2023-05-16T15:06:36Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(112, 62, 84, 'us', 'Hori Split Pad Pro Zelda: Tears Of The Kingdom Edition Preorders Are Back In Stock - GameSpot', 'The Zelda-branded edition of the Hori Nintendo Switch Split Pad Pro releases on August 31 for $60.', 'If you\'re worried about wearing out your Joy-Cons playing The Legend of Zelda: Tears of the Kingdom over the next couple months, never fear. Hori has you covered with this gorgeous Tears of Kingdom-t… [+1649 chars]', 'https://www.gamespot.com/articles/hori-split-pad-pro-zelda-tears-of-the-kingdom-edition-preorders-are-back-in-stock/1100-6514092/', 'https://www.gamespot.com/a/uploads/screen_kubrick/1757/17577455/4136893-zeldatearsofthekingdomhorisplitpadpro.jpg', 'technology', '2023-05-16T15:04:52Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(113, 62, 85, 'us', 'WhatsApp users joke new Chat Lock feature is \'tailored for cheating\' - New York Post ', 'WhatsApp just made getting away with cheating easier and finding out your partner is cheating harder.', 'WhatsApp just made getting away with cheating easier and finding out your partner is cheating harder.\r\nThe messaging app owned by Meta is launching a “Chat Lock” feature that will allow users to keep… [+2591 chars]', 'https://nypost.com/2023/05/16/whatsapp-users-joke-chat-lock-feature-tailored-for-cheating/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/NYPICHPDPICT000011166642.jpg?quality=75&strip=all&w=1024', 'technology', '2023-05-16T15:01:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(114, 63, 86, 'us', 'Microsoft Unveils New Mobile-First Experiences For Bing & Edge - Search Engine Journal', 'Microsoft enhances the Bing mobile experience, integrates cross-platform chats, and adds innovative features to SwiftKey and Skype.', 'In an announcement, Divya Kumar, Global Head of Marketing at Microsoft, reveals enhancements coming to the mobile versions of Bing and Edge.\r\nFeatures shown at the beginning of May are getting implem… [+2791 chars]', 'https://www.searchenginejournal.com/microsoft-unveils-new-mobile-first-experiences-for-bing-edge/487048/', 'https://www.searchenginejournal.com/wp-content/uploads/2023/05/microsoft-bing-edge-mobile-646395b954bb2-sej.png', 'technology', '2023-05-16T15:00:27Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(115, 64, 87, 'us', 'Razer Blade 15 gaming laptop with an RTX 3070 Ti is $1,000 off - Digital Trends', 'The Razer Blade 15, with a 15.6-inch Full HD display and Nvidia GeForce RTX 3070 Ti graphics card, is available from Razer for $2,000 after a $1,000 discount.', 'If you’re on the hunt for the top gaming laptop deals that money can buy, you should turn your attention towards Razer’s $1,000 discount for the Razer Blade 15. Instead of $3,000, you’ll be paying $2… [+1814 chars]', 'https://www.digitaltrends.com/computing/razer-blade-15-gaming-laptop-deal-razer-may-2023/', 'https://www.digitaltrends.com/wp-content/uploads/2022/09/razer-blade-15-2022.jpg?resize=1200%2C630&p=1', 'technology', '2023-05-16T15:00:06Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(116, 64, 88, 'us', 'Splatoon 3 \'Sizzle Season 2023\' Update Revealed - New Weapons, Stages, Game Modes And More - Nintendo Life', 'Splatting onto Switch next month', '@Dylansuxx Now that\'s interesting. \"Most games do minor upgrades when releasing a new game\" so we are to accept that, buy the same thing a couple of times, and any voice saying that maybe we could ex… [+2350 chars]', 'https://www.nintendolife.com/news/2023/05/splatoon-3-sizzle-season-2023-update-revealed-new-weapons-stages-game-modes-and-more', 'https://images.nintendolife.com/43a33965b1afa/1280x720.jpg', 'technology', '2023-05-16T15:00:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(117, 65, 88, 'us', 'Samsung Enhances Galaxy Buds 2 Pro for Clearer Hearing - CNET', 'The updated feature promises finely tuned sound settings and better clarity.', 'Samsung is updating the Ambient Sound features in its Galaxy Buds 2 Pro earbuds for those who are hard of hearing. On Tuesday, the company said the enhanced features will be available through softwar… [+1653 chars]', 'https://www.cnet.com/tech/mobile/samsung-enhances-galaxy-buds-2-pro-for-clearer-hearing/', 'https://www.cnet.com/a/img/resize/a4f33386feb72d715962806df7eb4260c1aedf7e/hub/2022/08/09/38d1b8e6-98cc-4eab-8447-cbd3d75f26eb/samsung-galaxy-buds-pro-2-9796.jpg?auto=webp&fit=crop&height=675&width=1200', 'technology', '2023-05-16T14:48:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(118, 65, 89, 'us', 'Apple Music and Apple Maps Launching New Concert Features Today - MacRumors', 'Apple today announced new concert discovery features for Apple Music and Apple Maps that will be rolling out around the world beginning today.  ...', 'Apple today announced new concert discovery features for Apple Music and Apple Maps that will be rolling out around the world beginning today.\r\nApple Music is getting a new Set Lists page that spotli… [+580 chars]', 'https://www.macrumors.com/2023/05/16/apple-music-apple-maps-concert-features/', 'https://images.macrumors.com/t/yl0tUWwYXhayN8jrJl4GWn6vUZo=/1960x/article-new/2023/05/Concert-Discovery-Feature-Feature.jpg', 'technology', '2023-05-16T14:28:52Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(119, 66, 90, 'us', '‘RIP Mineplex’ trends after Minecraft minigame server shuts down forever - Opoyi', '“RIP Mineplex” started trending on Twitter after the Minecraft minigame server announced on Discord that it will be permanently shutting shop. Mineplex admin, who goes by the username Dean wrote posted an extensive announcement on the platform informing every…', '“RIP Mineplex” started trending on Twitter after the Minecraft minigame server announced on Discord that it will be permanently shutting shop. \r\nMineplex admin, who goes by the username Dean wrote po… [+3209 chars]', 'https://opoyi.com/technology/rip-mineplex-trends-after-minecraft-minigame-server-shuts-down-forever/', 'https://opoyi.com/wp-content/uploads/2023/05/Screenshot-2023-05-16-193812.png', 'technology', '2023-05-16T14:16:23Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(120, 66, 91, 'us', '1Password passkey support launches on June 6 – check out the video - 9to5Mac', 'We’ve been waiting for 1Password passkey support since last November, when the company first announced plans to include it. We...', 'We’ve been waiting for 1Password passkey support since last November, when the company first announced plans to include it. We learned a little more in an exclusive interview with the company’s CEO e… [+2166 chars]', 'https://9to5mac.com/2023/05/16/1password-passkeys-2/', 'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2023/05/1Password-passkeys.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1', 'technology', '2023-05-16T13:31:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(121, 67, 92, 'us', 'HP puts Raptor Lake chips in its business-class mini PCs - Liliputing', 'HP puts Raptor Lake chips in its business-class mini PCs', 'HP has announced a handful of souped-up additions to its line of compact enterprise mini PCs. The HP Pro Mini 400 G9, Elite Mini 600 G9, Elite Mini 800 G9 and Chromebox Enterprise G4 are all getting … [+2915 chars]', 'https://liliputing.com/hp-puts-raptor-lake-chips-in-its-business-class-mini-pcs/', 'https://liliputing.com/wp-content/uploads/2023/05/HP-Elite-Mini-600-G9-Desktop-PC_DualFront-780x439.png', 'technology', '2023-05-16T12:00:31Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(122, 67, 93, 'us', 'Apple\'s Tim Cook Takes a Risk on Mixed Reality Headsets and the Metaverse - Bloomberg', 'Just as everyone seems to be tiring of the metaverse, Steve Jobs’ successor comes up with the company’s first mixed reality headset.', 'People like to point out that Steve Jobs, remarkable as he was, didn’t actually invent the smartphone. Nor did he invent the home computer, the MP3 player or the tablet. What he did, of course, was c… [+557 chars]', 'https://www.bloomberg.com/opinion/articles/2023-05-16/apple-s-tim-cook-takes-a-risk-on-mixed-reality-headsets-and-the-metaverse', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iKD._QnlxKUI/v1/1200x860.jpg', 'technology', '2023-05-16T11:57:30Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(123, 67, 93, 'us', 'Apple Reportedly Still Planning High-End and Low-End Versions of Second-Generation Headset in 2025 - MacRumors', 'Apple\'s second-generation AR/VR headset will be offered in high-end and low-end versions and shipments are expected to be around ten times those...', 'Apple\'s second-generation AR/VR headset will be offered in high-end and low-end versions and shipments are expected to be around ten times those of the first generation model, according to Apple indu… [+1600 chars]', 'https://www.macrumors.com/2023/05/16/apple-second-gen-headset-low-high-end/', 'https://images.macrumors.com/t/jRbk8X392AuZN47LhGN9Sgb4Omc=/1600x/article-new/2023/04/apple-headset-lens-render-by-marcus-kane.jpg', 'technology', '2023-05-16T11:41:01Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(124, 67, 93, 'us', 'Bard\'s big Google I/O updates are rolling out - Android Police', 'Export to Google Docs and Gmail, dark mode, more languages, and enhancements to summaries', 'Google’s latest developer keynote, Google I/O 2023, was chock-full of AI announcements, with the company teasing some much-needed updates to its generative AI chatbot Bard. With Google I/O 2023 come … [+2688 chars]', 'https://www.androidpolice.com/bard-big-google-io-update-rolling-out/', 'https://static1.anpoimages.com/wordpress/wp-content/uploads/2023/05/google-bard-hero-0-5x.jpg', 'technology', '2023-05-16T11:34:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(125, 68, 94, 'us', 'Spotify\'s AI DJ Brings a Personalized Listening Experience to Fans in the UK and Ireland — Spotify - For the Record', 'In February we unveiled DJ, a personalized AI guide that understands you and your music taste so well that it does the choosing for you. Now we’re excited to start rolling out DJ in beta to Premium users across the U.K. and Ireland.  At its core, DJ is all ab…', 'In February we unveiled DJ, a personalized AI guide that understands you and your music taste so well that it does the choosing for you. Now were excited to start rolling out DJ in beta to Premium us… [+2402 chars]', 'http://pr-newsroom-wp.appspot.com/2023-05-16/ai-dj-uk-ireland-spotify-personalization/', 'https://storage.googleapis.com/pr-newsroom-wp/1/2023/03/AI-DJ-1024x583.png', 'technology', '2023-05-16T07:03:56Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(126, 69, 95, 'us', 'AI may issue harsher punishments, severe judgments than humans: Study - Fox News', 'Artificial intelligence systems are more harsh on people who violated hypothetical rules or policies than judgement calls from humans, a study from MIT researchers shows.', 'Artificial intelligence fails to match humans in judgment calls and is more prone to issue harsher penalties and punishments for rule breakers, according to a new study from MIT researchers.\r\nThe fin… [+5425 chars]', 'https://www.foxnews.com/tech/ai-may-issue-harsher-punishments-severe-judgments-than-humans-study', 'https://static.foxnews.com/foxnews.com/content/uploads/2023/05/Critics-say-AI-can-threaten-humanity-but-heres-how-ChatGPT-thinks-the-world-could-end.jpg', 'technology', '2023-05-16T06:00:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(127, 70, 96, 'us', 'Game Pass loses another five Xbox games in May - TrueAchievements', 'The second slate of games leaving Xbox Game Pass and PC Game Pass in May has been revealed. Five games will leave the service, including Lawn Mowing Simulator.', 'Lawn Mowing Simulator, Evil Genius 2: World Domination, Floppy Knights, Europa Universalis IV (Windows), and FIFA 21 are down to leave Game Pass on Wednesday, May 31.Lawn Mowing Simulator\r\nEvil Geniu… [+1459 chars]', 'https://www.trueachievements.com/n53804/games-leaving-xbox-game-pass-may-2023', 'https://www.trueachievements.com/imgs/139172/game-pass-games-leaving-soon--may-2023.jpg', 'technology', '2023-05-16T05:45:32Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(128, 71, 97, 'us', 'Forget The New MacBook Pro, Apple Has Something Much Better - Forbes', 'If you are looking at the latest MacBook Pro, you should think again. There\'s a much better hiding on Apple\'s website.', 'Updated May 15th: article originally posted May 13th.\r\nApplesMacBook Air is a great all-round consumer laptop, and its Apple Silicon chipset offers more power than the equivalent Intel-based model co… [+3536 chars]', 'https://www.forbes.com/sites/ewanspence/2023/05/15/apple-macbook-pro-13-14-16-macbook-air-macos-laptop-discount/', 'https://imageio.forbes.com/specials-images/imageserve/645fa4be94ec3fa4bbb0d7c7/0x0.jpg?format=jpg&width=1200', 'technology', '2023-05-15T21:33:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(129, 71, 97, 'us', 'Microsoft Completes Rollout of Basic iMessage Support on Windows 11 - MacRumors', 'Microsoft today announced it has completed its rollout of iPhone support for its Phone Link app on Windows 11, as spotted by The Verge.   With the...', 'Microsoft today announced it has completed its rollout of iPhone support for its Phone Link app on Windows 11, as spotted by The Verge.\r\nWith the Phone Link app for Windows 11 and the Link to Windows… [+857 chars]', 'https://www.macrumors.com/2023/05/15/microsoft-completes-imessage-phone-link-rollout/', 'https://images.macrumors.com/t/KschyoDO7smA39MaRhdnQmM7xG0=/1600x/article-new/2023/02/Windows-11-Phone-Link-iMessage.jpeg', 'technology', '2023-05-15T20:19:34Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(130, 72, 98, 'us', 'The EU will require Microsoft to bring Activision games to its cloud competitors if the buyout is successful - Gamesradar', 'The European Commission has approved Microsoft\'s Activision deal, but there are conditions', 'Microsoft will be required to bring Activision Blizzard\'s most popular games to competing cloud gaming platforms if the acquisition of the latter by the former is ultimately successful.\r\nToday, the E… [+1556 chars]', 'https://www.gamesradar.com/the-eu-will-require-microsoft-to-bring-activision-games-to-its-cloud-competitors-if-the-buyout-is-successful/', 'https://cdn.mos.cms.futurecdn.net/kBu7nPCccKcVXtwBE4W9uF-1200-80.jpg', 'technology', '2023-05-15T18:00:00Z', 'newsapi.org', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(131, NULL, NULL, NULL, 'House speaker McCarthy says ‘I see the path’ to debt ceiling deal with Democrats – live', NULL, NULL, NULL, NULL, 'us-news', '2023-05-18T16:22:37Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(132, NULL, NULL, NULL, 'US PGA Championship 2023: first round begins after frost delay – live', NULL, NULL, NULL, NULL, 'sport', '2023-05-18T16:22:17Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(133, NULL, NULL, NULL, 'Russia-Ukraine war live: Storm Shadow missiles used in Ukraine, says UK defence minister', NULL, NULL, NULL, NULL, 'world', '2023-05-18T16:20:45Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(134, NULL, NULL, NULL, 'Surrey v Kent, Notts v Essex and more: county cricket – live', NULL, NULL, NULL, NULL, 'sport', '2023-05-18T16:14:52Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(135, NULL, NULL, NULL, 'Events marking Queen Elizabeth’s death cost the public £161.7m, figures show', NULL, NULL, NULL, NULL, 'uk-news', '2023-05-18T16:10:43Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(136, NULL, NULL, NULL, 'The Foxes claims Dante Stakes to offer lowly Leicester chance of Derby joy', NULL, NULL, NULL, NULL, 'sport', '2023-05-18T16:09:29Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(137, NULL, NULL, NULL, 'Party supplies firm founded by the Middletons sold after collapse', NULL, NULL, NULL, NULL, 'business', '2023-05-18T16:03:06Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(138, NULL, NULL, NULL, 'Youth review – heart-stopping stories in China’s sweatshop capital', NULL, NULL, NULL, NULL, 'film', '2023-05-18T16:02:03Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(139, NULL, NULL, NULL, 'Kemi Badenoch says global carmakers’ UK concerns ‘nothing to do with Brexit’ – as it happened', NULL, NULL, NULL, NULL, 'politics', '2023-05-18T16:02:00Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29'),
(140, NULL, NULL, NULL, 'Universal ‘chasing arrows’ recycling symbol could be dumped in US', NULL, NULL, NULL, NULL, 'environment', '2023-05-18T16:01:53Z', 'guardian', '2023-05-18 11:24:29', '2023-05-18 11:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gina Heeb, Ryan Dezember, Andrew Ackerman, Matt Grossman, Chelsey Dulaney, Gunjan Banerji, WSJ Staff, Eric Wallerstein, Vicky Ge Huang, Patricia Kowsmann, Weilun Soon, Margot Patrick, Megumi Fujikawa', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(2, 'https://www.facebook.com/bbcnews', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(3, 'Dani Romero', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(4, 'Jennifer Maas', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(5, 'Kate Dore, CFP®', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(6, 'Ariel Zilber', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(7, 'Daniella Genovese', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(8, 'Joe Toppe', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(9, 'Sankalp Phartiyal', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(10, 'Kelly McCarthy', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(11, 'Jake McKee', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(12, 'Ryan Browne', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(13, 'Augusta Saraiva', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(14, 'Tomi Kilgore', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(15, 'Ashley Capoot', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(16, 'Clare Duffy', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(17, 'Tsvetana Paraskova', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(18, 'William Wilkes', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(19, 'Will Canny, Brandy Betz', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(20, 'http://www.facebook.com/kitconews', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(21, 'Investor\'s Business Daily', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(22, 'Diana Olick', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(23, 'Lizzie Kane', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(24, 'Ryan Pickrell', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(25, 'Brooke DiPalma', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(26, 'Palm Beach Post', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(27, 'Al Jazeera', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(28, 'Nicholas Gordon', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(29, ', USA TODAY', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(30, 'William Suberg', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(31, 'Reuters', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(32, 'Victor Nava', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(33, 'Jihye Lee', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(34, 'Richard Elliot', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(35, 'Cathy Chan', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(36, 'Chris Williams', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(37, 'Breck Dumas', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(38, 'Matt Marshall', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(39, 'Sabrina Karl', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(40, 'Daniel Gilbert', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(41, 'WYATTE GRANTHAM-PHILIPS AP Business Writer', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(42, 'Laura Cole, wired.com', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(43, 'Abner Li', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(44, 'Ethan Gach', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(45, 'Andrew Webster', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(46, 'Annie Palmer', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(47, 'Chris Welch', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(48, 'Scooter Doll', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(49, 'Kyle Barr', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(50, 'George Dvorsky', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(51, 'Tim Hardwick', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(52, 'Anthony Wood', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(53, 'IGN', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(54, 'Jonathan Wells', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(55, 'Jess Weatherbed', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(56, 'Chris Scullion', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(57, 'Lily Hay Newman', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(58, 'Manuel Vonau', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(59, 'Timi Cantisano', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(60, 'Khayl Adam', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(61, 'Liam Doolan', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(62, 'Andrew Hutchinson', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(63, 'Dan Goodin', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(64, 'Matt Wales', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(65, 'Jennifer Elias', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(66, 'Zack Zwiezen', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(67, 'Jose Antonio Lanz', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(68, 'Samuel Axon', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(69, 'Graham Smith', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(70, 'Cassidy Stephenson', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(71, 'Julia Musto', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(72, 'Zack Whittaker', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(73, 'Sammy Barker', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(74, 'Eric Song', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(75, 'Axios', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(76, 'Nickolas Diaz', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(77, 'Mitchel Broussard', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(78, 'Ben Schoon', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(79, 'Karandeep Singh', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(80, 'Jon Bitner', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(81, 'Rikka Altland', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(82, 'James Batchelor', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(83, 'Sheena Vasani', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(84, 'Phil Owen', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(85, 'Brooke Steinberg', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(86, 'Matt G. Southern', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(87, 'Aaron Mamiit', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(88, 'Jim Norman', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(89, 'Joe Rossignol', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(90, 'Pritha Paul', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(91, 'Ben Lovejoy', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(92, 'Lee Mathews', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(93, 'Dave Lee', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(94, 'Adrian.Covert@groupsjr.com', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(95, 'Emma Colton', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(96, 'Sean Carey', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(97, 'Ewan Spence', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(98, 'Jordan Gerblick', '2023-05-18 10:54:07', '2023-05-18 10:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_18_145948_create_articles_table', 1),
(11, '2023_05_18_151825_create_sources_table', 1),
(12, '2023_05_18_151854_create_authors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'The Wall Street Journal', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(2, 'BBC News', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(3, 'Yahoo Entertainment', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(4, 'Variety', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(5, 'CNBC', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(6, 'New York Post', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(7, 'Healthcare IT News', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(8, 'Fox Business', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(9, 'Bloomberg', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(10, 'GMA', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(11, 'Hospitality Net', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(12, 'YouTube', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(13, 'Thepinknews.com', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(14, 'MarketWatch', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(15, 'Reuters', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(16, 'CNN', '2023-05-18 10:53:53', '2023-05-18 10:53:53'),
(17, 'OilPrice.com', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(18, 'CoinDesk', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(19, 'Kitco NEWS', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(20, 'Investor\'s Business Daily', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(21, 'Chicago Tribune', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(22, 'Virgingalactic.com', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(23, 'Business Insider', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(24, 'Palm Beach Post', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(25, 'Al Jazeera English', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(26, 'USA Today', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(27, 'Cointelegraph', '2023-05-18 10:53:54', '2023-05-18 10:53:54'),
(28, 'Astrazeneca.com', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(29, 'WSB Atlanta', '2023-05-18 10:53:55', '2023-05-18 10:53:55'),
(30, 'Above the Law', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(31, 'VentureBeat', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(32, 'Investopedia', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(33, 'The Washington Post', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(34, 'ABC News', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
(35, 'Wired', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(36, '9to5google.com', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(37, 'Kotaku', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(38, 'The Verge', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(39, 'Electrek', '2023-05-18 10:54:04', '2023-05-18 10:54:04'),
(40, 'Gizmodo.com', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(41, 'Engadget', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(42, 'MacRumors', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(43, 'IGN', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(44, 'Video Games Chronicle', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(45, 'Android Police', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(46, 'Videocardz.com', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(47, 'XDA Developers', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(48, 'Push Square', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(49, 'Nintendo Life', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(50, 'Social Media Today', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(51, 'Ars Technica', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(52, 'Android Authority', '2023-05-18 10:54:05', '2023-05-18 10:54:05'),
(53, 'Eurogamer.net', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(54, 'Decrypt', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(55, 'Rock Paper Shotgun', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(56, 'Dexerto', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(57, 'TechCrunch', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(58, 'Axios', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(59, 'Android Central', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(60, 'GameSpot', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(61, '9to5Mac', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(62, 'GamesIndustry.biz', '2023-05-18 10:54:06', '2023-05-18 10:54:06'),
(63, 'Search Engine Journal', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(64, 'Digital Trends', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(65, 'CNET', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(66, 'Opoyi.com', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(67, 'Liliputing', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(68, 'Appspot.com', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(69, 'Fox News', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(70, 'TrueAchievements', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(71, 'Forbes', '2023-05-18 10:54:07', '2023-05-18 10:54:07'),
(72, 'GamesRadar+', '2023-05-18 10:54:07', '2023-05-18 10:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
