
function add_to_bucket(id, counter){
    console.log("id "+id);
    var count = document.getElementsByName('book_qty')[counter].value;
    console.log("counter "+count);
    $.ajax({
        type: 'post',
        url: '/Kupon/order/before/set/bucket',
        data: {'selected_order_good_id': id, 'selected_order_good_count': count},
        response: 'text',
        success: function($data) {
            console.log($data);
        }
    });
}