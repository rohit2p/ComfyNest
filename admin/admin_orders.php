<?php
require('top.inc.php');

// Fetch orders from the database
$sql = "SELECT * FROM orders ORDER BY id DESC";
$result = mysqli_query($con, $sql);
?>

<div class="content pb-0">
    <div class="orders">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Orders </h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th>Order ID</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Mobile No</th>
                                        <th>Address</th>
                                        <th>Order Total</th>
                                        <th>Payment Method</th>
                                        <th>Order Date</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($result)) { ?>
                                        <tr>
                                            <td class="serial"><?php echo $i++; ?></td>
                                            <td><?php echo $row['id']; ?></td>
                                            <td><?php echo $row['first_name']; ?></td>
                                            <td><?php echo $row['last_name']; ?></td>
                                            <td><?php echo $row['email']; ?></td>
                                            <td><?php echo $row['mobile_no']; ?></td>
                                            <td><?php echo $row['address_line1'] . ', ' . $row['address_line2'] . ', ' . $row['city'] . ', ' . $row['state'] . ', ' . $row['country'] . ', ' . $row['pin_code']; ?></td>
                                            <td>₹<?php echo $row['order_total']; ?></td>
                                            <td><?php echo $row['payment_method']; ?></td>
                                            <td><?php echo $row['created_at']; ?></td>
                                            <td>
                                                <a href="order_detail.php?id=<?php echo $row['id']; ?>" class="badge badge-info">View Details</a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                    <?php if (mysqli_num_rows($result) == 0) { ?>
                                        <tr>
                                            <td colspan="11">No orders found</td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require('footer.inc.php');
?>
