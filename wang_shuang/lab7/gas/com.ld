OUTPUT_FORMAT(binary)
ENTRY(_start)

SECTIONS
{
	. = 0x0100;
	.text ALIGN(16) :
	{
		__text_begin = .;
		*(.text)
		__text_end = .;
	} 

	. = 0x0200;
	.data ALIGN(16) :
	{
		__data_begin = .;
		*(.data)
		__data_end = .;
	}

	. = 0x0300;
	.table ALIGN(16) :
	{
		__table_begin = .;
		*(.table)
		__table_end = .;
	}

	/DISCARD/ : 
	{
		*(.bss)
  		*(.note.GNU-stack) 
		*(.gnu_debuglink) 
		*(.gnu.lto_*) 
	}
}
