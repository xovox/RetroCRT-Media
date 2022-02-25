#!/bin/bash

# https://gist.github.com/TimothyRHuertas/b22e1a252447ab97aa0f8de7c65f96b8
# https://unix.stackexchange.com/questions/190431/convert-a-video-to-a-fixed-screen-size-by-cropping-and-resizing
# https://video.stackexchange.com/questions/4563/how-can-i-crop-a-video-with-ffmpeg

oiaudsfoiuasdfoiuasdf() {
eval $(ffprobe -loglevel quiet -i 20210402_092633.mp4 -show_entries stream=width,height -of default=nw=1 | sed 's/^/oogie_/')
width_new=$[ ($height / 3) * 4 ]
width_crop=$[ ($width - $width_new) / 2 ]
echo oogie crop $width_new:$height:$width_crop:0

}
##############################################################################
#V#
#V# oogie 0.3 (c) 2015 duncan brown (http://duncanbrown.org)
#V#
#H# oogie is a wrapper to simplify interaction with ffmpeg, whose command line
#H# arguments can get quite cumbersome.  you can supply options in any order
#H# that you desire as long as the filename is the last one.  this script was
#H# born as a sort of 'bookmark script' to help me keep track of ffmpeg flags
#H# that got me to where i wanted to be with transcoding which is why it's so
#H# verbose about what flags it's adding to the command line & then displays
#H# the final ffmpeg command line while executing.
#H#
##############################################################################
###
#V# This free software comes with ABSOLUTELY NO WARRANTY & you are welcome to
#V# redistribute it under certain conditions; for details type 'oogie gpl'.
#V#
#G# This program is free software: you can redistribute it and/or modify
#G# it under the terms of the GNU General Public License as published by
#G# the Free Software Foundation, either version 3 of the License, or
#G# (at your option) any later version.
#G# 
#G# This program is distributed in the hope that it will be useful,
#G# but WITHOUT ANY WARRANTY; without even the implied warranty of
#G# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#G# GNU General Public License for more details.
#G# 
#G# You should have received a copy of the GNU General Public License
#G# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#G#
##############################################################################
###
#G#	GNU GENERAL PUBLIC LICENSE
#G#	
#G#	Version 3, 29 June 2007
#G#	
#G#	Copyright © 2007 Free Software Foundation, Inc. <http://fsf.org/>
#G#	
#G#	Everyone is permitted to copy and distribute verbatim copies of this 
#G#	license document, but changing it is not allowed.
#G#	
#G#	Preamble
#G#	
#G#	The GNU General Public License is a free, copyleft license for 
#G#	software and other kinds of works.
#G#	
#G#	The licenses for most software and other practical works are designed 
#G#	to take away your freedom to share and change the works. By contrast, 
#G#	the GNU General Public License is intended to guarantee your freedom 
#G#	to share and change all versions of a program--to make sure it 
#G#	remains free software for all its users. We, the Free Software 
#G#	Foundation, use the GNU General Public License for most of our 
#G#	software; it applies also to any other work released this way by its 
#G#	authors. You can apply it to your programs, too.
#G#	
#G#	When we speak of free software, we are referring to freedom, not 
#G#	price. Our General Public Licenses are designed to make sure that you 
#G#	have the freedom to distribute copies of free software (and charge 
#G#	for them if you wish), that you receive source code or can get it if 
#G#	you want it, that you can change the software or use pieces of it in 
#G#	new free programs, and that you know you can do these things.
#G#	
#G#	To protect your rights, we need to prevent others from denying you 
#G#	these rights or asking you to surrender the rights. Therefore, you 
#G#	have certain responsibilities if you distribute copies of the 
#G#	software, or if you modify it: responsibilities to respect the 
#G#	freedom of others.
#G#	
#G#	For example, if you distribute copies of such a program, whether 
#G#	gratis or for a fee, you must pass on to the recipients the same 
#G#	freedoms that you received. You must make sure that they, too, 
#G#	receive or can get the source code. And you must show them these 
#G#	terms so they know their rights.
#G#	
#G#	Developers that use the GNU GPL protect your rights with two steps: 
#G#	(1) assert copyright on the software, and (2) offer you this License 
#G#	giving you legal permission to copy, distribute and/or modify it.
#G#	
#G#	For the developers' and authors' protection, the GPL clearly explains 
#G#	that there is no warranty for this free software. For both users' and 
#G#	authors' sake, the GPL requires that modified versions be marked as 
#G#	changed, so that their problems will not be attributed erroneously to 
#G#	authors of previous versions.
#G#	
#G#	Some devices are designed to deny users access to install or run 
#G#	modified versions of the software inside them, although the 
#G#	manufacturer can do so. This is fundamentally incompatible with the 
#G#	aim of protecting users' freedom to change the software. The 
#G#	systematic pattern of such abuse occurs in the area of products for 
#G#	individuals to use, which is precisely where it is most unacceptable. 
#G#	Therefore, we have designed this version of the GPL to prohibit the 
#G#	practice for those products. If such problems arise substantially in 
#G#	other domains, we stand ready to extend this provision to those 
#G#	domains in future versions of the GPL, as needed to protect the 
#G#	freedom of users.
#G#	
#G#	Finally, every program is threatened constantly by software patents. 
#G#	States should not allow patents to restrict development and use of 
#G#	software on general-purpose computers, but in those that do, we wish 
#G#	to avoid the special danger that patents applied to a free program 
#G#	could make it effectively proprietary. To prevent this, the GPL 
#G#	assures that patents cannot be used to render the program non-free.
#G#	
#G#	The precise terms and conditions for copying, distribution and 
#G#	modification follow.
#G#	
#G#	TERMS AND CONDITIONS
#G#	
#G#	0. Definitions.
#G#	“This License” refers to version 3 of the GNU General Public 
#G#	License.
#G#	
#G#	“Copyright” also means copyright-like laws that apply to other 
#G#	kinds of works, such as semiconductor masks.
#G#	
#G#	“The Program” refers to any copyrightable work licensed under 
#G#	this License. Each licensee is addressed as “you”. 
#G#	“Licensees” and “recipients” may be individuals or 
#G#	organizations.
#G#	
#G#	To “modify” a work means to copy from or adapt all or part of the 
#G#	work in a fashion requiring copyright permission, other than the 
#G#	making of an exact copy. The resulting work is called a “modified 
#G#	version” of the earlier work or a work “based on” the earlier 
#G#	work.
#G#	
#G#	A “covered work” means either the unmodified Program or a work 
#G#	based on the Program.
#G#	
#G#	To “propagate” a work means to do anything with it that, without 
#G#	permission, would make you directly or secondarily liable for 
#G#	infringement under applicable copyright law, except executing it on a 
#G#	computer or modifying a private copy. Propagation includes copying, 
#G#	distribution (with or without modification), making available to the 
#G#	public, and in some countries other activities as well.
#G#	
#G#	To “convey” a work means any kind of propagation that enables 
#G#	other parties to make or receive copies. Mere interaction with a user 
#G#	through a computer network, with no transfer of a copy, is not 
#G#	conveying.
#G#	
#G#	An interactive user interface displays “Appropriate Legal 
#G#	Notices” to the extent that it includes a convenient and 
#G#	prominently visible feature that (1) displays an appropriate 
#G#	copyright notice, and (2) tells the user that there is no warranty 
#G#	for the work (except to the extent that warranties are provided), 
#G#	that licensees may convey the work under this License, and how to 
#G#	view a copy of this License. If the interface presents a list of user 
#G#	commands or options, such as a menu, a prominent item in the list 
#G#	meets this criterion.
#G#	
#G#	1. Source Code.
#G#	The “source code” for a work means the preferred form of the work 
#G#	for making modifications to it. “Object code” means any 
#G#	non-source form of a work.
#G#	
#G#	A “Standard Interface” means an interface that either is an 
#G#	official standard defined by a recognized standards body, or, in the 
#G#	case of interfaces specified for a particular programming language, 
#G#	one that is widely used among developers working in that language.
#G#	
#G#	The “System Libraries” of an executable work include anything, 
#G#	other than the work as a whole, that (a) is included in the normal 
#G#	form of packaging a Major Component, but which is not part of that 
#G#	Major Component, and (b) serves only to enable use of the work with 
#G#	that Major Component, or to implement a Standard Interface for which 
#G#	an implementation is available to the public in source code form. A 
#G#	“Major Component”, in this context, means a major essential 
#G#	component (kernel, window system, and so on) of the specific 
#G#	operating system (if any) on which the executable work runs, or a 
#G#	compiler used to produce the work, or an object code interpreter used 
#G#	to run it.
#G#	
#G#	The “Corresponding Source” for a work in object code form means 
#G#	all the source code needed to generate, install, and (for an 
#G#	executable work) run the object code and to modify the work, 
#G#	including scripts to control those activities. However, it does not 
#G#	include the work's System Libraries, or general-purpose tools or 
#G#	generally available free programs which are used unmodified in 
#G#	performing those activities but which are not part of the work. For 
#G#	example, Corresponding Source includes interface definition files 
#G#	associated with source files for the work, and the source code for 
#G#	shared libraries and dynamically linked subprograms that the work is 
#G#	specifically designed to require, such as by intimate data 
#G#	communication or control flow between those subprograms and other 
#G#	parts of the work.
#G#	
#G#	The Corresponding Source need not include anything that users can 
#G#	regenerate automatically from other parts of the Corresponding Source.
#G#	
#G#	The Corresponding Source for a work in source code form is that same 
#G#	work.
#G#	
#G#	2. Basic Permissions.
#G#	All rights granted under this License are granted for the term of 
#G#	copyright on the Program, and are irrevocable provided the stated 
#G#	conditions are met. This License explicitly affirms your unlimited 
#G#	permission to run the unmodified Program. The output from running a 
#G#	covered work is covered by this License only if the output, given its 
#G#	content, constitutes a covered work. This License acknowledges your 
#G#	rights of fair use or other equivalent, as provided by copyright law.
#G#	
#G#	You may make, run and propagate covered works that you do not convey, 
#G#	without conditions so long as your license otherwise remains in 
#G#	force. You may convey covered works to others for the sole purpose of 
#G#	having them make modifications exclusively for you, or provide you 
#G#	with facilities for running those works, provided that you comply 
#G#	with the terms of this License in conveying all material for which 
#G#	you do not control copyright. Those thus making or running the 
#G#	covered works for you must do so exclusively on your behalf, under 
#G#	your direction and control, on terms that prohibit them from making 
#G#	any copies of your copyrighted material outside their relationship 
#G#	with you.
#G#	
#G#	Conveying under any other circumstances is permitted solely under the 
#G#	conditions stated below. Sublicensing is not allowed; section 10 
#G#	makes it unnecessary.
#G#	
#G#	3. Protecting Users' Legal Rights From Anti-Circumvention Law.
#G#	No covered work shall be deemed part of an effective technological 
#G#	measure under any applicable law fulfilling obligations under article 
#G#	11 of the WIPO copyright treaty adopted on 20 December 1996, or 
#G#	similar laws prohibiting or restricting circumvention of such 
#G#	measures.
#G#	
#G#	When you convey a covered work, you waive any legal power to forbid 
#G#	circumvention of technological measures to the extent such 
#G#	circumvention is effected by exercising rights under this License 
#G#	with respect to the covered work, and you disclaim any intention to 
#G#	limit operation or modification of the work as a means of enforcing, 
#G#	against the work's users, your or third parties' legal rights to 
#G#	forbid circumvention of technological measures.
#G#	
#G#	4. Conveying Verbatim Copies.
#G#	You may convey verbatim copies of the Program's source code as you 
#G#	receive it, in any medium, provided that you conspicuously and 
#G#	appropriately publish on each copy an appropriate copyright notice; 
#G#	keep intact all notices stating that this License and any 
#G#	non-permissive terms added in accord with section 7 apply to the 
#G#	code; keep intact all notices of the absence of any warranty; and 
#G#	give all recipients a copy of this License along with the Program.
#G#	
#G#	You may charge any price or no price for each copy that you convey, 
#G#	and you may offer support or warranty protection for a fee.
#G#	
#G#	5. Conveying Modified Source Versions.
#G#	You may convey a work based on the Program, or the modifications to 
#G#	produce it from the Program, in the form of source code under the 
#G#	terms of section 4, provided that you also meet all of these 
#G#	conditions:
#G#	
#G#	a) The work must carry prominent notices stating that you modified 
#G#	it, and giving a relevant date.
#G#	b) The work must carry prominent notices stating that it is released 
#G#	under this License and any conditions added under section 7. This 
#G#	requirement modifies the requirement in section 4 to “keep intact 
#G#	all notices”.
#G#	c) You must license the entire work, as a whole, under this License 
#G#	to anyone who comes into possession of a copy. This License will 
#G#	therefore apply, along with any applicable section 7 additional 
#G#	terms, to the whole of the work, and all its parts, regardless of how 
#G#	they are packaged. This License gives no permission to license the 
#G#	work in any other way, but it does not invalidate such permission if 
#G#	you have separately received it.
#G#	d) If the work has interactive user interfaces, each must display 
#G#	Appropriate Legal Notices; however, if the Program has interactive 
#G#	interfaces that do not display Appropriate Legal Notices, your work 
#G#	need not make them do so.
#G#	A compilation of a covered work with other separate and independent 
#G#	works, which are not by their nature extensions of the covered work, 
#G#	and which are not combined with it such as to form a larger program, 
#G#	in or on a volume of a storage or distribution medium, is called an 
#G#	“aggregate” if the compilation and its resulting copyright are 
#G#	not used to limit the access or legal rights of the compilation's 
#G#	users beyond what the individual works permit. Inclusion of a covered 
#G#	work in an aggregate does not cause this License to apply to the 
#G#	other parts of the aggregate.
#G#	
#G#	6. Conveying Non-Source Forms.
#G#	You may convey a covered work in object code form under the terms of 
#G#	sections 4 and 5, provided that you also convey the machine-readable 
#G#	Corresponding Source under the terms of this License, in one of these 
#G#	ways:
#G#	
#G#	a) Convey the object code in, or embodied in, a physical product 
#G#	(including a physical distribution medium), accompanied by the 
#G#	Corresponding Source fixed on a durable physical medium customarily 
#G#	used for software interchange.
#G#	b) Convey the object code in, or embodied in, a physical product 
#G#	(including a physical distribution medium), accompanied by a written 
#G#	offer, valid for at least three years and valid for as long as you 
#G#	offer spare parts or customer support for that product model, to give 
#G#	anyone who possesses the object code either (1) a copy of the 
#G#	Corresponding Source for all the software in the product that is 
#G#	covered by this License, on a durable physical medium customarily 
#G#	used for software interchange, for a price no more than your 
#G#	reasonable cost of physically performing this conveying of source, or 
#G#	(2) access to copy the Corresponding Source from a network server at 
#G#	no charge.
#G#	c) Convey individual copies of the object code with a copy of the 
#G#	written offer to provide the Corresponding Source. This alternative 
#G#	is allowed only occasionally and noncommercially, and only if you 
#G#	received the object code with such an offer, in accord with 
#G#	subsection 6b.
#G#	d) Convey the object code by offering access from a designated place 
#G#	(gratis or for a charge), and offer equivalent access to the 
#G#	Corresponding Source in the same way through the same place at no 
#G#	further charge. You need not require recipients to copy the 
#G#	Corresponding Source along with the object code. If the place to copy 
#G#	the object code is a network server, the Corresponding Source may be 
#G#	on a different server (operated by you or a third party) that 
#G#	supports equivalent copying facilities, provided you maintain clear 
#G#	directions next to the object code saying where to find the 
#G#	Corresponding Source. Regardless of what server hosts the 
#G#	Corresponding Source, you remain obligated to ensure that it is 
#G#	available for as long as needed to satisfy these requirements.
#G#	e) Convey the object code using peer-to-peer transmission, provided 
#G#	you inform other peers where the object code and Corresponding Source 
#G#	of the work are being offered to the general public at no charge 
#G#	under subsection 6d.
#G#	A separable portion of the object code, whose source code is excluded 
#G#	from the Corresponding Source as a System Library, need not be 
#G#	included in conveying the object code work.
#G#	
#G#	A “User Product” is either (1) a “consumer product”, which 
#G#	means any tangible personal property which is normally used for 
#G#	personal, family, or household purposes, or (2) anything designed or 
#G#	sold for incorporation into a dwelling. In determining whether a 
#G#	product is a consumer product, doubtful cases shall be resolved in 
#G#	favor of coverage. For a particular product received by a particular 
#G#	user, “normally used” refers to a typical or common use of that 
#G#	class of product, regardless of the status of the particular user or 
#G#	of the way in which the particular user actually uses, or expects or 
#G#	is expected to use, the product. A product is a consumer product 
#G#	regardless of whether the product has substantial commercial, 
#G#	industrial or non-consumer uses, unless such uses represent the only 
#G#	significant mode of use of the product.
#G#	
#G#	“Installation Information” for a User Product means any methods, 
#G#	procedures, authorization keys, or other information required to 
#G#	install and execute modified versions of a covered work in that User 
#G#	Product from a modified version of its Corresponding Source. The 
#G#	information must suffice to ensure that the continued functioning of 
#G#	the modified object code is in no case prevented or interfered with 
#G#	solely because modification has been made.
#G#	
#G#	If you convey an object code work under this section in, or with, or 
#G#	specifically for use in, a User Product, and the conveying occurs as 
#G#	part of a transaction in which the right of possession and use of the 
#G#	User Product is transferred to the recipient in perpetuity or for a 
#G#	fixed term (regardless of how the transaction is characterized), the 
#G#	Corresponding Source conveyed under this section must be accompanied 
#G#	by the Installation Information. But this requirement does not apply 
#G#	if neither you nor any third party retains the ability to install 
#G#	modified object code on the User Product (for example, the work has 
#G#	been installed in ROM).
#G#	
#G#	The requirement to provide Installation Information does not include 
#G#	a requirement to continue to provide support service, warranty, or 
#G#	updates for a work that has been modified or installed by the 
#G#	recipient, or for the User Product in which it has been modified or 
#G#	installed. Access to a network may be denied when the modification 
#G#	itself materially and adversely affects the operation of the network 
#G#	or violates the rules and protocols for communication across the 
#G#	network.
#G#	
#G#	Corresponding Source conveyed, and Installation Information provided, 
#G#	in accord with this section must be in a format that is publicly 
#G#	documented (and with an implementation available to the public in 
#G#	source code form), and must require no special password or key for 
#G#	unpacking, reading or copying.
#G#	
#G#	7. Additional Terms.
#G#	“Additional permissions” are terms that supplement the terms of 
#G#	this License by making exceptions from one or more of its conditions. 
#G#	Additional permissions that are applicable to the entire Program 
#G#	shall be treated as though they were included in this License, to the 
#G#	extent that they are valid under applicable law. If additional 
#G#	permissions apply only to part of the Program, that part may be used 
#G#	separately under those permissions, but the entire Program remains 
#G#	governed by this License without regard to the additional permissions.
#G#	
#G#	When you convey a copy of a covered work, you may at your option 
#G#	remove any additional permissions from that copy, or from any part of 
#G#	it. (Additional permissions may be written to require their own 
#G#	removal in certain cases when you modify the work.) You may place 
#G#	additional permissions on material, added by you to a covered work, 
#G#	for which you have or can give appropriate copyright permission.
#G#	
#G#	Notwithstanding any other provision of this License, for material you 
#G#	add to a covered work, you may (if authorized by the copyright 
#G#	holders of that material) supplement the terms of this License with 
#G#	terms:
#G#	
#G#	a) Disclaiming warranty or limiting liability differently from the 
#G#	terms of sections 15 and 16 of this License; or
#G#	b) Requiring preservation of specified reasonable legal notices or 
#G#	author attributions in that material or in the Appropriate Legal 
#G#	Notices displayed by works containing it; or
#G#	c) Prohibiting misrepresentation of the origin of that material, or 
#G#	requiring that modified versions of such material be marked in 
#G#	reasonable ways as different from the original version; or
#G#	d) Limiting the use for publicity purposes of names of licensors or 
#G#	authors of the material; or
#G#	e) Declining to grant rights under trademark law for use of some 
#G#	trade names, trademarks, or service marks; or
#G#	f) Requiring indemnification of licensors and authors of that 
#G#	material by anyone who conveys the material (or modified versions of 
#G#	it) with contractual assumptions of liability to the recipient, for 
#G#	any liability that these contractual assumptions directly impose on 
#G#	those licensors and authors.
#G#	All other non-permissive additional terms are considered “further 
#G#	restrictions” within the meaning of section 10. If the Program as 
#G#	you received it, or any part of it, contains a notice stating that it 
#G#	is governed by this License along with a term that is a further 
#G#	restriction, you may remove that term. If a license document contains 
#G#	a further restriction but permits relicensing or conveying under this 
#G#	License, you may add to a covered work material governed by the terms 
#G#	of that license document, provided that the further restriction does 
#G#	not survive such relicensing or conveying.
#G#	
#G#	If you add terms to a covered work in accord with this section, you 
#G#	must place, in the relevant source files, a statement of the 
#G#	additional terms that apply to those files, or a notice indicating 
#G#	where to find the applicable terms.
#G#	
#G#	Additional terms, permissive or non-permissive, may be stated in the 
#G#	form of a separately written license, or stated as exceptions; the 
#G#	above requirements apply either way.
#G#	
#G#	8. Termination.
#G#	You may not propagate or modify a covered work except as expressly 
#G#	provided under this License. Any attempt otherwise to propagate or 
#G#	modify it is void, and will automatically terminate your rights under 
#G#	this License (including any patent licenses granted under the third 
#G#	paragraph of section 11).
#G#	
#G#	However, if you cease all violation of this License, then your 
#G#	license from a particular copyright holder is reinstated (a) 
#G#	provisionally, unless and until the copyright holder explicitly and 
#G#	finally terminates your license, and (b) permanently, if the 
#G#	copyright holder fails to notify you of the violation by some 
#G#	reasonable means prior to 60 days after the cessation.
#G#	
#G#	Moreover, your license from a particular copyright holder is 
#G#	reinstated permanently if the copyright holder notifies you of the 
#G#	violation by some reasonable means, this is the first time you have 
#G#	received notice of violation of this License (for any work) from that 
#G#	copyright holder, and you cure the violation prior to 30 days after 
#G#	your receipt of the notice.
#G#	
#G#	Termination of your rights under this section does not terminate the 
#G#	licenses of parties who have received copies or rights from you under 
#G#	this License. If your rights have been terminated and not permanently 
#G#	reinstated, you do not qualify to receive new licenses for the same 
#G#	material under section 10.
#G#	
#G#	9. Acceptance Not Required for Having Copies.
#G#	You are not required to accept this License in order to receive or 
#G#	run a copy of the Program. Ancillary propagation of a covered work 
#G#	occurring solely as a consequence of using peer-to-peer transmission 
#G#	to receive a copy likewise does not require acceptance. However, 
#G#	nothing other than this License grants you permission to propagate or 
#G#	modify any covered work. These actions infringe copyright if you do 
#G#	not accept this License. Therefore, by modifying or propagating a 
#G#	covered work, you indicate your acceptance of this License to do so.
#G#	
#G#	10. Automatic Licensing of Downstream Recipients.
#G#	Each time you convey a covered work, the recipient automatically 
#G#	receives a license from the original licensors, to run, modify and 
#G#	propagate that work, subject to this License. You are not responsible 
#G#	for enforcing compliance by third parties with this License.
#G#	
#G#	An “entity transaction” is a transaction transferring control of 
#G#	an organization, or substantially all assets of one, or subdividing 
#G#	an organization, or merging organizations. If propagation of a 
#G#	covered work results from an entity transaction, each party to that 
#G#	transaction who receives a copy of the work also receives whatever 
#G#	licenses to the work the party's predecessor in interest had or could 
#G#	give under the previous paragraph, plus a right to possession of the 
#G#	Corresponding Source of the work from the predecessor in interest, if 
#G#	the predecessor has it or can get it with reasonable efforts.
#G#	
#G#	You may not impose any further restrictions on the exercise of the 
#G#	rights granted or affirmed under this License. For example, you may 
#G#	not impose a license fee, royalty, or other charge for exercise of 
#G#	rights granted under this License, and you may not initiate 
#G#	litigation (including a cross-claim or counterclaim in a lawsuit) 
#G#	alleging that any patent claim is infringed by making, using, 
#G#	selling, offering for sale, or importing the Program or any portion 
#G#	of it.
#G#	
#G#	11. Patents.
#G#	A “contributor” is a copyright holder who authorizes use under 
#G#	this License of the Program or a work on which the Program is based. 
#G#	The work thus licensed is called the contributor's “contributor 
#G#	version”.
#G#	
#G#	A contributor's “essential patent claims” are all patent claims 
#G#	owned or controlled by the contributor, whether already acquired or 
#G#	hereafter acquired, that would be infringed by some manner, permitted 
#G#	by this License, of making, using, or selling its contributor 
#G#	version, but do not include claims that would be infringed only as a 
#G#	consequence of further modification of the contributor version. For 
#G#	purposes of this definition, “control” includes the right to 
#G#	grant patent sublicenses in a manner consistent with the requirements 
#G#	of this License.
#G#	
#G#	Each contributor grants you a non-exclusive, worldwide, royalty-free 
#G#	patent license under the contributor's essential patent claims, to 
#G#	make, use, sell, offer for sale, import and otherwise run, modify and 
#G#	propagate the contents of its contributor version.
#G#	
#G#	In the following three paragraphs, a “patent license” is any 
#G#	express agreement or commitment, however denominated, not to enforce 
#G#	a patent (such as an express permission to practice a patent or 
#G#	covenant not to sue for patent infringement). To “grant” such a 
#G#	patent license to a party means to make such an agreement or 
#G#	commitment not to enforce a patent against the party.
#G#	
#G#	If you convey a covered work, knowingly relying on a patent license, 
#G#	and the Corresponding Source of the work is not available for anyone 
#G#	to copy, free of charge and under the terms of this License, through 
#G#	a publicly available network server or other readily accessible 
#G#	means, then you must either (1) cause the Corresponding Source to be 
#G#	so available, or (2) arrange to deprive yourself of the benefit of 
#G#	the patent license for this particular work, or (3) arrange, in a 
#G#	manner consistent with the requirements of this License, to extend 
#G#	the patent license to downstream recipients. “Knowingly relying” 
#G#	means you have actual knowledge that, but for the patent license, 
#G#	your conveying the covered work in a country, or your recipient's use 
#G#	of the covered work in a country, would infringe one or more 
#G#	identifiable patents in that country that you have reason to believe 
#G#	are valid.
#G#	
#G#	If, pursuant to or in connection with a single transaction or 
#G#	arrangement, you convey, or propagate by procuring conveyance of, a 
#G#	covered work, and grant a patent license to some of the parties 
#G#	receiving the covered work authorizing them to use, propagate, modify 
#G#	or convey a specific copy of the covered work, then the patent 
#G#	license you grant is automatically extended to all recipients of the 
#G#	covered work and works based on it.
#G#	
#G#	A patent license is “discriminatory” if it does not include 
#G#	within the scope of its coverage, prohibits the exercise of, or is 
#G#	conditioned on the non-exercise of one or more of the rights that are 
#G#	specifically granted under this License. You may not convey a covered 
#G#	work if you are a party to an arrangement with a third party that is 
#G#	in the business of distributing software, under which you make 
#G#	payment to the third party based on the extent of your activity of 
#G#	conveying the work, and under which the third party grants, to any of 
#G#	the parties who would receive the covered work from you, a 
#G#	discriminatory patent license (a) in connection with copies of the 
#G#	covered work conveyed by you (or copies made from those copies), or 
#G#	(b) primarily for and in connection with specific products or 
#G#	compilations that contain the covered work, unless you entered into 
#G#	that arrangement, or that patent license was granted, prior to 28 
#G#	March 2007.
#G#	
#G#	Nothing in this License shall be construed as excluding or limiting 
#G#	any implied license or other defenses to infringement that may 
#G#	otherwise be available to you under applicable patent law.
#G#	
#G#	12. No Surrender of Others' Freedom.
#G#	If conditions are imposed on you (whether by court order, agreement 
#G#	or otherwise) that contradict the conditions of this License, they do 
#G#	not excuse you from the conditions of this License. If you cannot 
#G#	convey a covered work so as to satisfy simultaneously your 
#G#	obligations under this License and any other pertinent obligations, 
#G#	then as a consequence you may not convey it at all. For example, if 
#G#	you agree to terms that obligate you to collect a royalty for further 
#G#	conveying from those to whom you convey the Program, the only way you 
#G#	could satisfy both those terms and this License would be to refrain 
#G#	entirely from conveying the Program.
#G#	
#G#	13. Use with the GNU Affero General Public License.
#G#	Notwithstanding any other provision of this License, you have 
#G#	permission to link or combine any covered work with a work licensed 
#G#	under version 3 of the GNU Affero General Public License into a 
#G#	single combined work, and to convey the resulting work. The terms of 
#G#	this License will continue to apply to the part which is the covered 
#G#	work, but the special requirements of the GNU Affero General Public 
#G#	License, section 13, concerning interaction through a network will 
#G#	apply to the combination as such.
#G#	
#G#	14. Revised Versions of this License.
#G#	The Free Software Foundation may publish revised and/or new versions 
#G#	of the GNU General Public License from time to time. Such new 
#G#	versions will be similar in spirit to the present version, but may 
#G#	differ in detail to address new problems or concerns.
#G#	
#G#	Each version is given a distinguishing version number. If the Program 
#G#	specifies that a certain numbered version of the GNU General Public 
#G#	License “or any later version” applies to it, you have the option 
#G#	of following the terms and conditions either of that numbered version 
#G#	or of any later version published by the Free Software Foundation. If 
#G#	the Program does not specify a version number of the GNU General 
#G#	Public License, you may choose any version ever published by the Free 
#G#	Software Foundation.
#G#	
#G#	If the Program specifies that a proxy can decide which future 
#G#	versions of the GNU General Public License can be used, that proxy's 
#G#	public statement of acceptance of a version permanently authorizes 
#G#	you to choose that version for the Program.
#G#	
#G#	Later license versions may give you additional or different 
#G#	permissions. However, no additional obligations are imposed on any 
#G#	author or copyright holder as a result of your choosing to follow a 
#G#	later version.
#G#	
#G#	15. Disclaimer of Warranty.
#G#	THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY 
#G#	APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT 
#G#	HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT 
#G#	WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT 
#G#	LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR 
#G#	A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND 
#G#	PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE 
#G#	DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR 
#G#	CORRECTION.
#G#	
#G#	16. Limitation of Liability.
#G#	IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING 
#G#	WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR 
#G#	CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, 
#G#	INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES 
#G#	ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT 
#G#	NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR 
#G#	LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM 
#G#	TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER 
#G#	PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
#G#	
#G#	17. Interpretation of Sections 15 and 16.
#G#	If the disclaimer of warranty and limitation of liability provided 
#G#	above cannot be given local legal effect according to their terms, 
#G#	reviewing courts shall apply local law that most closely approximates 
#G#	an absolute waiver of all civil liability in connection with the 
#G#	Program, unless a warranty or assumption of liability accompanies a 
#G#	copy of the Program in return for a fee.
#G#	
#G#	END OF TERMS AND CONDITIONS
#G#
##############################################################################
###
### would be neat to have a NES/SNES/Genesis video option, resolution plus
### color pallette
### http://stackoverflow.com/questions/9093549/ffmpeg-how-to-add-pixellate-effect
###
### http://stackoverflow.com/questions/15778774/using-ffmpeg-to-losslessly-convert-yuv-to-another-format-for-editing-in-adobe-pr
###
#H# examples:
#H#
#H#	- show the default audio & video channel/bitrate options
#H#
#H#		oogie defaults
#H#
#H#	- make an mkv copy of a file.   you can also use ogv, webm, m2ts, mp4
#H#
#H#		oogie mkv "my video.mpeg"
#H#
#H#	- make a dvd compliant video
#H#
#H#		oogie dvd ntsc "my video.mkv"
#H#		oogie dvd pal "my video.mkv"
#H#
#H#	- make an mp3 copy of a file.   you can also use flac, mp3, ogg, wav,
#H#	  m4a & alac
#H#
#H#		oogie mp3 "my audio.flac"
#H#
#H#	- use a preset for h264/265 (mkv & mp4)
#H#
#H#		oogie preset medium mkv "my video.mpeg"
#H#
#H#	- the same, but set audio bitrate to 192k & video to 2500k
#A#
#A#	  for 720p video with 2 audio channels, i normally use 'vb 4300k', i
#A#	  normally use 10000k for 1080p, 720p gets 4500k, 480i/p gets 1750k.
#H#
#H#		oogie ab 192k vb 2500k mkv "my video.mpeg"
#H#
#H#	- output file to a different directory than the current
#H#
#H#		oogie ab 192k vb 2500k mkv od /tmp/output_dir "my video.mpeg"
#H#
#F#	- scale video to 360 vertical lines, you can also use 360, 480, 540, 720 or 1080
#A#
#A#	  for custom vertical resolutions like 835, use 'vf scale=-1:835' as a
#A#	  custom video filter
#F#
#F#		oogie 360 mkv "my video.mpeg"
#F#
#F#	- deinterlace :: automatically deinterlace video (or shortened to 'deint')
#F#
#F#		oogie deinterlace mkv "my video.mpeg"
#F#
#F#	- deintdetect :: analyze video for interlaced frames (or shortened to 'deintdet')
#F#
#F#		oogie deintdetect "my video.mpeg"
#F#
#F#	- ac :: mix audio to 4 channels 
#F#
#F#		oogie ac 4 mkv "my video.mpeg"
#F#
#F#	- th :: limit ffmpeg to a maximum of 3 threads
#F#
#F#		oogie mkv deint th 3 "my video.mpeg"
#F#
#F#	- print :: what the command would be, but don't execute
#F#
#F#		oogie print ac 4 mkv deint "my video.mpeg"
#F#
#F#	- rm :: remove source file after successful encoding
#F#
#F#		oogie mkv rm "my video.mpeg"
#F#
#F#	- cropdetect :: analyze 900 frames of video to figure out where the
#F#	                crop should be based on black bars
#F#
#F#		oogie cropdetect "my video.mpeg"
#F#
#F#	- crop :: crop video based on output from cropdetect flag
#F#
#F#		oogie mkv crop 1280:528:0:96 "my video.mpeg"
#F#
#F#	- x265 :: use x265 encoding, can also use hvec
#F#
#F#		oogie mkv x265 "my video.mpeg"
#F#
#Z#	- for full help
#Z#
#Z#		oogie help
#F#
#F#	- for full help plus my notes
#F#
#F#		oogie notes
#Z#
##############################################################################
###
### TODO
###
###	- add the ability to predefine & save profiles (ipod, ipodr, psp, etc)
###		oogie psp "source_file.mkv"
###			-> "source_file psp.mp4" at proper resolution
###	- reorganize conditionals and basically everything else
###
###	http://forum.doom9.org/archive/index.php/t-147460.html
###
##############################################################################

