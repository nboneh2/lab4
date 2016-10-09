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

define userc($user, $gid, $uid) {
	user { '$uid':
		ensure => 'present',
		password => 'password',
		home => '/home/${user}',
		uid => $uid,
		gid => $gid,
		shell => 'bin/bash',
		managehome => true,
	}

	file  { '/etc/skel' :
		ensure => presnet,
		source => '/home/${user}',
	}
}

@userc { 'mscott':
	user => 'mscott',
	gid => 101,
	uid => 101,
}

@userc { 'nboneh2':
	user => 'nboneh2',
	gid => 102,
	uid => 102,
}

user { 'mscott':
	ensure => 'present',
	password => 'password',
	home => '/home/mscott',
	uid => '101',
	shell => '/bin/bash',
	gid => '101',
	managehome => true,
}

