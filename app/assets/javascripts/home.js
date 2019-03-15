$(document).ready(function() {
	let user_id = $(`.current_user_id:first`).attr('id');

	function home() {
		$AddS = $('.fas.fa-cart-arrow-down');

		$ImgS = $('img[id]');

		$AddS.each(function(add) {
			$AddS.eq(add).bind('click', () => {
				let item_id = $ImgS.eq(add).attr('id')

				$.ajax({
					url: `/users/${user_id}/items/${item_id}/item_to_carts`,
					method: `POST`,
					data: { user_id: user_id, item_id: item_id }
				});

				$AddS.eq(add).hide(slow);
			})

		})
	}
	home();

	function cartShow() {
		$(`div#info`).hide();

		$(`a#transaction_info`).on('mouseover', () => {
			$(`a#transaction_info`).css({
				"cursor": "pointer"
			});
		})

		$(`a#transaction_info`).on('click', () => {
			$(`div#info`).toggle('slow');
		})
	}
	cartShow();

	function cartDelete() {
		console.log($("input[name='itemToCart']"));

		$deleteButton = $('input.btn.btn-danger');
		$trS = $('tr');

		$deleteButton.each(function(del) {
			$deleteButton.eq(del).on('click', () => {
				$trS.eq(del + 1).hide('slow');

				let id = $("input[name='itemToCart']").eq(del).attr('id');

				$.ajax({
					url: `/users/${user_id}/items/${item_id}/item_to_carts/${id}`,
					method: `DELETE`,
					data: { user_id: user_id, item_id: item_id, id: id }
				});
			})
		})
	}
	cartDelete();

	function addItemFromShow() {
		$Add = $(`#add_button`);
		$Img = $(`.carousel-inner:first`);

		let item_id = $Img.attr('id');
		let nbr_of_cmd = 0

			$Add.on('click', () => {

				$.ajax({
					url: `/users/${user_id}/items/${item_id}/item_to_carts`,
					method: `POST`,
					data: { user_id: user_id, item_id: item_id }
				});
				nbr_of_cmd += 1;
				$Add.html($Add.html() + `(${nbr_of_cmd})`);
			})
	}
	addItemFromShow();
})