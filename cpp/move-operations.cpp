#include <utility>
struct D {
    ~D() = delete;
};

struct C {
    C() = default;            // 无影响
    ~C() = default;           // 抑制 move 生成
};

static_assert(std::is_move_constructible_v<C>, "declare deconstructor to default prevent compiler from creating default move constructor"); 
// C c1;
// C c2 = std::move(c1);  // 不会调用 move，而是调用拷贝构造 （如果拷贝构造也没生成，则报错）
// std::is_move_constructible -  Types without a move constructor, but with a copy constructor that accepts const T& arguments, satisfy std::is_move_constructible.
static_assert(std::is_move_constructible_v<D>, "declare deconstructor to delete prevent compiler from creating default move constructor"); 
static_assert(std::is_move_constructible_v<C> && !std::is_copy_constructible_v<C>, "declare deconstructor to default prevent compiler from creating default move constructor"); 
