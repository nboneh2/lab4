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

useradd{ 'nboneh2':
	uuid => 105,
	secgroup => 'managers',
}


