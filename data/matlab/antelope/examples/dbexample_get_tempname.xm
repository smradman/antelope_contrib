function t = dbexample_get_tempname( prefix, type )

signature = ['_' getenv('USER') '_' num2str(getpid())];

if ( strcmp( type, 'file' ) ) 

  t = [tempdir() prefix signature ];

elseif ( strcmp( type, 'db' ) )

  t = [tempdir() prefix signature ];

elseif( strcmp( type, 'dir' ) )

  t = [tempdir() prefix signature filesep() ];
  unix(['mkdir ' t])

elseif( strcmp( type, 'pf' ) )

  t = [tempdir() prefix signature '.pf'];

else

  t = '';

end

return
