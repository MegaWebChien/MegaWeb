<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh Mục</title>
<link rel="stylesheet" href="css/hienthi_sp.css" />
</head>
<?php
		include ('../include/connect.php');
			
		$select = "select * from danhmuc";
		$query = mysqli_query($mysqli,$select);
		$dem = mysqli_num_rows($query);
?>
<div class="quanlysp">
	<h3>QUẢN LÝ DANH MỤC</h3>
<a href='?admin=themdm' >Thêm danh mục</a><br>
	
	<p>Có tổng <font color=red><b><?php echo $dem ?></b></font> danh mục</p>
</div>
<form action="" method="post" name="frmTest" onsubmit="if(CheckForm() == false) return false">
	<table align="center" border="0">
        <tr class="tieude_hienthi_sp">
        	<td>Mã DM</td>
           <td> Tên DM</td>
            <td>Thuộc </td>
            
        </tr>
               
		<?php
	
	/*------------Phan trang------------- */
		// Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page) 
		// nếu chưa có, đặt mặc định là 1!   

		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
		$max_results = 4;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		// Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại  

		$sql = mysqli_query($mysqli,"SELECT * FROM danhmuc ORDER by madm DESC  LIMIT $from, $max_results"); 



								
    if($dem > 0)
        while ($bien = mysqli_fetch_array($sql))
        {
?>      
<tr class='noidung_hienthi_sp'>
				<!-- <td class="masp_hienthi_sp"><input type="checkbox" name="id[]" class="item" class="checkbox" value="<?=$bien['idsp']?>"/></td> -->
                <td class="masp_hienthi_sp"><?php  echo $bien['madm'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['tendm'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['dequi'] ?></td>
               
            </tr>
<?php 
    }
	
    else echo "<tr><td colspan='6'>Không có sản phẩm trong CSDL</td></tr>";
	
?>
</table>
</form>
	<div id="phantrang_sp">
	
	<?php
			// Tính tổng kết quả trong toàn DB:  
			//$total_results = mysql_result(mysqli_query($mysqli,"SELECT COUNT(*) as Num FROM sanpham"),0);  
			$result = mysqli_query($mysqli,"SELECT COUNT(*) as total FROM danhmuc");
			$row = mysqli_fetch_assoc($result);
			$total_results = $row['total'];
			// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
			$total_pages = ceil($total_results / $max_results);  


			// Tạo liên kết đến trang trước trang đang xem 
			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthidm&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
			}  

			for($i = 1; $i <= $total_pages; $i++){  
			if(($page) == $i){  
				if($i>1) {
						echo "$i&nbsp;";  } 
				
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthidm&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}  

			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_pages){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthidm&page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";  		
		
	?>
	</div>
