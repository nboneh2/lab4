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

define useradd( $gid, $uid) {
	user { $title:
		ensure => 'present',
		password => 'password',
		home => '/home/${title}',
		uid => $uid,
		gid => $gid,
		shell => '/bin/bash',
		managehome => true,
	}
	file  { '/etc/skel' :
		ensure => presnet,
		source => '/home/${user}',
	}
}

useradd{ 'mscott':
	gid => 101,
	uid => 101,
}

useradd{ 'nboneh2':
	gid => 102,
	uid => 102,
}