# here are some, what i hope, sane defaults
oogie_quiet="true"
crop_frame_count="500"
audio_bitrate="192k"
video_bitrate="1500k"
oogie_queue_dir="$HOME/oogie_queue"
oogie_script="$oogie_queue_dir/$(date +%Y%m%d_%H%M%S).$RANDOM"
ffmpeg_loglevel="error"
ffmpeg_nice="10"

status_color="35"
ps4_color="32"

export PS4="\[\033[1;30m\](\[\033[00m\]\[\033[${ps4_color}m\]oogie\[\033[00m\]\[\033[1;30m\])\[\033[00m\] executing: "


set-x() {
	[ ! "$oogie_shh" ] && set -x
}

dest_file_extra() {
	if [ "$dest_file_extra" ]; then
		dest_file_extra="$dest_file_extra $1"
	else
		dest_file_extra=" $1"
	fi
}

oecho() {
	if [ ! "$oogie_quiet" ]; then
		echo -ne "\033[1;30m(\033[00m\033[${status_color}moogie\033[00m\033[1;30m)\033[00m $@"
	fi
}

x265_params() {
	x265_params="$(sed 's/:\+/:/g;s/:$//;s/^://' <<< "$1")"
}

ffmpeg_args() {
	oecho "ffmpeg arg added: $@"
	arg_desc
	ffmpeg_args="$ffmpeg_args $@"
	if [ ! "$oogie_quiet" ]; then
		echo
	fi
}

