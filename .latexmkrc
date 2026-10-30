# Configuration commune au terminal et à VS Code.
$pdf_mode = 1;
$aux_dir = 'compilation';
$out_dir = '.';
$emulate_aux = 1;
$fls_uses_out_dir = 0;

# SyncTeX est désactivé pour ne produire aucun fichier annexe près des PDF.
$pdflatex = 'pdflatex -synctex=0 -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
@default_files = ('carton_invitation.tex', 'slides_presentation.tex');
