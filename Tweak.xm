%hook SBApplication // SBLeafIconDataSource protocol

- (NSString *)iconDisplayName:(NSString *)name {
	return [%orig(name) lowercaseString];
}

%end

%hook SBApplicationPlaceholder

- (NSString *)iconDisplayName:(NSString *)name {
	return [%orig(name) lowercaseString];
}

%end

%hook SBBookmark

- (NSString *)iconDisplayName:(NSString *)name {
	return [%orig(name) lowercaseString];
}

%end

%hook SBStarkIconController

- (NSString *)iconDisplayName:(NSString *)name {
	return [%orig(name) lowercaseString];
}

%end

%hook SBFolder

- (NSString *)displayName {
	return [%orig() lowercaseString];
}

%end

%hook SBFolderIcon

- (NSString *)displayName {
	return [%orig() lowercaseString];
}

%end

%hook SBNewsstandIcon

- (NSString *)displayName {
	return [%orig() lowercaseString];
}

%end

%hook SBBulletinListSection

- (NSString *)displayName {
	return [%orig() lowercaseString];
}

%end

%hook BBBulletin

- (NSString *)title {
	return [%orig() lowercaseString];
}
- (NSString *)subtitle {
	return [%orig() lowercaseString];
}
- (NSString *)message {
	return [%orig() lowercaseString];
}
- (NSString *)alternateActionLabel {
	return [%orig() lowercaseString];
}
- (NSString *)actionUnlockLabel {
	return [%orig() lowercaseString];
}
- (NSString *)fullAlternateActionLabel {
	return [%orig() lowercaseString];
}
- (NSString *)fullUnlockActionLabel {
	return [%orig() lowercaseString];
}
- (NSString *)sectionDisplayName {
	return [%orig() lowercaseString];
}
- (NSString *)topic {
	return [%orig() lowercaseString];
}
- (NSString *)unlockActionLabelOverride {
	return [%orig() lowercaseString];
}

%end

/*
// False alarm.
%hook SBFLockScreenSimpleDateFormatter

- (NSString *)formatDateAsDayOfWeekMonthDayStyle:(id)arg1 {
	return [%orig(arg1) lowercaseString];
}
- (NSString *)formatDateAsTimeNoAMPM:(id)arg1 { 
	return [%orig(arg1) lowercaseString];
}

%end
*/
/*
// Unecessary.
%hook SBLeafIcon

- (NSString *)displayName {
	return [%orig() lowercaseString];
}

%end
*/

%hook UIStatusBarTimeItemView

- (id)contentsImage {
	NSString *&_timeString = MSHookIvar<NSString *>(self, "_timeString");
	NSString *_lower = [[_timeString lowercaseString] retain];
	[_timeString release];
	_timeString = _lower;
	return %orig();
}

%end