ffmpeg_pre_args() {
	oecho "ffmpeg arg added: $@"
	arg_desc
	ffmpeg_pre_args="$ffmpeg_pre_args $@"
	if [ ! "$oogie_quiet" ]; then
		echo
	fi
}

arg_desc() {
	if [ "$arg_desc" -a ! "$oogie_quiet" ]; then
		echo -n " ($arg_desc)"
		unset arg_desc
	fi
}
video_filter() {
	oecho "video filter added: $@"
	arg_desc
	if [ "$video_filter" ]; then
		video_filter="$video_filter,$@"
	else
		video_filter="$@"
	fi
	if [ ! "$oogie_quiet" ]; then
		echo
	fi
}

egrep '^#V#' $0 | cut -d'#' -f3- >&2

if [ ! "$1" ]; then
	egrep '^#[HZ]' $0 | cut -d'#' -f3-
	exit
elif [ "$1" = "help" ]; then
		egrep '^#[B-UW-Y]#' $0 | cut -d'#' -f3-
		exit
elif [ "$1" = "notes" ]; then
		egrep '^#[A-FH-UW-Y]#' $0 | cut -d'#' -f3-
		exit
elif [ "$1" = "gpl" ]; then
	egrep '^#G#' $0 | cut -d'#' -f3-
	exit
