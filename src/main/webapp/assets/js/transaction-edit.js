function addDetails() {
	var container = document.getElementById("detailsWrapper");
	var row = document.createElement("tr");
	container.appendChild(row);
	
	// Item
	row.appendChild(getCell(null, "item", "Enter Item Name"));
	
	// Remark
	row.appendChild(getCell(null, "remark", "Enter Remark"));
	
	// Unit Price
	row.appendChild(getCell("number", "price"));
	
	// Quantity
	row.appendChild(getCell("number", "count"));
	
	// Total
	row.appendChild(getCell("number", "total"));
}

function getCell(type, name, placeholder) {
	
	var input = document.createElement("input");
	input.setAttribute("type", type ? type : "text");
	input.setAttribute("name", name);
	if(placeholder) {
		input.setAttribute("placeholder", placeholder);
	}

	var cell = document.createElement("td");
	cell.classList.add("form-group");
	cell.appendChild(input);
	
	
	return cell;
}
