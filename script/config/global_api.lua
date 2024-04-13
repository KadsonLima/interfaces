--102
lua_glb = {}

function lua_glb:check_md5(mapid)
	local maps = {}

	local files = {}
	files["Maps\\a14\\a14.ecbsd"] = "72771F66BB0845E5E33A36BA799A0242";
	files["Maps\\a14\\a14_1.t2bk"] = "BE0B61DDE3ACF5D724FA2F8E1360A97C";
	files["Maps\\a14\\bsdata\\1.dat"] = "66CAACCCF43306C67B19880137767155";	
	files["Maps\\a14\\a14.ecwld"] = "BE336CEB717A04BEB42EC28FCB1AFFD9";
	files["Maps\\a14\\a14.trn2"] = "C1BCE2047E81D41F45F073EDBBBBCB17";		
	maps["a14"] = files;

	local files = {}
	files["Maps\\a15\\a15.ecbsd"] = "62221523C7749B3BE20D806E5FB3CB33";
	files["Maps\\a15\\a15_1.t2bk"] = "CF8472C75C7938C8DCAFC55C6BC89FF9";
	files["Maps\\a15\\bsdata\\1.dat"] = "B746EB48F27A0C97627A83BCF795AD29";	
	files["Maps\\a15\\a15.ecwld"] = "248E965B2888DB1616CE8EAD2B1AE80E";
	files["Maps\\a15\\a15.trn2"] = "5D5C1596D08632AB210591A78F5011D7";		
	maps["a15"] = files;

	local files = {}
	files["Maps\\a16\\a16.ecbsd"] = "F77108DCBD9D2C58C2C8C4475E634CDB";
	files["Maps\\a16\\a16_1.t2bk"] = "C57B6C5D1C013242F3DD78170435B9E9";
	files["Maps\\a16\\bsdata\\1.dat"] = "745C13AADC9A3A0B2F3402057F69B574";	
	files["Maps\\a16\\a16.ecwld"] = "2A28FA1A0EB5AA7DA5DC9F34557C77B9";
	files["Maps\\a16\\a16.trn2"] = "44D0464029090B2CE36D41DCB121C2DC";		
	maps["a16"] = files;

	local files = {}
	files["Maps\\a17\\a17.ecbsd"] = "D4B9490A2E35F542142F229C5998EF6D";
	files["Maps\\a17\\a17_1.t2bk"] = "13E655A025CD72818562B15E8ABAEAAE";
	files["Maps\\a17\\bsdata\\1.dat"] = "19E5AFB02A2B73577F3B80B6284E6B28";	
	files["Maps\\a17\\a17.ecwld"] = "0DFE1E981B07CAE14523EE72DDD2DAA5";
	files["Maps\\a17\\a17.trn2"] = "A839CFF15454A8F985C99A626DA7FA5D";		
	maps["a17"] = files;

	local files = {}
	files["Maps\\a23\\a23.ecbsd"] = "E887760634A77ED0CABB1AA8A6A09C2E";
	files["Maps\\a23\\a23_5.t2bk"] = "27A2186D742087908B729ED213E737BD";
	files["Maps\\a23\\bsdata\\5.dat"] = "486A3C62CEB13AA71E1D760BCBE930EF";
	files["Maps\\a23\\a23.ecwld"] = "DA7E99E355105B7E3528B8BC2B408934";
	files["Maps\\a23\\a23.trn2"] = "AD1A04A13534379842818AA53B6369F8";		
	maps["a23"] = files;

	local files = {}
	files["Maps\\a24\\a24.ecbsd"] = "38CED122317CA667E6F29BBEF8148F9A";
	files["Maps\\a24\\a24_1.t2bk"] = "130E075D8548B71343FB1B561937FF2E";
	files["Maps\\a24\\bsdata\\1.dat"] = "747D59FFEB5EAA0B51A51DD67BBCA8EC";
	files["Maps\\a24\\a24.ecwld"] = "AC87CC66EA081E8A8B4B93F213DF63D1";
	files["Maps\\a24\\a24.trn2"] = "AA8E8C64745A0FC3E7637E0A85106091";		
	maps["a24"] = files;

		local files_to_check = maps[string.lower(mapid)]
	if files_to_check == nil then
		return true
	end

	local f, m
	for f,m in pairs(files_to_check) do
		md5 = GlobalApi.lua_glb_CalcFileMd5(f)
		if string.lower(m) ~= string.lower(md5) then
			return false
		end	 
	end
	
 	return true
end