elif [ "$1" = "defaults" ]; then
	{
		echo "setting value"
		echo "-------------- -----"
		echo "audio_channels $audio_channels"
		echo "audio_bitrate $audio_bitrate"
		echo "video_bitrate $video_bitrate"
	} | column -t
	echo
	exit
fi

# i'm doing things this way for fun, it's probably stupid... but it's far
# easier to add and manipulate options
while [ "$1" ] ; do
	if [ -f "$1" ]; then
		src_file="$1"
	elif [ "$1" = "verbose" ]; then
		unset oogie_quiet
	elif [ "$1" = "print" ]; then
		f_print="echo"
	elif [ "$1" = "nice" ]; then
		shift
		ffmpeg_nice="$1"
	######################################################################
	# file probing options
	######################################################################
	elif [ "$1" = "cropdetect" ]; then
		cropdetect="true"
		container_format="$cropdetect"
	elif [ "$1" = "deintdetect" ]; then
		deintdetect="true"
		container_format="deinterlace"
	######################################################################
	# video transcoding options
	######################################################################
	elif [ "$1" = "copy" ]; then
		ffmpeg_args -vcodec copy
		unset video_bitrate
	elif [[ "$1" =~ x265|hevc ]]; then
		arg_desc="use x.265 video codec"
		vcodec="x265"
		ffmpeg_args -vcodec libx265
		dest_file_extra x265
	elif [ "$1" = "preset" ]; then
		shift
		h264_preset="$1"
	elif [[ "$1" =~ ogv|webm|m2ts|mkv|mp4 ]]; then
		container_format="$1"
		output_type="video"
	elif [ "$1" = "2pass" ]; then
		two_pass="true"
	elif [ "$1" = "vcopy" ]; then
		vcopy="true"
	elif [ "$1" = "dvd" ]; then
		output_type="video"
		shift
		if [ "$1" = "ntsc" ]; then
			dvd_width=720
			dvd_height=480
		elif [ "$1" = "pal" ]; then
			dvd_width=720
			dvd_height=576
		elif [ "$1" = "film" ]; then
			dvd_width=720
			dvd_height=480
		else
			echo "Invalid DVD format specified, exiting."
			exit 255
		fi
		container_format="mpeg"
		#ffmpeg_args -f vob
		ffmpeg_args -map 0:v:0 -aspect 16:9
		arg_desc="do smart things to make this a DVD compatible video"
		ffmpeg_args -target $1-dvd
		arg_desc="add any required padding to preserve aspect ratio :: http://superuser.com/questions/547296/resizing-videos-with-ffmpeg-avconv-to-fit-into-static-sized-player"
		video_filter "scale=iw*min($dvd_width/iw\,$dvd_height/ih):ih*min($dvd_width/iw\,$dvd_height/ih),pad=$dvd_width:$dvd_height:($dvd_width-iw*min($dvd_width/iw\,$dvd_height/ih))/2:($dvd_height-ih*min($dvd_width/iw\,$dvd_height/ih))/2"
		if [ "$2" = "iso" ]; then
			shift
			# http://www.kaybee.org/~kirk/dvdauthor.html
		fi
	######################################################################
	# video processing options
	######################################################################
	elif [ "$1" = "tune" ]; then
		shift
		arg_desc="use special preset for x264/x265 to help improve encoding"
		ffmpeg_args -tune "$1"
	elif [[ "$1" =~ 240|360|480|540|720|1080 ]]; then
		# i should probably incorporate these as well
		# https://en.wikipedia.org/wiki/Low-definition_television
		scale_video="$1"
		dest_file_extra "$1"
		# these need to be in descending value, we're actually going
		# to scale based on horizontal resolution so we need to do
		# a substitution
		#scale_video=${scale_video/1080/1920}
		#scale_video=${scale_video/720/1280}
		#scale_video=${scale_video/540/720}
		#scale_video=${scale_video/480/640}
		#scale_video=${scale_video/360/480}
		#scale_video=${scale_video/240/320}
	elif [[ "$1" =~ deint.* ]]; then
		deinterlace_video="true"
	elif [ "$1" = "vf" ]; then
		arg_desc="custom video filter"
		shift
		video_filter $1
	elif [ "$1" = "vb" ]; then
		shift
		video_bitrate="$1"
	elif [ "$1" = "crop" ]; then
		shift
		crop_video="$1"
	elif [ "$1" = "autocrop" ]; then
		autocrop="true"
	elif [ "$1" = "crf" ]; then
		shift
		crf="$1"
		unset video_bitrate
	######################################################################
	# audio processing options
	######################################################################
	elif [ "$1" = "ac" ]; then
		shift
		audio_channels="$1"
	elif [ "$1" = "ab" ]; then
		shift
		audio_bitrate="$1"
	elif [ "$1" = "mono" ]; then
		audio_channels="1"
	elif [[ "$1" =~ alac|flac|m4a|mp3|ogg|wav ]]; then
		container_format="$1"
		# this should be auto-detected by our probing
		arg_desc="audio only encoding"
		ffmpeg_args -vn
	elif [ "$1" = "acopy" ]; then
		acodec="copy"
	elif [ "$1" = "acodec" ]; then
		shift
		acodec="$1"
	######################################################################
	# subtitle processing options
	# https://en.wikibooks.org/wiki/FFMPEG_An_Intermediate_Guide/subtitle_options
	######################################################################
	elif [ "$1" = "scopy" ]; then
		# https://en.wikibooks.org/wiki/FFMPEG_An_Intermediate_Guide/subtitle_options
		scopy="true"
	elif [ "$1" = "scodec" ]; then
		shift
		scodec="$1"
		scopy="true"
	######################################################################
	# file handling options
	######################################################################
	elif [ "$1" = "of" ]; then
		shift
		dest_file="$1"
		oecho "custom destination file: $dest_file\n"
	elif [ "$1" = "od" ]; then
		shift
		output_dir="$1"
	elif [ "$1" = "queue" ]; then
		oogie_queue="true"
	elif [ "$1" = "rm" ]; then
		remove_source="true"
	######################################################################
	# processing options
	######################################################################
	elif [ "$1" = "nometa" ]; then
		arg_desc="don't copy over metadata"
		ffmpeg_args -map_metadata -1
	elif [ "$1" = "th" ]; then
		shift
		arg_desc="setting max computation threads"
		ffmpeg_args -threads $1
	elif [ "$1" = "loglevel" ]; then
		shift
		ffmpeg_loglevel="$1"
	else
		src_file="$1"
	fi
	shift
