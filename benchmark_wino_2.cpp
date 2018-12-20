#include "miopen_2.hpp"
#include "tensor_2.hpp"
#include "utilsFWD.hpp"
#include "layers_2.hpp"
#include "multi_layers.hpp"
#include <cstdlib>
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

 int N,C,K,H,W,R,P,i;
std::map<std::string, ConvLayerDesc> get_layers(){
    std::map<std::string, ConvLayerDesc> m;
    // batch_size, w, h, channels_in, channels_out, kernel_size, padding, stride
    m.emplace("W1", ConvLayerDesc({N, W, H, C, K, R, P, 1}));
    return m;
}

std::map<std::string, ConvLayerDesc>& layers() {
    static std::map<std::string, ConvLayerDesc> m = get_layers();
    return m;
}

int main(int argc, char *argv[])
{

    //Batch Size (N), Input Maps (C), Output (K), Input Height (H), Input Width (W), Filter (R x S), Padding (P), Times (i)
    N = atoi(argv[3]);
    C = atoi(argv[5]);
    K = atoi(argv[7]);
    H = atoi(argv[9]);
    W = atoi(argv[11]);
    R = atoi(argv[13]);
    P = atoi(argv[15]);
    i = atoi(argv[17]);

	device_init();
    CHECK_MIO(miopenEnableProfiling(mio::handle(), true));
	
    std::string layer_name = "W1";
    if (argc >= 2) {
        layer_name = argv[1];
        if (layers().count(layer_name) == 0) {
            FATAL("Unknown layer name `" << layer_name << "`.");
        }
    }
  
    // create model of single layer
    ConvLayerDesc l = get_layers()[layer_name];
    TensorDesc input_dim(l.batch_size, l.channels_in, l.height, l.width);
    Model m(input_dim);
    m.emplace<ConvLayer>(l.channels_out, l.kernel_size, l.padding, l.stride);
    m.input.uniform(); // randomly initialize input

    BenchmarkLogger::new_session(layer_name);
    BenchmarkLogger::fwd_layer_benchmark(m, i);

    return 0;
}
