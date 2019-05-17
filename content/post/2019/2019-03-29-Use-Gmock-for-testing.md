---
title: Use Gmock for testing
date: 2019-03-29 21:35:40
tags: ['c++']
comments: true
---

## Basic Concepts

The mock object don't implement the real behavior. In Gmock, we can check the method calling by mock object.

## Basic Usage

In many situations, we need a component to provide a set of functions. We can define them into one class and derive multiple children which perform a little differently.

```c++
class Dog {
public:
    virtual Dog();

    virtual void eat(Food f) = 0;
    virtual void bark() = 0;
    virtual void sleep() = 0;
    virtual bool alive() const = 0;
};
```

So we can also derive a *Mock Class* as below:

```c++
#include <gmock/gmock.h>

class MockDog : public Dog {
public:
    virtual MockDog();

    MOCK_METHOD0(eat, void(Food f));
    MOCK_METHOD0(bark, void());
    MOCK_METHOD1(sleep, void());
    MOCK_CONST_METHOD0(alive, bool());
};
```

Then we can use the mock object to check behavior of `Dog` as below:

```c++
#include <gtest/gtest.h>
#include <gmock/gmock.h>

TEST(MockDogTest, TestName) {
    MockDog dog;
    
    // call in total
    EXPECT_CALL(dog, bark()).Times(3);
    EXPECT_CALL(dog, eat("Bone")).Times(1);

    // call in one sequence 
    {
        ::testing::InSequence dummy;
        // all in dummy
        EXPECT_CALL(dog, bark()).Times(3);
        EXPECT_CALL(dog, eat("Bone")).Times(1);
    }

    // call in multiple sequence
    ::testing::InSequence s1, s2;
    // in s1 and s2
    EXPECT_CALL(dog, bark()).Times(3).InSequecne(s1, s2);
    // in s1
    EXPECT_CALL(dog, eat("Bone")).Times(1).InSequence(s1);
    // in s2
    EXPECT_CALL(dog, sleep());

    // check return
    EXPECT_CALL(dog, alive()).WillByDefault(::testing::Return(true));

    // many more feature see https://github.com/google/googletest
    EXPECT_CALL(mock_object, method(matchers))
    .With(multi_argument_matcher)
    .Times(cardinality)
    .InSequence(sequences)
    .After(expectations)
    .WillOnce(action)
    .WillRepeatedly(action)
    .RetiresOnSaturation();
}

int main(int argc, char * argv[]) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
```

There are some differences if with template:

```c++
#include <gtest/gtest.h>
#include <gmock/gmock.h>

template<typename T>
class Dog {
public:
    virtual ~Dog();

    virtual void eat(Food f) = 0;
    virtual void bark() = 0;
    virtual void sleep() = 0;
    virtual bool alive() const = 0;
};

class MockDog : public Dog {
public:
    virtual ~MockDog();

    // with `_T` suffix if with template
    MOCK_METHOD0_T(eat, void(Food f));
    MOCK_METHOD0_T(bark, void());
    MOCK_METHOD1_T(sleep, void());
    MOCK_CONST_METHOD0_T(alive, bool());
};
```

## Basic Mechanism