done

if [ "$deintdetect" ]; then
	ffmpeg_args -filter:v idet
	ffmpeg_args -frames:v 500
	ffmpeg_args -an
	ffmpeg_args -f rawvideo
	ffmpeg_args -y /dev/null
	echo
	echo "you're looking for higher numbers under BFF or TFF instead of progressive"
	echo
	nice -n $ffmpeg_nice ffmpeg \
		-i "$src_file" \
		$ffmpeg_args \
		2>&1 \
		| egrep "^\[Parsed"
	echo
	exit
fi
		
if [ ! "$container_format" ]; then
	echo No container
	egrep '^#[HZ]' $0 | cut -d'#' -f3-
	exit 255
fi

##############################################################################
# container management
##############################################################################

if [ "$container_format" = "flac" ]; then
	arg_desc="best flac compression"
	ffmpeg_args -compression_level 12
	arg_desc="set audio codec to flac"
	ffmpeg_args -codec:a flac
	unset audio_bitrate
elif [ "$container_format" = "alac" ]; then
	# alac files live in m4a, not .alac... for whatever reason
	container_format="m4a"
	arg_desc="alac encoding"
	ffmpeg_args -acodec alac
	unset audio_bitrate
	ffmpeg_args -vn
elif [[ "$container_format" =~ mkv|mp4 ]] && [ "$h264_preset" ]; then
		arg_desc="preset for balance of file size vs speed of encoding"
		ffmpeg_args -preset $h264_preset
