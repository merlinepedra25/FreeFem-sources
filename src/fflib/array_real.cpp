#include "array_tlp.hpp"
#include "array_init.hpp"

/*
void initArrayOperators()
{
     ArrayOperator<double>();
     ArrayOperator<Complex>();
     ArrayOperator<long>();

}
void  initArrayDCL()
{
    ArrayDCL<double>();
    ArrayDCL<Complex>();
    ArrayDCL<long>();
}
*/

void initArrayDCLdouble()
{
//     ArrayOperator<long>();
     ArrayDCL<double>();
}
void initArrayOperatordouble()
{
     ArrayOperator<double>();
    ArrayOperatorF<double,double>();
//     ArrayDCL<long>();
}
