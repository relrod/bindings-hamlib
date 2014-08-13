#include <hamlib/rig.h>

typedef union u
{
  struct n
  {
    float min;
    float max;
    float step;
  } n;

  struct c
  {
    const char *combostr[RIG_COMBO_MAX];
  } c;
} u;

typedef union type
{
  rig_port_t rig;
  ptt_type_t ptt;
  dcd_type_t dcd;
} type;

typedef struct post_write_date
{
  int tv_sec, tv_usec;
} post_write_date;

typedef union parm
{
  struct serial
  {
    int rate;
    int data_bits;
    int stop_bits;
    enum serial_parity_e parity;
    enum serial_handshake_e handshake;
    enum serial_control_state_e rts_state;
    enum serial_control_state_e dtr_state;
  } serial;
  struct parallel
  {
    int pin;
  } parallel;
  struct cm108
  {
    int ptt_bitnum;
  } cm108;
  struct usb
  {
    int vid;
    int pid;
    int conf;
    int iface;
    int alt;
    char *vendor_name;
    char *product;
  } usb;
} parm;

typedef struct table
{
  int raw;
  int val;
} table[MAX_CAL_LENGTH];