fi

##############################################################################
# video mangling options
##############################################################################
if [ "$output_type" = "video" ]; then
	arg_desc="use only the first video track"
	ffmpeg_args -map 0:v:0?
	if [ "$vcopy" ]; then
		unset video_bitrate
		unset crf
		arg_desc="copy, don't re-encode, video"
		ffmpeg_args -codec:v copy
	fi

	if [ "$crf" ]; then
		if [ "$vcodec" = "x265" ]; then
			x265_params "crf=$crf"
		else
			arg_desc="constant rate factor @ $1 (https://trac.ffmpeg.org/wiki/Encode/H.264)"
			ffmpeg_args -crf $crf
		fi
	fi

	if [ "$video_bitrate" ]; then
		arg_desc="encode video @ ${video_bitrate}b/s"
		ffmpeg_args -b:v $video_bitrate
	fi
fi

# replace original file's extension with the new one, if the filename hasn't
# already been specified
if [ "$output_dir" ]; then
	output_dir="$output_dir/"
fi

dest_file="${dest_file:-${output_dir}${src_file%.*}${dest_file_extra}.$container_format}"

#if [ "$output_dir" ]; then
#	mkdir -p "$output_dir"
#	dest_file="$output_dir/${dest_file##*/}"
#fi

arg_desc="how far to look into file before encoding"
ffmpeg_pre_args -analyzeduration 2147483647 -probesize 2147483647

