file { '/home/sales':
	ensure => 'directory',
	owner => 'root',
	group => 'sales',
	mode => '0070',
}
exec{'sales_inherit':
	command => "/bin/chmod g+s /home/sales",
}
