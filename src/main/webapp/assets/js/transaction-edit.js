// Load
document.addEventListener("DOMContentLoaded", () => {
	setSummary("count", "allCount");
	setSummary("total", "allTotal");
	registerSummaryCalc();
	registerTotalCalc();
})

// Register Total Calculation
function registerTotalCalc() {
	// Price
	document.querySelectorAll('input[name="price"]')
		.forEach(element => element.addEventListener('change', setTotalForRow));
	
	// Count
	document.querySelectorAll('input[name="count"]')
		.forEach(element => element.addEventListener('change', setTotalForRow));
}

// Set Total for Row
function setTotalForRow() {
	var row = this.parentElement.parentElement;
	var price = getInput(row, "price").value;
	var count = getInput(row, "count").value;
	
	if(count == 0) {
		row.parentElement.removeChild(row);
	} else {
		getInput(row, "total").value = price * count;
		setSummary("total", "allTotal");
	}

}

// Get Input
function getInput(row, name) {
	return row.querySelector(`input[name="${name}"]`);
}

// Register Summary Calculation
function registerSummaryCalc() {
	// Count
	document.querySelectorAll('input[name="count"]').forEach(element => {
		element.addEventListener('change', () => setSummary("count", "allCount"))
	})
	// Total
	document.querySelectorAll('input[name="total"]').forEach(element => {
		element.addEventListener('change', () => setSummary("total", "allTotal"))
	})
}

// Set Summary
function setSummary(name, target) {
	var countInputs = document.querySelectorAll(`input[name="${name}"]`);
	var sumOfCount = Array.prototype.map.call(
		countInputs, 
		input => input.value)
		.reduce((a, b) => Number.parseInt(a) + Number.parseInt(b));
	document.querySelector(`input[name="${target}"]`).value = sumOfCount;
}

// Add Details
function addDetails() {
	var container = document.getElementById("detailsWrapper");
	var row = document.createElement("tr");
	container.appendChild(row);
	
	// Item
	row.appendChild(getTextCell("item", "Enter Item Name"));
	
	// Remark
	row.appendChild(getTextCell("remark", "Enter Remark"));
	
	// Unit Price
	row.appendChild(getNumberCell("price", 0));
	
	// Quantity
	row.appendChild(getNumberCell("count", 1));
	
	// Total
	row.appendChild(getNumberCell("total", 0, "readonly"));
	
	// Calculation Start
	setSummary("count", "allCount");
	setSummary("total", "allTotal");
	
	// Set Registration for New Row
	registerSummaryCalc();
	registerTotalCalc();
}

// Append Text Cell
function getTextCell(name, placeholder) {
	
	var input = document.createElement("input");
	input.setAttribute("type", "text");
	input.setAttribute("name", name);
	input.setAttribute("placeholder", placeholder);
	
	var cell = document.createElement("td");
	cell.classList.add("form-group");
	cell.appendChild(input);
	
	return cell;
}

// Append Number Cell
function getNumberCell(name, value, readonly) {
	
	var input = document.createElement("input");
	input.setAttribute("type", "number");
	input.setAttribute("name", name);
	input.setAttribute("value", value);
	
	if(readonly) {
		input.setAttribute("readonly", "readonly");
	}
	
	var cell = document.createElement("td");
	cell.classList.add("form-group");
	cell.appendChild(input);
	
	return cell;
}
