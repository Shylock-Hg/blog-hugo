---
title: Use Gtest for testing of c++
date: 2019-03-26 21:50:33
tags: ['c++']
comments: true
---

## Basic Concepts

1. Two level of testing: *TestSuite* and *Test*.
2. Two kinds of assertion: *nonfatal* and *fatal*. The first is `EXPECT_*(expr)`, the second is `ASSERT_*(expr)`.
3. Two kinds of test suite: *nonfixture* and *fixture*. The first defined by `TEST(SuiteName, TestName)`, the second defined by `TEST_F(SuiteName, TestName)`.

## Basic Usage

1. Install by system tools (such as `pacman`) or building from source.
2. Define the testing cases as below:

```c++
#include <gtest/gtest.h>

TEST(SuiteName, Testname) {
    // valid c++ expression/statements

    // nonfatal
    EXPECT_TRUE(1 + 1 == 2);
    EXPECT_FALSE(1 + 1 == 3) << "Oh my god!\n";

    // fatal
    ASSERT_EQ(1, 1);
    ASSERT_NE(2, 3);
}
```

or fixture testing as below:

```c++
#incldue <gtest/gtest>

class TestFixtureSample : ::testing::Test {
protected:
    // Some fields to help testing

    // Will be called before the real testing
    void SetUp() override {
        // do some initializing
    }

    // Will be called after the real testing
    void TearDown() override {
        // do some cleanup
    }
};

// This define class derived from `TestFixtureSample`
TEST_F(TestFixtureSample, TestName) {
    // valid c++ expression/statements

    // nonfatal
    EXPECT_TRUE(1 + 1 == 2);
    EXPECT_FALSE(1 + 1 == 3) << "Oh my god!\n";

    // fatal
    ASSERT_EQ(1, 1);
    ASSERT_NE(2, 3);
}
```

3. Run the *gtest* in main function as below:

```c++
#include <gtest/gtest.h>

int main(int argc, char * argv[]) {
    testing::InitGoogleTest(&argc, argv);
    RUN_ALL_TESTS();
    return 0;
}
```

4. Finally, compile all *unit-test* and *main* sources and link them to executable which run all tests.

## The Basic Mechanism

- The main function call two function. The `void testing::InitGoogleTest(int * argc, char ** argv)` will parse and handle the input arguments. The `inline int RUN_ALL_TESTS()` will call the test cases registered in the static single object.
- When you define tests by `TEST(test_suite_name, test_name)` or `TEST_F(test_suite_name, test_name)`, this macro will generate a class which derived from `testing::Test` contains the test process in specific method `virtual void TestBody()`, and register the *Factory of Test Class*, *SetUp Function*, *TearDown Function* and other information to the static single object.
