/* -*- c++ -*- */

%feature("autodoc", "1");		// generate python docstrings

%include "exception.i"
%import "gnuradio.i"			// the common stuff

%{
#include "gnuradio_swig_bug_workaround.h"	// mandatory bug fix
#include "gr_rds_diff_decoder.h"
#include "gr_rds_diff_encoder.h"
#include "gr_rds_bpsk_demod.h"
#include "gr_rds_bpsk_mod.h"
#include "gr_rds_data_decoder.h"
#include "gr_rds_data_encoder.h"
#include "gr_rds_freq_divider.h"
#include <stdexcept>
%}

// ----------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC ( gr_rds, diff_decoder);

gr_rds_diff_decoder_sptr gr_rds_make_diff_decoder ();

class gr_rds_diff_decoder : public gr_sync_block
{
private:
	gr_rds_diff_decoder ();
};

// ----------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC ( gr_rds, diff_encoder);

gr_rds_diff_encoder_sptr gr_rds_make_diff_encoder ();

class gr_rds_diff_encoder : public gr_sync_block
{
private:
	gr_rds_diff_encoder ();
};

// -----------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC (gr_rds, bpsk_demod);

gr_rds_bpsk_demod_sptr gr_rds_make_bpsk_demod (double input_sample_rate);

class gr_rds_bpsk_demod: public gr_block
{
private:
	gr_rds_bpsk_demod (double input_sample_rate);
public:
	void reset(void);
};

// -----------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC (gr_rds, bpsk_mod);

gr_rds_bpsk_mod_sptr gr_rds_make_bpsk_mod (double input_sample_rate);

class gr_rds_bpsk_mod: public gr_block
{
private:
	gr_rds_bpsk_mod (double input_sample_rate);
};

//------------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC (gr_rds, data_decoder);

gr_rds_data_decoder_sptr gr_rds_make_data_decoder(gr_msg_queue_sptr msgq);

class gr_rds_data_decoder: public gr_sync_block
{
private:
	gr_rds_data_decoder(gr_msg_queue_sptr msgq);
public:
	void reset(void);
};

//------------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC (gr_rds, data_encoder);

gr_rds_data_encoder_sptr gr_rds_make_data_encoder(const char *xmlfile);

class gr_rds_data_encoder: public gr_sync_block
{
private:
	gr_rds_data_encoder(const char *xmlfile);
};


// ------------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC (gr_rds, freq_divider);

gr_rds_freq_divider_sptr gr_rds_make_freq_divider (unsigned int divider);

class gr_rds_freq_divider: public gr_sync_block
{
private:
	gr_rds_freq_divider (unsigned int divider);
};

