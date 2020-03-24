-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2020 at 04:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flaskblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(20000) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'Pinaki Bhattacharjee', 'email@mail.com', 'This is a ddmo subject', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a laoreet ipsum, id mattis lorem. Cras eget purus justo. Vivamus faucibus elit id pharetra cursus. Aenean pharetra diam turpis, et cong', '2020-03-22 19:33:29'),
(2, 'Pinaki', 'pinakipb2@gmail.com', 'hii', 'hlo', '2020-03-22 19:57:37'),
(3, '1906620', 'gfdgh@ggh.jh', 'hii', '3', '2020-03-23 13:28:44'),
(4, 'yhhy', 'gfdgh@ggh.jh', 'hii', '4', '2020-03-23 13:29:54'),
(5, 'Ayush kumar', 'gfdgh@ggh.jh', 'hii', '5', '2020-03-23 13:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` varchar(20000) NOT NULL,
  `img_file` varchar(60) NOT NULL,
  `tn_img_file` varchar(60) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `tn_img_file`, `date`) VALUES
(1, 'First Post', 'first-post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'blog-post-banner.jpg', 'blog-post-thumb-1.jpg', '2020-03-23 20:08:57'),
(2, 'Second Post', 'second-post', 'Donec consequat ex nec justo elementum faucibus. Maecenas mollis sit amet enim sit amet molestie. Phasellus faucibus porta elit vitae sollicitudin. Nullam dapibus congue nisi, ac interdum urna venenatis vitae. Curabitur at laoreet augue. Integer elementum viverra ultrices. Phasellus elementum massa magna, a consequat felis malesuada ac. Donec ac bibendum magna. Aenean sed pretium elit.\r\n\r\nNunc suscipit sem ut lacus tempus interdum. Duis sed nulla metus. Mauris sit amet sapien lacus. Vivamus vitae dictum tortor. Nulla congue, quam et lacinia consequat, risus arcu tristique nibh, a pharetra dolor ligula a metus. Mauris consectetur diam quis eros posuere, vel scelerisque velit cursus. Fusce porttitor fringilla augue, eget semper massa tempor eget. Quisque sit amet tincidunt erat. Nulla condimentum tincidunt sapien in hendrerit. Ut sit amet nibh luctus, mattis ex quis, suscipit arcu. Maecenas eleifend purus ac nibh feugiat, eget dapibus libero auctor. Etiam tellus erat, laoreet gravida magna quis, dictum malesuada lorem. In hac habitasse platea dictumst.\r\n\r\nSuspendisse orci leo, maximus sed dolor quis, tincidunt sollicitudin urna. Nam tempus viverra nunc sodales gravida. Cras elementum tortor quis ex tempus tempor. Duis fringilla tempus magna, sed pulvinar dui volutpat eget. Donec a luctus nibh, dictum imperdiet nisl. Donec ac arcu bibendum, porta dolor in, tristique sem. Nam scelerisque purus eget sem egestas, pulvinar efficitur arcu condimentum. Pellentesque eleifend maximus diam, eget lobortis turpis auctor vitae. Duis in augue gravida, faucibus metus id, pulvinar dui. Fusce id nunc bibendum, pharetra augue eget, hendrerit nisi. Proin vitae velit ac dui accumsan viverra in ut ligula.\r\n\r\nNullam sagittis arcu in arcu molestie, ac tristique arcu dapibus. Duis elit odio, tincidunt quis odio dapibus, tempor laoreet ipsum. Pellentesque vel sagittis metus. Vivamus condimentum orci non magna interdum feugiat a sed ante. Nam condimentum a lectus vel interdum. Maecenas vehicula placerat libero non semper. Mauris id massa sodales, ullamcorper diam sit amet, dignissim justo. Phasellus vitae gravida lorem, quis suscipit purus. Cras ac aliquam ipsum, ac gravida sem. Praesent pellentesque risus eu ex scelerisque, sed maximus felis luctus. Phasellus aliquet malesuada congue. Donec in purus mi.\r\n\r\nEtiam mauris magna, facilisis nec nisl nec, malesuada consectetur lorem. Quisque nunc tortor, tincidunt eleifend mollis ut, sodales non odio. Maecenas velit nibh, pellentesque egestas iaculis sit amet, laoreet a turpis. Cras aliquam nisi sapien, nec tempus ipsum rutrum et. Aliquam ultricies lorem non urna cursus tincidunt. Vivamus ac dignissim massa, sit amet accumsan mi. Nam sit amet tortor id lorem ultrices imperdiet. Etiam ac interdum leo. Vivamus vitae arcu sit amet arcu tristique suscipit varius tempor elit. Quisque tempor nisi dolor. Sed at ex non erat auctor finibus non vel leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue, leo quis sollicitudin varius, lorem est sagittis urna, at facilisis enim ante ut tortor.\r\n\r\nQuisque porttitor eros vitae ante tincidunt, sit amet interdum est lobortis. Aliquam fringilla dapibus dictum. Proin condimentum lobortis luctus. In condimentum ipsum non felis pretium molestie. Proin vulputate sagittis interdum. Vivamus accumsan convallis lorem eget congue. Maecenas dictum sit amet dui eu eleifend. Duis luctus.', 'blog-post-banner.jpg', 'blog-post-thumb-2.jpg', '2020-03-23 15:21:34'),
(3, 'Third Post', 'third-post', 'Donec consequat ex nec justo elementum faucibus. Maecenas mollis sit amet enim sit amet molestie. Phasellus faucibus porta elit vitae sollicitudin. Nullam dapibus congue nisi, ac interdum urna venenatis vitae. Curabitur at laoreet augue. Integer elementum viverra ultrices. Phasellus elementum massa magna, a consequat felis malesuada ac. Donec ac bibendum magna. Aenean sed pretium elit.\r\n\r\nNunc suscipit sem ut lacus tempus interdum. Duis sed nulla metus. Mauris sit amet sapien lacus. Vivamus vitae dictum tortor. Nulla congue, quam et lacinia consequat, risus arcu tristique nibh, a pharetra dolor ligula a metus. Mauris consectetur diam quis eros posuere, vel scelerisque velit cursus. Fusce porttitor fringilla augue, eget semper massa tempor eget. Quisque sit amet tincidunt erat. Nulla condimentum tincidunt sapien in hendrerit. Ut sit amet nibh luctus, mattis ex quis, suscipit arcu. Maecenas eleifend purus ac nibh feugiat, eget dapibus libero auctor. Etiam tellus erat, laoreet gravida magna quis, dictum malesuada lorem. In hac habitasse platea dictumst.\r\n\r\nSuspendisse orci leo, maximus sed dolor quis, tincidunt sollicitudin urna. Nam tempus viverra nunc sodales gravida. Cras elementum tortor quis ex tempus tempor. Duis fringilla tempus magna, sed pulvinar dui volutpat eget. Donec a luctus nibh, dictum imperdiet nisl. Donec ac arcu bibendum, porta dolor in, tristique sem. Nam scelerisque purus eget sem egestas, pulvinar efficitur arcu condimentum. Pellentesque eleifend maximus diam, eget lobortis turpis auctor vitae. Duis in augue gravida, faucibus metus id, pulvinar dui. Fusce id nunc bibendum, pharetra augue eget, hendrerit nisi. Proin vitae velit ac dui accumsan viverra in ut ligula.\r\n\r\nNullam sagittis arcu in arcu molestie, ac tristique arcu dapibus. Duis elit odio, tincidunt quis odio dapibus, tempor laoreet ipsum. Pellentesque vel sagittis metus. Vivamus condimentum orci non magna interdum feugiat a sed ante. Nam condimentum a lectus vel interdum. Maecenas vehicula placerat libero non semper. Mauris id massa sodales, ullamcorper diam sit amet, dignissim justo. Phasellus vitae gravida lorem, quis suscipit purus. Cras ac aliquam ipsum, ac gravida sem. Praesent pellentesque risus eu ex scelerisque, sed maximus felis luctus. Phasellus aliquet malesuada congue. Donec in purus mi.\r\n\r\nEtiam mauris magna, facilisis nec nisl nec, malesuada consectetur lorem. Quisque nunc tortor, tincidunt eleifend mollis ut, sodales non odio. Maecenas velit nibh, pellentesque egestas iaculis sit amet, laoreet a turpis. Cras aliquam nisi sapien, nec tempus ipsum rutrum et. Aliquam ultricies lorem non urna cursus tincidunt. Vivamus ac dignissim massa, sit amet accumsan mi. Nam sit amet tortor id lorem ultrices imperdiet. Etiam ac interdum leo. Vivamus vitae arcu sit amet arcu tristique suscipit varius tempor elit. Quisque tempor nisi dolor. Sed at ex non erat auctor finibus non vel leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue, leo quis sollicitudin varius, lorem est sagittis urna, at facilisis enim ante ut tortor.\r\n\r\nQuisque porttitor eros vitae ante tincidunt, sit amet interdum est lobortis. Aliquam fringilla dapibus dictum. Proin condimentum lobortis luctus. In condimentum ipsum non felis pretium molestie. Proin vulputate sagittis interdum. Vivamus accumsan convallis lorem eget congue. Maecenas dictum sit amet dui eu eleifend. Duis luctus.', 'blog-post-banner.jpg', 'blog-post-thumb-3.jpg', '2020-03-23 15:40:47'),
(4, 'Fourth Post', 'fourth-post', 'Donec consequat ex nec justo elementum faucibus. Maecenas mollis sit amet enim sit amet molestie. Phasellus faucibus porta elit vitae sollicitudin. Nullam dapibus congue nisi, ac interdum urna venenatis vitae. Curabitur at laoreet augue. Integer elementum viverra ultrices. Phasellus elementum massa magna, a consequat felis malesuada ac. Donec ac bibendum magna. Aenean sed pretium elit.\r\n\r\nNunc suscipit sem ut lacus tempus interdum. Duis sed nulla metus. Mauris sit amet sapien lacus. Vivamus vitae dictum tortor. Nulla congue, quam et lacinia consequat, risus arcu tristique nibh, a pharetra dolor ligula a metus. Mauris consectetur diam quis eros posuere, vel scelerisque velit cursus. Fusce porttitor fringilla augue, eget semper massa tempor eget. Quisque sit amet tincidunt erat. Nulla condimentum tincidunt sapien in hendrerit. Ut sit amet nibh luctus, mattis ex quis, suscipit arcu. Maecenas eleifend purus ac nibh feugiat, eget dapibus libero auctor. Etiam tellus erat, laoreet gravida magna quis, dictum malesuada lorem. In hac habitasse platea dictumst.\r\n\r\nSuspendisse orci leo, maximus sed dolor quis, tincidunt sollicitudin urna. Nam tempus viverra nunc sodales gravida. Cras elementum tortor quis ex tempus tempor. Duis fringilla tempus magna, sed pulvinar dui volutpat eget. Donec a luctus nibh, dictum imperdiet nisl. Donec ac arcu bibendum, porta dolor in, tristique sem. Nam scelerisque purus eget sem egestas, pulvinar efficitur arcu condimentum. Pellentesque eleifend maximus diam, eget lobortis turpis auctor vitae. Duis in augue gravida, faucibus metus id, pulvinar dui. Fusce id nunc bibendum, pharetra augue eget, hendrerit nisi. Proin vitae velit ac dui accumsan viverra in ut ligula.\r\n\r\nNullam sagittis arcu in arcu molestie, ac tristique arcu dapibus. Duis elit odio, tincidunt quis odio dapibus, tempor laoreet ipsum. Pellentesque vel sagittis metus. Vivamus condimentum orci non magna interdum feugiat a sed ante. Nam condimentum a lectus vel interdum. Maecenas vehicula placerat libero non semper. Mauris id massa sodales, ullamcorper diam sit amet, dignissim justo. Phasellus vitae gravida lorem, quis suscipit purus. Cras ac aliquam ipsum, ac gravida sem. Praesent pellentesque risus eu ex scelerisque, sed maximus felis luctus. Phasellus aliquet malesuada congue. Donec in purus mi.\r\n\r\nEtiam mauris magna, facilisis nec nisl nec, malesuada consectetur lorem. Quisque nunc tortor, tincidunt eleifend mollis ut, sodales non odio. Maecenas velit nibh, pellentesque egestas iaculis sit amet, laoreet a turpis. Cras aliquam nisi sapien, nec tempus ipsum rutrum et. Aliquam ultricies lorem non urna cursus tincidunt. Vivamus ac dignissim massa, sit amet accumsan mi. Nam sit amet tortor id lorem ultrices imperdiet. Etiam ac interdum leo. Vivamus vitae arcu sit amet arcu tristique suscipit varius tempor elit. Quisque tempor nisi dolor. Sed at ex non erat auctor finibus non vel leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue, leo quis sollicitudin varius, lorem est sagittis urna, at facilisis enim ante ut tortor.\r\n\r\nQuisque porttitor eros vitae ante tincidunt, sit amet interdum est lobortis. Aliquam fringilla dapibus dictum. Proin condimentum lobortis luctus. In condimentum ipsum non felis pretium molestie. Proin vulputate sagittis interdum. Vivamus accumsan convallis lorem eget congue. Maecenas dictum sit amet dui eu eleifend. Duis luctus.', 'blog-post-banner.jpg', 'blog-post-thumb-4.jpg', '2020-03-23 15:40:47'),
(5, 'Fifth Post', 'fifth-post', 'Donec consequat ex nec justo elementum faucibus. Maecenas mollis sit amet enim sit amet molestie. Phasellus faucibus porta elit vitae sollicitudin. Nullam dapibus congue nisi, ac interdum urna venenatis vitae. Curabitur at laoreet augue. Integer elementum viverra ultrices. Phasellus elementum massa magna, a consequat felis malesuada ac. Donec ac bibendum magna. Aenean sed pretium elit. Nunc suscipit sem ut lacus tempus interdum. Duis sed nulla metus. Mauris sit amet sapien lacus. Vivamus vitae dictum tortor. Nulla congue, quam et lacinia consequat, risus arcu tristique nibh, a pharetra dolor ligula a metus. Mauris consectetur diam quis eros posuere, vel scelerisque velit cursus. Fusce porttitor fringilla augue, eget semper massa tempor eget. Quisque sit amet tincidunt erat. Nulla condimentum tincidunt sapien in hendrerit. Ut sit amet nibh luctus, mattis ex quis, suscipit arcu. Maecenas eleifend purus ac nibh feugiat, eget dapibus libero auctor. Etiam tellus erat, laoreet gravida magna quis, dictum malesuada lorem. In hac habitasse platea dictumst. Suspendisse orci leo, maximus sed dolor quis, tincidunt sollicitudin urna. Nam tempus viverra nunc sodales gravida. Cras elementum tortor quis ex tempus tempor. Duis fringilla tempus magna, sed pulvinar dui volutpat eget. Donec a luctus nibh, dictum imperdiet nisl. Donec ac arcu bibendum, porta dolor in, tristique sem. Nam scelerisque purus eget sem egestas, pulvinar efficitur arcu condimentum. Pellentesque eleifend maximus diam, eget lobortis turpis auctor vitae. Duis in augue gravida, faucibus metus id, pulvinar dui. Fusce id nunc bibendum, pharetra augue eget, hendrerit nisi. Proin vitae velit ac dui accumsan viverra in ut ligula. Nullam sagittis arcu in arcu molestie, ac tristique arcu dapibus. Duis elit odio, tincidunt quis odio dapibus, tempor laoreet ipsum. Pellentesque vel sagittis metus. Vivamus condimentum orci non magna interdum feugiat a sed ante. Nam condimentum a lectus vel interdum. Maecenas vehicula placerat libero non semper. Mauris id massa sodales, ullamcorper diam sit amet, dignissim justo. Phasellus vitae gravida lorem, quis suscipit purus. Cras ac aliquam ipsum, ac gravida sem. Praesent pellentesque risus eu ex scelerisque, sed maximus felis luctus. Phasellus aliquet malesuada congue. Donec in purus mi. Etiam mauris magna, facilisis nec nisl nec, malesuada consectetur lorem. Quisque nunc tortor, tincidunt eleifend mollis ut, sodales non odio. Maecenas velit nibh, pellentesque egestas iaculis sit amet, laoreet a turpis. Cras aliquam nisi sapien, nec tempus ipsum rutrum et. Aliquam ultricies lorem non urna cursus tincidunt. Vivamus ac dignissim massa, sit amet accumsan mi. Nam sit amet tortor id lorem ultrices imperdiet. Etiam ac interdum leo. Vivamus vitae arcu sit amet arcu tristique suscipit varius tempor elit. Quisque tempor nisi dolor. Sed at ex non erat auctor finibus non vel leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue, leo quis sollicitudin varius, lorem est sagittis urna, at facilisis enim ante ut tortor. Quisque porttitor eros vitae ante tincidunt, sit amet interdum est lobortis. Aliquam fringilla dapibus dictum. Proin condimentum lobortis luctus. In condimentum ipsum non felis pretium molestie. Proin vulputate sagittis interdum. Vivamus accumsan convallis lorem eget congue. Maecenas dictum sit amet dui eu eleifend. Duis luctus.', 'blog-post-banner.jpg', 'blog-post-thumb-5.jpg', '2020-03-23 15:42:58'),
(6, 'Sixth Post', 'sixth-post', 'Donec consequat ex nec justo elementum faucibus. Maecenas mollis sit amet enim sit amet molestie. Phasellus faucibus porta elit vitae sollicitudin. Nullam dapibus congue nisi, ac interdum urna venenatis vitae. Curabitur at laoreet augue. Integer elementum viverra ultrices. Phasellus elementum massa magna, a consequat felis malesuada ac. Donec ac bibendum magna. Aenean sed pretium elit. Nunc suscipit sem ut lacus tempus interdum. Duis sed nulla metus. Mauris sit amet sapien lacus. Vivamus vitae dictum tortor. Nulla congue, quam et lacinia consequat, risus arcu tristique nibh, a pharetra dolor ligula a metus. Mauris consectetur diam quis eros posuere, vel scelerisque velit cursus. Fusce porttitor fringilla augue, eget semper massa tempor eget. Quisque sit amet tincidunt erat. Nulla condimentum tincidunt sapien in hendrerit. Ut sit amet nibh luctus, mattis ex quis, suscipit arcu. Maecenas eleifend purus ac nibh feugiat, eget dapibus libero auctor. Etiam tellus erat, laoreet gravida magna quis, dictum malesuada lorem. In hac habitasse platea dictumst. Suspendisse orci leo, maximus sed dolor quis, tincidunt sollicitudin urna. Nam tempus viverra nunc sodales gravida. Cras elementum tortor quis ex tempus tempor. Duis fringilla tempus magna, sed pulvinar dui volutpat eget. Donec a luctus nibh, dictum imperdiet nisl. Donec ac arcu bibendum, porta dolor in, tristique sem. Nam scelerisque purus eget sem egestas, pulvinar efficitur arcu condimentum. Pellentesque eleifend maximus diam, eget lobortis turpis auctor vitae. Duis in augue gravida, faucibus metus id, pulvinar dui. Fusce id nunc bibendum, pharetra augue eget, hendrerit nisi. Proin vitae velit ac dui accumsan viverra in ut ligula. Nullam sagittis arcu in arcu molestie, ac tristique arcu dapibus. Duis elit odio, tincidunt quis odio dapibus, tempor laoreet ipsum. Pellentesque vel sagittis metus. Vivamus condimentum orci non magna interdum feugiat a sed ante. Nam condimentum a lectus vel interdum. Maecenas vehicula placerat libero non semper. Mauris id massa sodales, ullamcorper diam sit amet, dignissim justo. Phasellus vitae gravida lorem, quis suscipit purus. Cras ac aliquam ipsum, ac gravida sem. Praesent pellentesque risus eu ex scelerisque, sed maximus felis luctus. Phasellus aliquet malesuada congue. Donec in purus mi. Etiam mauris magna, facilisis nec nisl nec, malesuada consectetur lorem. Quisque nunc tortor, tincidunt eleifend mollis ut, sodales non odio. Maecenas velit nibh, pellentesque egestas iaculis sit amet, laoreet a turpis. Cras aliquam nisi sapien, nec tempus ipsum rutrum et. Aliquam ultricies lorem non urna cursus tincidunt. Vivamus ac dignissim massa, sit amet accumsan mi. Nam sit amet tortor id lorem ultrices imperdiet. Etiam ac interdum leo. Vivamus vitae arcu sit amet arcu tristique suscipit varius tempor elit. Quisque tempor nisi dolor. Sed at ex non erat auctor finibus non vel leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue, leo quis sollicitudin varius, lorem est sagittis urna, at facilisis enim ante ut tortor. Quisque porttitor eros vitae ante tincidunt, sit amet interdum est lobortis. Aliquam fringilla dapibus dictum. Proin condimentum lobortis luctus. In condimentum ipsum non felis pretium molestie. Proin vulputate sagittis interdum. Vivamus accumsan convallis lorem eget congue. Maecenas dictum sit amet dui eu eleifend. Duis luctus.', 'blog-post-banner.jpg', 'blog-post-thumb-6.jpg', '2020-03-23 15:42:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
