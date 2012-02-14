#include <ruby.h>

static VALUE
femme_fatale(int argc, VALUE *argv, VALUE obj)
{
    VALUE msg = Qnil;
    const char *cmsg = NULL;

    (void)obj;

    rb_scan_args(argc, argv, "01", &msg);
    if (RTEST(msg)) {
	cmsg = RSTRING_PTR(msg);
    }
    else {
	cmsg = "femme fatale!";
    }
    rb_fatal(cmsg);
    return 0; /* never reached */
}

void
Init_femme_fatale(void)
{
    rb_define_method(rb_mKernel, "femme_fatale", femme_fatale, -1);
}
