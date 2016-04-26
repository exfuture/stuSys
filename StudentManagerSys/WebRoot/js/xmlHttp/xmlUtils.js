// XmlDocument factory
function XmlDocument() {}

XmlDocument.create = function () {
	try {
		// DOM2
		if (document.implementation && document.implementation.createDocument) {
			var doc = document.implementation.createDocument("", "", null);
			
			// some versions of Moz do not support the readyState property
			// and the onreadystate event so we patch it!
			if (doc.readyState == null) {
				doc.readyState = 1;
				doc.addEventListener("load", function () {
					doc.readyState = 4;
					if (typeof doc.onreadystatechange == "function")
						doc.onreadystatechange();
				}, false);
			}
			
			return doc;
		}
		if (window.ActiveXObject)
			return new ActiveXObject(getDomDocumentPrefix() + ".DomDocument");
	}
	catch (ex) {}
	throw new Error("Your browser does not support XmlDocument objects");
};
// Create the loadXML method and xml getter for Mozilla
if (window.DOMParser &&
	window.XMLSerializer &&
	window.Node && Node.prototype && Node.prototype.__defineGetter__) {

	// XMLDocument did not extend the Document interface in some versions
	// of Mozilla. Extend both!
	XMLDocument.prototype.loadXML = 
	Document.prototype.loadXML = function (s) {
		
		// parse the string to a new doc	
		var doc2 = (new DOMParser()).parseFromString(s, "text/xml");
		
		// remove all initial children
		while (this.hasChildNodes())
			this.removeChild(this.lastChild);
			
		// insert and import nodes
		for (var i = 0; i < doc2.childNodes.length; i++) {
			this.appendChild(this.importNode(doc2.childNodes[i], true));
		}
	};
	
	
	/*
	 * xml getter
	 *
	 * This serializes the DOM tree to an XML String
	 *
	 * Usage: var sXml = oNode.xml
	 *
	 */
	// XMLDocument did not extend the Document interface in some versions
	// of Mozilla. Extend both!
	XMLDocument.prototype.__defineGetter__("xml", function () {
		return (new XMLSerializer()).serializeToString(this);
	});
	Document.prototype.__defineGetter__("xml", function () {
		return (new XMLSerializer()).serializeToString(this);
	});
}




// used to find the Automation server name
function getDomDocumentPrefix() {

	if (getDomDocumentPrefix.prefix)
		return getDomDocumentPrefix.prefix;

	var prefixes = ["MSXML2", "Microsoft", "MSXML", "MSXML3"];
	var o;	

	for (var i = 0; i < prefixes.length; i++) {
		try {
			// try to create the objects
			o = new ActiveXObject(prefixes[i] + ".DomDocument");
			return getDomDocumentPrefix.prefix = prefixes[i];
		}
		catch (ex) {};
	}
	
	throw new Error("Could not find an installed XML parser");
}


// used to find the Automation server name
function getXmlHttpPrefix() {

	if (getXmlHttpPrefix.prefix)
		return getXmlHttpPrefix.prefix;
	
	var prefixes = ["MSXML2", "Microsoft", "MSXML", "MSXML3"];
	var o;
	for (var i = 0; i < prefixes.length; i++) {
		try {
			// try to create the objects
			o = new ActiveXObject(prefixes[i] + ".XmlHttp");
			return getXmlHttpPrefix.prefix = prefixes[i];
		}
		catch (ex) {};
	}
	
	throw new Error("Could not find an installed XML parser");
}



// XmlHttp factory
function XmlHttp(){}

XmlHttp.create = function () {
	try {
		if (window.XMLHttpRequest) {
			var req = new XMLHttpRequest();
			
			// some versions of Moz do not support the readyState property
			// and the onreadystate event so we patch it!
			if (req.readyState == null) {
				req.readyState = 1;
				req.addEventListener("load", function () {
					req.readyState = 4;
					if (typeof req.onreadystatechange == "function")
						req.onreadystatechange();
				}, false);
			}
			
			return req;
		}
		if (window.ActiveXObject) {
			return new ActiveXObject(getXmlHttpPrefix() + ".XmlHttp");
		}
	}
	catch (ex) {}
	// fell through
	throw new Error("Your browser does not support XmlHttp objects");
};

/**
 * 转码 encode 
 */
function encode(plainText){
  	//进行有效性判断
  	if (plainText == null){
  		return "";
  	}	  	
  	//开始转换
	var encodedText = "";	
    for(var i = 0; i < plainText.length; i++){
        var iChar = plainText.charCodeAt(i);
        if(iChar > 255){
            var s = iChar.toString(16);
            for(var j = s.length; j < 4; j++){
                s = "0" + s;
            }
            encodedText += "#" + s;
        } else if(iChar < 48 || iChar > 57 && iChar < 65 || iChar > 90 && iChar < 97 || iChar > 122){
            var s = iChar.toString(16);
            for(var j = s.length; j < 2; j++){
                s = "0" + s;
            }
            encodedText += "~" + s;
        } else {
            encodedText += plainText.charAt(i);
        }
    }
    return encodedText;
}



/**
 *  反转码 decode
 */
function decode(encodedText){
    if(encodedText == null)
        return "";
    var plainText = "";
    for(var i = 0; i < encodedText.length; i++){
        var c = encodedText.charAt(i);
        switch(c) {
            case "~": // '~'
                var s = encodedText.substring(i + 1, i + 3);
                plainText += String.fromCharCode(parseInt(s, 16));
                i += 2;
                break;
            case "#": // '#'
                var s = encodedText.substring(i + 1, i + 5);
                plainText += String.fromCharCode(parseInt(s, 16));
                i += 4;
                break;
            default:
                plainText += c;
                break;
        }
    }
    return plainText;
}




function getEncodeStr(str) {
	return encode(str);
}

function getDecodeStr(str) {
	return decode(str);
}