if [ "$deinterlace_video" ]; then
	arg_desc="apply yadif deinterlace, auto-detect interlaced frames"
	video_filter "yadif=0:-1:1"
fi

if [ "$crop_video" ]; then
	arg_desc="cropping video to $crop_video"
	video_filter "crop=$crop_video"
fi

if [ "$scale_video" ]; then
	arg_desc="resizing to $scale_video horizontal lines"
	video_filter "scale=-1:$scale_video,pad=ceil(iw/2)*2:ceil(ih/2)*2"
fi

if [ "$cropdetect" ]; then
	arg_desc="analyze $crop_frame_count frames"
	ffmpeg_args -vframes $crop_frame_count
	arg_desc="disable audio"
	ffmpeg_args -an
	#arg_desc="look at only the first video stream"
	#ffmpeg_args -map 0:1:v?
	arg_desc="set output format to null"
	ffmpeg_args -f null
	arg_desc="check only the first video"
	ffmpeg_args -map 0:v:0?
	dest_file="-"
	arg_desc="detect where we should crop"
	video_filter cropdetect=24:16:5
fi

if [ "$video_filter" ]; then
	arg_desc="apply video filters"
	ffmpeg_args "-vf $video_filter"
fi

if [ "$x265_params" ]; then
	arg_desc="apply x265 parameters"
	ffmpeg_args -x265-params "$x265_params"
