#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <sauce/sauce.h>

using namespace std;

namespace sauce {

  struct IChasis {};
  struct CoupChasis: public IChasis {};
  struct TruckChasis: public IChasis {};

  struct IEngine {};
  struct HybridEngine: public IEngine {};
  struct DieselEngine: public IEngine {};

  struct IVehicle {
    virtual IChasis & getChasis() = 0;
    virtual IEngine & getEngine() = 0;
  };

  struct Herbie: public IVehicle {
    IChasis & chasis;
    IEngine & engine;

    Herbie(IChasis & chasis, IEngine & engine):
      chasis(chasis),
      engine(engine) {}
  };

  struct CementMixer: public IVehicle {
    IChasis * chasis;
    IEngine * engine;

    void setChasis(IChasis & chasis) { this->chasis = &chasis; }
    void setEngine(IEngine & engine) { this->engine = &engine; }
  };

  TEST(SauceTest, should_derp) {
  }

} // namespace sauce
