# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tmail}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mikel Lindsaar", "Minero Aoki", "Jayson Vaughn", "Bjorn Blomqvist"]
  s.date = %q{2009-09-15}
  s.description = %q{= TMail  http://tmail.rubyforge.org/  Mikel Lindsaar   maintainer Trans            assitant developer Minero Aoki      original developer    == NOTE:  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ! THIS IS A FORK OF TMAIL HACKED TOGETHER TO WORK WITH RUBY 1.9.1 ! ! USE AT YOUR OWN DISCRETION                                      ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   == DESCRIPTION:   TMail is a mail handling library for Ruby.  It abstracts a mail message into a usable object allowing you to read, set, add and delete headers and the mail body.  TMail is used by the Ruby on Rails web framework as the Email abstraction layer for their ActionMailer module.  It is also used by the Nitro framework and many other applications on and off the web.  The goal of the TMail handling library is to be able to parse and handle raw Email sources and produce RFC compliant Emails as a result.  If you find something that TMail does that violates an RFC, we want to know and we'll get it fixed fast.  == DOCUMENTATION:  The place you will want to look first is the TMail::Mail class.  This has the vast majority of methods you will be using to talk to your TMail object.  == FEATURES/PROBLEMS:  TMail is fairly RFC compliant on the handling of emails.  There are also some problems in the header handling, but for 99.9% of email, you will be fine.  Usually, the problems revolve around parsing incomming emails and making sense of them.  I really welcome any examples of Emails that "didn't work" with TMail so I can use them as test cases.  == SYNOPSIS:  TMail is very easy to use.  You simply require the library and then pass a raw email text message into the TMail::Mail.parse method.  This returns a TMail::Mail object which you can now query and run methods against to modify, inspect or add to the Email.  You can find almost all of the methods that you will use to talk to and update a TMail instance in the TMail::Mail class.  I am constantly updating this code, with comments, added a fair bit and have a lot more to go!.  === Short Version:  irb(main):001:0> require 'tmail' irb(main):002:0> raw_email = File.open("my_raw_email", 'r') { |f| @mail = f.read } irb(main):003:0> email = TMail::Mail.parse(raw_email) irb(main):004:0> puts email['to'] mikel@example.com => nil irb(main):005:0> email['to'] = 'mikel@somewhere.else.com' => "mikel@somewhere.else.com" irb(main):006:0> puts email['to'] mikel@somewhere.else.com => nil  === Longer Version:  Assuming you have a single raw email in the variable my_message, you can do the following:  require 'tmail' email = TMail::Mail.parse(my_message)  This will give you a TMail::Mail class containing your parsed message.  There are other methods of opening emails through Ports.  You can view this email by a simple puts:  puts email  Return-Path: <mikel@nowhere.com> Date: Sun, 21 Oct 2007 19:38:13 +1000 From: Mikel Lindsaar <mikel@nowhere.com> To: mikel@somewhere.com Message-Id: <009601c813c6$19df3510$0437d30a@mikel091a> Subject: Testing Email  Hello Mikel  Easy right?  === Adding a header to the EMail:  Say now that you have opened your message, you want to put in a Reply-To field.  You do this like so:  email['reply-to'] = "My Email Address <my_address@anotherplace.com>"  Is it really there?  Well, find out with a puts:  puts email  Return-Path: <mikel@nowhere.com> Date: Sun, 21 Oct 2007 19:38:13 +1000 From: Mikel Lindsaar <mikel@nowhere.com> Reply-To: My Email Address <my_address@anotherplace.com> To: mikel@somewhere.com Message-Id: <009601c813c6$19df3510$0437d30a@mikel091a> Subject: Testing Email  Hello Mikel  Yup looks good.  === Inspecting a header:  You can then inspect your added header by doing:  email['reply-to'] # => #<TMail::AddressHeader "My Email Address <my_address@anotherplace.com>">  If you just want to the actual value, not the AddressHeader object, pass to_s to this.  email['reply-to'].to_s # => "My Email Address <my_address@anotherplace.com>"  === Deleting a header:  One way of deleting a header from an Email is just assigning it nil like so:  email['reply-to'] = nil # => nil  If you now puts the email again, it will not be included:  puts email  Return-Path: <mikel@nowhere.com> Date: Sun, 21 Oct 2007 19:38:13 +1000 From: Mikel Lindsaar <mikel@nowhere.com> To: mikel@somewhere.com Message-Id: <009601c813c6$19df3510$0437d30a@mikel091a> Subject: Testing Email  Hello Mikel  === Writing out an Email:  You can just call to_s on any email to have it serialized out as a single string with the right number of line breaks and encodings.  == CONTRIBUTING:  You can visit the {Contributing to TMail}[link:http://tmail.rubyforge.org/contributing/] to find out how to contribute to TMail, developers are welcome and wanted!  == REQUIREMENTS:  * C compiler if you want the Ruby extension for Scanner * Ruby 1.8 or later  == INSTALLATION:  * sudo gem install tmail  Or manually,  * sudo script/setup  == LICENSE:  (The MIT License)  Copyright (c) 2007 FIX  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.}
  s.email = %q{darwin.git@marianna.se}
  s.extensions = ["ext/tmailscanner/tmail/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "CHANGES",
     "NOTES",
     "README.rdoc",
     "VERSION",
     "ext/Makefile",
     "ext/tmailscanner/tmail/MANIFEST",
     "ext/tmailscanner/tmail/depend",
     "ext/tmailscanner/tmail/extconf.rb",
     "ext/tmailscanner/tmail/gem_make.out",
     "ext/tmailscanner/tmail/tmailscanner.c",
     "lib/tmail.rb",
     "lib/tmail/address.rb",
     "lib/tmail/attachments.rb",
     "lib/tmail/base64.rb",
     "lib/tmail/compat.rb",
     "lib/tmail/config.rb",
     "lib/tmail/core_extensions.rb",
     "lib/tmail/encode.rb",
     "lib/tmail/header.rb",
     "lib/tmail/index.rb",
     "lib/tmail/interface.rb",
     "lib/tmail/loader.rb",
     "lib/tmail/mail.rb",
     "lib/tmail/mailbox.rb",
     "lib/tmail/main.rb",
     "lib/tmail/mbox.rb",
     "lib/tmail/net.rb",
     "lib/tmail/obsolete.rb",
     "lib/tmail/parser.rb",
     "lib/tmail/port.rb",
     "lib/tmail/quoting.rb",
     "lib/tmail/require_arch.rb",
     "lib/tmail/scanner.rb",
     "lib/tmail/scanner_r.rb",
     "lib/tmail/stringio.rb",
     "lib/tmail/utils.rb",
     "lib/tmail/version.rb",
     "test/extctrl.rb",
     "test/fixtures/mailbox",
     "test/fixtures/mailbox_without_any_from_or_sender",
     "test/fixtures/mailbox_without_from",
     "test/fixtures/mailbox_without_return_path",
     "test/fixtures/raw_attack_email_with_zero_length_whitespace",
     "test/fixtures/raw_base64_decoded_string",
     "test/fixtures/raw_base64_email",
     "test/fixtures/raw_base64_encoded_string",
     "test/fixtures/raw_email",
     "test/fixtures/raw_email10",
     "test/fixtures/raw_email11",
     "test/fixtures/raw_email12",
     "test/fixtures/raw_email13",
     "test/fixtures/raw_email2",
     "test/fixtures/raw_email3",
     "test/fixtures/raw_email4",
     "test/fixtures/raw_email5",
     "test/fixtures/raw_email6",
     "test/fixtures/raw_email7",
     "test/fixtures/raw_email8",
     "test/fixtures/raw_email9",
     "test/fixtures/raw_email_multiple_from",
     "test/fixtures/raw_email_quoted_with_0d0a",
     "test/fixtures/raw_email_reply",
     "test/fixtures/raw_email_simple",
     "test/fixtures/raw_email_with_bad_date",
     "test/fixtures/raw_email_with_illegal_boundary",
     "test/fixtures/raw_email_with_mimepart_without_content_type",
     "test/fixtures/raw_email_with_multipart_mixed_quoted_boundary",
     "test/fixtures/raw_email_with_nested_attachment",
     "test/fixtures/raw_email_with_partially_quoted_subject",
     "test/fixtures/raw_email_with_quoted_illegal_boundary",
     "test/kcode.rb",
     "test/temp_test_one.rb",
     "test/test_address.rb",
     "test/test_attachments.rb",
     "test/test_base64.rb",
     "test/test_encode.rb",
     "test/test_header.rb",
     "test/test_helper.rb",
     "test/test_mail.rb",
     "test/test_mbox.rb",
     "test/test_port.rb",
     "test/test_quote.rb",
     "test/test_scanner.rb",
     "test/test_utils.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bjornblomqvist/tmail}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A fork of tmail for ruby 1.9}
  s.test_files = [
    "test/extctrl.rb",
     "test/kcode.rb",
     "test/temp_test_one.rb",
     "test/test_address.rb",
     "test/test_attachments.rb",
     "test/test_base64.rb",
     "test/test_encode.rb",
     "test/test_header.rb",
     "test/test_helper.rb",
     "test/test_mail.rb",
     "test/test_mbox.rb",
     "test/test_port.rb",
     "test/test_quote.rb",
     "test/test_scanner.rb",
     "test/test_utils.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end