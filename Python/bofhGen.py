from random import randint

columnA = ['Temporary','Intermittant','Partial','Redundant','Total',
	'Multiplexed','Inherent','Duplicated','Dual-Homed','Synchronous',
	'Bidirectional','Serial','Asynchronous','Multiple','Replicated',
	'Non-Replicated','Unregistered','Non-Specific','Generic','Migrated',
	'Localised','Resignalled','Dereferenced','Nullified','Aborted','Serious',
	'Minor','Major','Extraneous','Illegal','Insufficient','Viral',
	'Unsupported','Outmoded','Legacy','Permanent','Invalid','Deprecated',
	'Virtual','Unreportable','Undetermined','Undiagnosable','Unfiltered',
	'Static','Dynamic','Delayed','Immediate','Nonfatal','Fatal','Non-Valid',
	'Unvalidated','Non-Static','Unreplicatable','Non-Serious']
columnB = ['Array','Systems','Hardware','Software','Firmware','Backplane',
	'Logic-Subsystem','Integrity','Subsystem','Memory','Comms','Integrity',
	'Checksum','Protocol','Parity','Bus','Timing','Synchronisation','Topology',
	'Transmission','Reception','Stack','Framing','Code','Programming',
	'Peripheral','Environmental','Loading','Operation','Parameter','Syntax',
	'Initialisation','Execution','Resource','Encryption','Decryption','File',
	'Precondition','Authentication','Paging','Swapfile','Service','Gateway',
	'Request','Proxy','Media','Registry','Configuration','Metadata',
	'Streaming','Retrieval','Installation','Library','Handler']
columnC = ['Interruption','Destabilisation','Destruction','Desynchronisation',
	'Failure','Dereferencing','Overflow','Underflow','NMI','Interrupt',
	'Corruption','Anomaly','Seizure','Override','Reclock','Rejection',
	'Invalidation','Halt','Exhaustion','Infection','Incompatibility',
	'Timeout','Expiry','Unavailability','Bug','Condition','Crash','Dump',
	'Crashdump','Stackdump','Problem','Lockout']
columnD = ['Error','Problem','Warning','Signal','Flag']

bofhExcuse = columnA[randint(0,len(columnA)-1)]+' '
bofhExcuse += columnB[randint(0,len(columnB)-1)]+' '
bofhExcuse += columnC[randint(0,len(columnC)-1)]+' '
if(randint(0,100) > 80):
	bofhExcuse += columnD[randint(0,len(columnD)-1)]
print 'Today\'s issue is: '+bofhExcuse