fi

if [ "$autocrop" ]; then
	crop_video="$(nice -n $ffmpeg_nice ffmpeg $ffmpeg_pre_args -ss 600 -i "$src_file" -f null -map 0:v:0? -an -vframes 900 $ffmpeg_args - 2>&1 | egrep -o "crop=.*" | sort | uniq -c | sort -nb | tail -1)"
fi

if [ "$cropdetect" ]; then
	echo
	oecho "analyzing $crop_frame_count frames (top 5 listed)\n\n"
	{
		ffmpeg_nice=9
		echo "frames cropping" >&2
		echo "------ -------------------" >&2
		for crop_seek_time in 600 900 1200 ; do
			nice -n $ffmpeg_nice ffmpeg \
				-ss $crop_seek_time \
				$ffmpeg_pre_args \
				-i "$src_file" \
				$ffmpeg_args \
				-
		done 2>&1 | egrep -o "crop=.*" | cut -d'=' -f2 | sort | uniq -c | sort -nb | tail -5
	} | column -t
	oecho
	exit
fi

arg_desc="set verbosity for ffmpeg"
ffmpeg_args -loglevel $ffmpeg_loglevel
arg_desc="show progress line"
ffmpeg_args -stats
arg_desc="copy all audio tracks"
ffmpeg_args -map 0:a?

##############################################################################
# audio processing
##############################################################################
if [ "$acodec" = "copy" ]; then
	arg_desc="copy, don't re-encode, audio"
	ffmpeg_args -codec:a copy
	unset audio_bitrate
elif [ "$acodec" = "flac" ]; then
	arg_desc="encode audio as FLAC"
	ffmpeg_args -codec:a flac
	unset audio_bitrate
fi

if [ "$scodec" = "ass" ]; then
	arg_desc="use libass subtitles"
	ffmpeg_args -codec:s ass
fi

if [ "$audio_bitrate" ]; then
	arg_desc="encode audio with $audio_bitrate bitrate"
	ffmpeg_args -b:a $audio_bitrate
fi

if [ "$audio_channels" ]; then
	arg_desc="encode with $audio_channels audio channels"
	ffmpeg_args -ac $audio_channels
fi

if [ "$scopy" ]; then
	arg_desc="copy all subtitle streams"
	ffmpeg_args -map 0:s?
	ffmpeg_args -codec:s copy
fi

if [ "$oogie_queue" ]; then
	if [ ! -d "$oogie_queue_dir" ]; then
		mkdir -pv "$oogie_queue_dir" || exit 1
	fi
# i need to re-do this in a major way.  probably set functions to do the
# work earlier in the script & pull them in with a 'declare -f', this way
# 2 pass can work
	cat << OOGIE_SCRIPT > $oogie_script
#!/bin/bash

dest_file="$dest_file"
src_file="$src_file"
oogie_script="$oogie_script"
force_overwrite="$force_overwrite"

if [ ! -f "\$src_file" ]; then
	echo "\$src_file does not exist"
	rm -v "$oogie_script"
	exit
fi

if [ ! -f "\$dest_file" -a ! "\$force_overwrite" ]; then
	set -x
	nice -n $ffmpeg_nice ffmpeg \
		$ffmpeg_pre_args \
		-i "\$src_file" \
		$ffmpeg_args \
		"\$dest_file"
	ffmpeg_return="\$?"
	set +x

	if [ "\$ffmpeg_return" = "0" ]; then
		if [ "$remove_source" ]; then
			rm -fv "\$src_file"
		fi
		rm "\$oogie_script"
	fi
else
	echo "already exists: \$dest_file"
	echo
	exit 1
fi

exit \$ffmpeg_return
OOGIE_SCRIPT

	chmod +x "$oogie_script"
	exit
fi
echo

if [ ! -f "$dest_file" -a "$two_pass" ]; then
	#ffmpeg_pre_args -ss 5:00
	#ffmpeg_args -t 1:00
	# https://irishjesus.wordpress.com/2010/10/17/blu-ray-movie-authoring-in-linux/
	two_pass_logfile="$dest_file.log"
	set-x
		#-vpre slowfirstpass \
	nice -n $ffmpeg_nice ffmpeg \
		$ffmpeg_pre_args \
		-i "$src_file" \
		$ffmpeg_args \
		-f rawvideo \
		-an \
		-pass 1 \
		-passlogfile "$two_pass_logfile" \
		-y /dev/null &&
		#-vpre hq \
	nice -n $ffmpeg_nice ffmpeg \
		$ffmpeg_pre_args \
		-i "$src_file" \
		$ffmpeg_args \
		-pass 2 \
		-passlogfile "$two_pass_logfile" \
		"$dest_file" &&
	rm "$two_pass_logfile"
elif [ ! -f "$dest_file" -o "$force_overwrite" ]; then
	set-x
	nice -n $ffmpeg_nice ffmpeg \
		-y \
		$ffmpeg_pre_args \
		-i "$src_file" \
		$ffmpeg_args \
		"$dest_file"
	ffmpeg_return="$?"
	set +x
	if [ "$remove_source" -a "$ffmpeg_return" = "0" ]; then
		rm -fv "$src_file"
	fi
	exit $ffmpeg_return
else
	echo "already exists: $dest_file"
	echo
	exit 1
fi


exit $ffmpeg_return
