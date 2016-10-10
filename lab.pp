group { 'managers':
	ensure => 'present',
	gid => '101',
}

group {'sales':
	ensure => 'present',
	gid => '102',
}

group {'accounting':
	ensure => 'present',
	gid => '103',
}

define useradd( $uuid, $secgroup) {
	group { $title:
		ensure => 'present',
		gid => $uuid,
	}
	user { $title:
		ensure => 'present',
		password => 'password',
		home => "/home/${title}",
		uid => $uuid,
		gid => $uuid,
		groups => $secgroup,
		shell => '/bin/bash',
		managehome => true,
	}
	file  { $title :
		path => "/home/${title}",
		source => '/etc/skel',
		recurse => true,
		owner => $title,
		group => $uuid,
	}
}

useradd{ 'mscott':
	uuid => 104,
	secgroup => 'managers',
}

useradd{ 'jhalpert':
	uuid => 105,
	secgroup => 'managers',
}

useradd{ 'dschrute':
	uuid => 106,
	secgroup => 'managers',
}

useradd{ 'kmalone':
	uuid => 107,
	secgroup => 'accounting',
}

useradd{ 'omartinez':
	uuid => 108,
	secgroup => 'accounting',
}

useradd{ 'amartin':
	uuid => 109,
	secgroup => 'accounting',
}

useradd{ 'shudson':
	uuid => 110,
	secgroup => 'sales',
}

useradd{ 'plapin':
	uuid => 111,
	secgroup => 'sales',
}

useradd{ 'abernard':
	uuid => 112,
	secgroup => 'sales',
}

useradd{ 'pbeesly':
	uuid => 113,
	secgroup => 'sales',
}

useradd{ 'kkapoor':
	uuid => 114,
	secgroup => 'sales',
}

useradd{ 'mpalmer':
	uuid => 115,
	secgroup => 'sales',
}

useradd{ 'tflenderson':
	uuid => 116,
	secgroup => 'sales',
}

useradd{ 'cbratton':
	uuid => 117,
	secgroup => 'sales',
}

useradd{ 'dphilbin':
	uuid => 118,
	secgroup => 'sales',
}

useradd{ 'nboneh':
	uuid => 119,
	secgroup => 'managers',
}

