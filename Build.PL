use lib 'lib';
use AudioFile::Info::Build;

my $module = 'AudioFile::Info::Ogg::Vorbis::Header';

my $b = AudioFile::Info::Build->new(module_name => $module,
                                    license => 'perl',
                                    requires => {
                                                 perl            => '5.6.0',
                                                 AudioFile::Info => 0,
                                                 Ogg::Vorbis::Header => 0,
                                                },
                                    build_requires => {
                                                 Module::Build   => 0
                                                },
                                    create_makefile_pl => 'passthrough',
                                    dynamic_config => 1,
                                   );

$b->notes(package => $module);

$b->create_build_script;
