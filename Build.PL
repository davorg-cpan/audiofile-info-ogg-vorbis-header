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

$b->create_build_script;
$b->notes(package => $module);
$b->notes(config  => {
                      read_mp3 => 1,
                      write_mp3 => 0,
                      read_ogg => 0,
                      write_ogg => 0,
                      pure_perl => 0
                     });
