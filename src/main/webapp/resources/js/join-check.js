/*anafor 회원가입 유효성검사 js*/
 var space = /\s/g;	// 문자 내 공백여부 판단
 var join = {
	
	// tag 의 상태를 확인할 함수를 선언(tag_status)하고 받아오는 값을 tag 변수로 지정
	tag_status: function ( tag ) {
		var data = tag.val();	// tag 내 입력된 값을 data 변수에 할당
		tag = tag.attr('name');	// tag 의 name 속성의 값을 확인 ex) id, pw
		
	// tag 에 입력한 data에 들어있는데 tag의 name 속성의 값으로 id, pw, pw_chk 인지를
	// 구분(판단)하여 유효성 검사 진행하려고 함.
		// id 의 상태가 유효한지 아닌지 판단이 필요하므로 함수 선언( id_status() )
		if (tag == 'id')		return this.id_status( data );
		else if ( tag == 'pw')	return this.pw_status( data );
		else if ( tag == 'pwchk' )	return this.pw_chk_status( data );
 		else if (tag == 'name') return this.name_status(data);
		else if (tag == 'birth') return this.birth_status(data);
	}
	, id_status : function ( id ) {
		var reg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if (id == '') 				return this.id.empty;
		else if (reg.test(id))		return this.id.valid;
		else						return this.id.invalid;
		
	}
	, id : {
		valid 	 : { code : 'valid', desc : '이메일 중복 확인을 해주세요'},
		invalid  : { code : 'invalid', desc : '유효하지 않은 이메일입니다.'},
		usable	 : { code:'valid',    desc:'사용가능한 이메일입니다.'},
		unUsable : { code:'invalid',  desc:'이미 사용중인 이메일입니다'},
		empty 	 : { code: 'invalid', desc:'이메일을 입력하세요 예)happy@anafor.com'}
		
	}
	
	, pw_chk_status : function ( pw_ck ) {
		if ( pw_ck == '' )				return this.pw.empty_pwchk;
		else if (pw_ck == $('[name=pw]').val())		return this.pw.equal;
		else 							return this.pw.notEqual;
	}
	
	
	, pw_status : function ( pw ) {
		// 비밀번호를 영문 대/소문자, 숫자 외 입력시
		var reg = /[^A-Za-z0-9]/g;
		var upper = /[A-Z]/g, lower = /[a-z]/g, digit = /[0-9]/g;
		if ( pw == '' )					return this.pw.empty;
		else if ( pw.match(space))		return this.common.space;
		else if (reg.test(pw))			return this.pw.invalid;
		else if (pw.length < 8 )		return this.common.min;
		else if (pw.length > 16)		return this.common.max;
		else if (!upper.test(pw) || !lower.test(pw) || !digit.test(pw))	return this.pw.lack;
		else							return this.pw.valid;
	}
	, pw : {
		  empty:{ code:'invalid', desc:'비밀번호를 입력해주세요.'}
		, empty_pwchk:{ code:'invalid', desc:'비밀번호를 다시 한번 입력해주세요.'}
		, valid : { code : 'valid', desc : '사용 가능한 비밀번호 입니다.'}
		, equal : { code : 'valid', desc : '비밀번호가 일치합니다.'}
		, notEqual : { code : 'invalid', desc : '비밀번호가 일치하지 않습니다.'}
		, lack : { code : 'invalid', desc : '영문 대/소문자 숫자를 모두 포함해야 합니다.'}
		, invalid : { code : 'invalid' , desc : '비밀번호를 영문 대/소문자, 숫자를 모두 포함'}
	}
	, common : {
		empty : { code : 'invalid', desc : '입력하세요!' }
		, space : {code : 'invalid', desc : '공백없이 입력하세요'}
		, max : { code : 'invalid', desc : '최대 16자 이하로 입력하세요'}
		, min : { code : 'invalid', desc : '최소 8자 이상 입력하세요'}		
	}
	
	, id_usable : function ( usable ) {
		if (usable)			return this.id.usable;
		else 				return this.id.unUsable;
	}
	, name_status : function (name){
		var reg=/[^가-힣a-zA-Z]/g;
		if(name=='') 			return this.name.empty;
		else if(reg.test(name)) return this.name.invalid;
		else 					return this.name.valid;
		
	}
	, name:{
		empty:{code:'invalid',desc:'이름을 입력해주세요'},
		valid:{code:'valid',desc:""},
		invalid:{code:'invalid',desc:"한글과 영문 대/소문자만 입력가능합니다"}
	}
	, birth_status:function(birth){
		var birthday = birth;
		var y = parseInt(birth.substr(0,4),10);
		var m = parseInt(birth.substr(4,2),10);
		var d = parseInt(birth.substr(6,2),10);
		var dt = new Date(y,m-1, d); //생년월일 형식 맞는지 판별
		var today = new Date(); //오늘날짜
		
		if(birth.length!=0 && dt.getDate()!=d ) return this.birth.invalid;
		else if(birth.length!=0 && dt.getMonth()+1 != m )  return this.birth.invalid;
		else if(birth.length!=0 && dt.getFullYear() != y)  return this.birth.invalid;
		else if(y < 1920 || y >today.getFullYear())			 return this.birth.invalid;
		else if((y == today.getFullYear() && m > today.getMonth()+1)|| (y == today.getFullYear() && m == today.getMonth()+1 && d > today.getDate() ))  return this.birth.invalid;
		else if(birth=='') return this.birth.empty;
		else return this.birth.valid;
		
	}
	, birth:{
		empty:{code:'invalid',desc:'생년월일을 입력하세요 예)19990101'},
		valid:{code:'valid',desc:""},
		invalid:{code:'invalid',desc:"생년월일이 유효하지 않습니다. 예)19990101"}
	}

}





