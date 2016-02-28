<html>
	<head>
		<title>Asset Managment | Version 1</title>
		<link rel="stylesheet" type="text/css" href="main.style.css" media="screen">
		<script src="main.script.js"></script>
		<style>
		label.columns{
			display:inline-block;
			border:1px solid black;
			text-transform:capitalize;
		}

		#assets th,
		td.columns{
			 border:1px solid black;
		}

		.js-columns{
			background-color:blue;
		}
		</style>
	</head>
	<body>

	<h1>Asset Manager</h1>

		<div id='columns'> 
		</div>
		<div id='filters'>
			<input type='checkbox' class='js-filters' data-filter="os">
		</div>
		<table id='assets'>
			<thead>
				<tr id='js-assets-table-headers'>
					
				</tr>
			</thead>
		</table>
		<script>
			var columns     = document.getElementById('columns');
			var columnNames = Array();
			columnNames.push('site');
			columnNames.push('location');
			columnNames.push('os');
			columnNames.push('shadow-types');
			columnNames.push('cache-version');
			columnNames.push('localities');
			columnNames.push('ip');
			columnNames.push('hostname');

			var noColumnNames = columnNames.length;
			var i = 0;
			for(i;i<noColumnNames;i++){
				var checkbox  = document.createElement('input');
				var label     = document.createElement('label');
				var labelText = document.createTextNode(columnNames[i]);

				checkbox.setAttribute('type','checkbox');
				checkbox.setAttribute('class','js-columns');
				checkbox.dataset.column = columnNames[i];
				label.setAttribute('class','columns');
				label.appendChild(labelText);
				label.appendChild(checkbox);
				columns.appendChild(label);

		  }		




		var tableColumns  = document.getElementById('assets');//.getElementByTagNames('thead');
		var columnOptions = document.getElementsByClassName('js-columns');
		var columnHeaders = document.getElementById('js-assets-table-headers');
		var columnLength  = columnOptions.length;
		var i             = 0;
		console.log(i,columnLength);
		for(i;i<columnLength;i++){
			(function(){
				var headerId = i;
				columnOptions[i].addEventListener('click',function(){
					if(this.checked === true){
						if(columnHeaders.childElementCount === 0){
							//columnHeaders.innerHTML = '<th id="head-'+headerId+'">'+this.dataset.column+'</th>';
						}
						console.log('on');
						//columnHeaders.splice(headerId, 0, '<th id="head-'+headerId+'">'+this.dataset.column+'</th>');
						columnHeaders.innerHTML += '<th id="head-'+headerId+'">'+this.dataset.column+'</th>';

					} else {
						document.getElementById('head-'+headerId).remove();
						//removeHeader(headerId)
						console.log('off');
					}
				},false);
			}());
		}

		function setHeader(headerId){
						
		}

		function removeHeader(headerId){
			
		}
		</script>
	</body>
</html>